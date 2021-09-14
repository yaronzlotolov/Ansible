C:
MD C:\Disk1-Server

net use "\\<SERVERNAME>\150\Auto\15SP4\Alliance\Disk1" /user:<DOMAIN\USER> <PASSWORD>
xcopy "\\<SERVERNAME>\150\Auto\15SP4\Alliance\Disk1\*.*" "c:\Disk1-Server\" /x /r /y

REG DELETE HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Uninstall\{369C1618-0BB8-4EC4-B9C8-143958054598} /f
REG ADD HKEY_LOCAL_MACHINE\SOFTWARE\Astea\15.0\AsteaAlliance /v Version /t REG_SZ /d 15.0.2.0 /f

"c:\Disk1-Server\Alliance Enterprise 15.4.0.0 Upgrade.exe" /s /f1"C:\Disk1-Server\setup.iss"
