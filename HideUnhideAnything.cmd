@echo off
@echo [+]----- Hide/Unhide Any Folder/File From Graphical User Interface -----[+]
@echo                            @~ By Xenom Code 
@echo.
@echo.
@echo.     
@echo (NOTE): ANY SYNTAX ERROR WILL AUTOMATICLY CLOSE THE PROGRAM, SO PLEASE CHECK YOUR INPUTS BEFORE PRESSING "ENTER" !!
@echo.
@echo.
@echo.     
@echo $--- Available Hard Disk Drive ---$   
@echo.     
wmic logicaldisk get caption,volumename
@echo.     
set /p c="Choose A Hard Disk And Enter Its CAPTION (with the two-points !) > "
%c%
if %ERRORLEVEL% neq 0 exit
cd/
@echo.
@echo.
@echo.     
@echo $--- Actions ---$
@echo.     
@echo 1.Hide Folder/File
@echo 2.Unhide Folder/File
@echo.
set /p a="Choose An Action And Enter Its Number ( 1 or 2 ) > "
if %a% == 1 goto Hide
if %a% == 2 goto Unhide
if not %a% == 1 exit
if not %a% == 2 exit
:Hide
@echo.
@echo.
@echo.     
@echo ~~~ Hide Folder/File ~~~
@echo.     
set /p p="Enter PathName > "
cd/
attrib +s +h "%p%"
exit
:Unhide
@echo.
@echo.
@echo.     
@echo ~~~ Unhide Folder/File ~~~
@echo.     
set /p pa="Enter PathName > "
cd/
attrib -s -h "%pa%"
exit