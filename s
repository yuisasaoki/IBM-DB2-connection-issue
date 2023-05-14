library(RODBC)

dsn_driver <- "IBM DB2 ODBC Driver"
dsn_database <- "bludb"
dsn_hostname <- "8e359033-a1c9-4643-82ef-8ac06f5107eb.bs2io90l08kqb1od8lcg.databases.appdomain.cloud"
dsn_port <- "30120"
dsn_protocol <- "TCPIP"
dsn_uid <- "wmp19122"
dsn_pwd <- "OApgzXpPmFrw68kU"
dsn_security <- "ssl"

conn_path <- paste("DRIVER=",dsn_driver,
                  ";DATABASE=",dsn_database,
                  ";HOSTNAME=",dsn_hostname,
                  ";PORT=",dsn_port,
                  ";PROTOCOL=",dsn_protocol,
                  ";UID=",dsn_uid,
                  ";PWD=",dsn_pwd,
                  ";SECURITY=",dsn_security,        
                    sep="")

conn <- odbcDriverConnect(conn_path,believeNRows=FALSE)
