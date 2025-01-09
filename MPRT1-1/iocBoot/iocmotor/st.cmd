#!../../bin/linux-x86_64/motor

#- You may have to change motor to something else
#- everywhere it appears in this file

< envPaths

cd "${TOP}"

## Register all support components
dbLoadDatabase "dbd/motor.dbd"
motor_registerRecordDeviceDriver pdbbase

##Motor 
drvAsynIPPortConfigure("motor1", "192.168.1.1:502", 0, 0, 1)
modbusInterposeConfig("motor1", 0, 5000, 0)

drvAsynIPPortConfigure("motor2", "192.168.1.2:502", 0, 0, 1)
modbusInterposeConfig("motor2", 0, 5000, 0)

# read signal
drvModbusAsynConfigure("MPRT_LNG_RTIMEOUT","motor1",0,3,282,1,0,100,"Driver")
drvModbusAsynConfigure("MPRT_LNG_RREMOTE","motor1",0,3,284,1,0,100,"Driver")
drvModbusAsynConfigure("MPRT_LNG_RNUM","motor1",0,3,285,1,0,100,"Driver")
drvModbusAsynConfigure("MPRT_LNG_RFIXIO","motor1",0,3,286,1,0,100,"Driver")
drvModbusAsynConfigure("MPRT_LNG_ALARM","motor1",0,3,287,1,0,100,"Driver")
drvModbusAsynConfigure("MPRT_LNG_RLPOSITION","motor1",0,3,288,1,0,100,"Driver")
drvModbusAsynConfigure("MPRT_LNG_RUPOSITION","motor1",0,3,289,1,0,100,"Driver")
drvModbusAsynConfigure("MPRT_LNG_RLSPEED","motor1",0,3,290,1,0,100,"Driver")
drvModbusAsynConfigure("MPRT_LNG_RUSPEED","motor1",0,3,291,1,0,100,"Driver")
drvModbusAsynConfigure("MPRT_LNG_RLCMDP","motor1",0,3,292,1,0,100,"Driver")
drvModbusAsynConfigure("MPRT_LNG_RUCMDP","motor1",0,3,293,1,0,100,"Driver")
drvModbusAsynConfigure("MPRT_LNG_RTORQUE","motor1",0,3,294,1,0,100,"Driver")
drvModbusAsynConfigure("MPRT_LNG_CSTCURRENT","motor1",0,3,295,1,0,100,"Driver")
drvModbusAsynConfigure("MPRT_LNG_LINFO","motor1",0,3,296,1,0,100,"Driver")
drvModbusAsynConfigure("MPRT_LNG_UINFO","motor1",0,3,297,1,0,100,"Driver")
drvModbusAsynConfigure("MPRT_LNG_RRESERVE","motor1",0,3,298,1,0,100,"Driver")
drvModbusAsynConfigure("MPRT_LNG_RPARMID","motor1",0,3,299,1,0,100,"Driver")
drvModbusAsynConfigure("MPRT_LNG_RWSTATUS","motor1",0,3,300,1,0,100,"Driver")
drvModbusAsynConfigure("MPRT_LNG_WPARMID","motor1",0,3,301,1,0,100,"Driver")
drvModbusAsynConfigure("MPRT_LNG_RLDATA","motor1",0,3,302,1,0,100,"Driver")
drvModbusAsynConfigure("MPRT_LNG_RUDATA","motor1",0,3,303,1,0,100,"Driver")

drvModbusAsynConfigure("MPRT_ROT_RTIMEOUT","motor2",0,3,282,1,0,100,"Driver")
drvModbusAsynConfigure("MPRT_ROT_RREMOTE","motor2",0,3,284,1,0,100,"Driver")
drvModbusAsynConfigure("MPRT_ROT_RNUM","motor2",0,3,285,1,0,100,"Driver")
drvModbusAsynConfigure("MPRT_ROT_RFIXIO","motor2",0,3,286,1,0,100,"Driver")
drvModbusAsynConfigure("MPRT_ROT_ALARM","motor2",0,3,287,1,0,100,"Driver")
drvModbusAsynConfigure("MPRT_ROT_RLPOSITION","motor2",0,3,288,1,0,100,"Driver")
drvModbusAsynConfigure("MPRT_ROT_RUPOSITION","motor2",0,3,289,1,0,100,"Driver")
drvModbusAsynConfigure("MPRT_ROT_RLSPEED","motor2",0,3,290,1,0,100,"Driver")
drvModbusAsynConfigure("MPRT_ROT_RUSPEED","motor2",0,3,291,1,0,100,"Driver")
drvModbusAsynConfigure("MPRT_ROT_RLCMDP","motor2",0,3,292,1,0,100,"Driver")
drvModbusAsynConfigure("MPRT_ROT_RUCMDP","motor2",0,3,293,1,0,100,"Driver")
drvModbusAsynConfigure("MPRT_ROT_RTORQUE","motor2",0,3,294,1,0,100,"Driver")
drvModbusAsynConfigure("MPRT_ROT_CSTCURRENT","motor2",0,3,295,1,0,100,"Driver")
drvModbusAsynConfigure("MPRT_ROT_LINFO","motor2",0,3,296,1,0,100,"Driver")
drvModbusAsynConfigure("MPRT_ROT_UINFO","motor2",0,3,297,1,0,100,"Driver")
drvModbusAsynConfigure("MPRT_ROT_RRESERVE","motor2",0,3,298,1,0,100,"Driver")
drvModbusAsynConfigure("MPRT_ROT_RPARMID","motor2",0,3,299,1,0,100,"Driver")
drvModbusAsynConfigure("MPRT_ROT_RWSTATUS","motor2",0,3,300,1,0,100,"Driver")
drvModbusAsynConfigure("MPRT_ROT_WPARMID","motor2",0,3,301,1,0,100,"Driver")
drvModbusAsynConfigure("MPRT_ROT_RLDATA","motor2",0,3,302,1,0,100,"Driver")
drvModbusAsynConfigure("MPRT_ROT_RUDATA","motor2",0,3,303,1,0,100,"Driver")

#drvModbusAsynConfigure("MB_STATE_READ","motor",0,3,5480,1,0,100,"Driver")
# write signal
drvModbusAsynConfigure("MPRT_LNG_WTIMEOUT","motor1",0,16,258,1,0,100,"Driver")
drvModbusAsynConfigure("MPRT_LNG_WREMOTE","motor1",0,16,260,1,0,100,"Driver")
drvModbusAsynConfigure("MPRT_LNG_WNUM","motor1",0,16,261,1,0,100,"Driver")
drvModbusAsynConfigure("MPRT_LNG_WFIXIO","motor1",0,16,262,1,0,100,"Driver")
drvModbusAsynConfigure("MPRT_LNG_WMODE","motor1",0,16,263,1,0,100,"Driver")
drvModbusAsynConfigure("MPRT_LNG_WLPOSITION","motor1",0,16,264,1,0,100,"Driver")
drvModbusAsynConfigure("MPRT_LNG_WUPOSITION","motor1",0,16,265,1,0,100,"Driver")
drvModbusAsynConfigure("MPRT_LNG_WLSPEED","motor1",0,16,266,1,0,100,"Driver")
drvModbusAsynConfigure("MPRT_LNG_WUSPEED","motor1",0,16,267,1,0,100,"Driver")
drvModbusAsynConfigure("MPRT_LNG_WLRATE","motor1",0,16,268,1,0,100,"Driver")
drvModbusAsynConfigure("MPRT_LNG_WURATE","motor1",0,16,269,1,0,100,"Driver")
drvModbusAsynConfigure("MPRT_LNG_WLSRATE","motor1",0,16,270,1,0,100,"Driver")
drvModbusAsynConfigure("MPRT_LNG_WUSRATE","motor1",0,16,271,1,0,100,"Driver")
drvModbusAsynConfigure("MPRT_LNG_WCURRENT","motor1",0,16,272,1,0,100,"Driver")
drvModbusAsynConfigure("MPRT_LNG_WFDESTINATION","motor1",0,16,273,1,0,100,"Driver")
drvModbusAsynConfigure("MPRT_LNG_WRESERVE","motor1",0,16,274,1,0,100,"Driver")
drvModbusAsynConfigure("MPRT_LNG_WRPARMID","motor1",0,16,275,1,0,100,"Driver")
drvModbusAsynConfigure("MPRT_LNG_WREQUEST","motor1",0,16,276,1,0,100,"Driver")
drvModbusAsynConfigure("MPRT_LNG_WWPARMID","motor1",0,16,277,1,0,100,"Driver")
drvModbusAsynConfigure("MPRT_LNG_WLDATA","motor1",0,16,278,1,0,100,"Driver")
drvModbusAsynConfigure("MPRT_LNG_WUDATA","motor1",0,16,279,1,0,100,"Driver")

drvModbusAsynConfigure("MPRT_ROT_WTIMEOUT","motor2",0,16,258,1,0,100,"Driver")
drvModbusAsynConfigure("MPRT_ROT_WREMOTE","motor2",0,16,260,1,0,100,"Driver")
drvModbusAsynConfigure("MPRT_ROT_WNUM","motor2",0,16,261,1,0,100,"Driver")
drvModbusAsynConfigure("MPRT_ROT_WFIXIO","motor2",0,16,262,1,0,100,"Driver")
drvModbusAsynConfigure("MPRT_ROT_WMODE","motor2",0,16,263,1,0,100,"Driver")
drvModbusAsynConfigure("MPRT_ROT_WLPOSITION","motor2",0,16,264,1,0,100,"Driver")
drvModbusAsynConfigure("MPRT_ROT_WUPOSITION","motor2",0,16,265,1,0,100,"Driver")
drvModbusAsynConfigure("MPRT_ROT_WLSPEED","motor2",0,16,266,1,0,100,"Driver")
drvModbusAsynConfigure("MPRT_ROT_WUSPEED","motor2",0,16,267,1,0,100,"Driver")
drvModbusAsynConfigure("MPRT_ROT_WLRATE","motor2",0,16,268,1,0,100,"Driver")
drvModbusAsynConfigure("MPRT_ROT_WURATE","motor2",0,16,269,1,0,100,"Driver")
drvModbusAsynConfigure("MPRT_ROT_WLSRATE","motor2",0,16,270,1,0,100,"Driver")
drvModbusAsynConfigure("MPRT_ROT_WUSRATE","motor2",0,16,271,1,0,100,"Driver")
drvModbusAsynConfigure("MPRT_ROT_WCURRENT","motor2",0,16,272,1,0,100,"Driver")
drvModbusAsynConfigure("MPRT_ROT_WFDESTINATION","motor2",0,16,273,1,0,100,"Driver")
drvModbusAsynConfigure("MPRT_ROT_WRESERVE","motor2",0,16,274,1,0,100,"Driver")
drvModbusAsynConfigure("MPRT_ROT_WRPARMID","motor2",0,16,275,1,0,100,"Driver")
drvModbusAsynConfigure("MPRT_ROT_WREQUEST","motor2",0,16,276,1,0,100,"Driver")
drvModbusAsynConfigure("MPRT_ROT_WWPARMID","motor2",0,16,277,1,0,100,"Driver")
drvModbusAsynConfigure("MPRT_ROT_WLDATA","motor2",0,16,278,1,0,100,"Driver")
drvModbusAsynConfigure("MPRT_ROT_WUDATA","motor2",0,16,279,1,0,100,"Driver")

## Load record instances
dbLoadTemplate("$(TOP)/iocBoot/$(IOC)/motor.substitutions")
dbLoadRecords ("db/motor.db")

# Save file associated with the request file 'autosave.req'
set_savefile_path("$(TOP)/iocBoot/$(IOC)/as")
set_requestfile_path("$(TOP)/iocBoot/$(IOC)/as")
set_pass1_restoreFile("autosave.sav")

#- Run this to trace the stages of iocInit
#-traceIocInit

cd "${TOP}/iocBoot/${IOC}"
iocInit

## Start any sequence programs
# "user=radexel"
create_monitor_set("autosave.req","10")
