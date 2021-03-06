import ballerina/sql;
import ballerina/io;
import ballerina/java.jdbc;

function createTableExactNumeric(jdbc:Client jdbcClient) returns sql:Error? {
    sql:ExecutionResult result = check jdbcClient->execute("CREATE TABLE ExactNumeric(" + "BigInt_col  bigint, " + 
    "Numeric_col  numeric(10,5), " + "Bit_col  bit, " +  "SmallInt_col smallint, "+ "Decimal_col decimal(5,2)," + 
    "SmallMoney_col smallmoney," + "Int_col inT," + "TinyInt_col tinyint," + "Money_col money," + ")");
    io:println("Create table executed. ", result);
}

function createTableApproximateNumeric(jdbc:Client jdbcClient) returns sql:Error? {
    sql:ExecutionResult result = check jdbcClient->execute("CREATE TABLE ApproximateNumeric(" + "Float_col float, " + 
    "Real_col real, " + ")");
}

function createTableDateandTime(jdbc:Client jdbcClient) returns sql:Error? {
    sql:ExecutionResult result = check jdbcClient->execute("CREATE TABLE DateandTime(" + "Date_col  date, " + 
    "DateTimeOffset_col  datetimeoffset, " + "DateTime2_col datetime2, " + "SmallDateTime_col smalldatetime," + 
    "DateTime_col datetime," + "Time_col time," + ")");
}

function createTableString(jdbc:Client jdbcClient) returns sql:Error? {
    sql:ExecutionResult result = check jdbcClient->execute("CREATE TABLE CharacterString(" + "Char_col char(255) , " + 
    "Varchar_col  varchar(255), " + "Text_col text," + ")");
}

function createTableUnicodeString(jdbc:Client jdbcClient) returns sql:Error? {
    sql:ExecutionResult result = check jdbcClient->execute("CREATE TABLE UnicodeString(" + "nChar_col nchar(255) , " + 
    "nVarchar_col  nvarchar(255), " + "nText_col ntext," + ")");
}

function createTableBinaryString(jdbc:Client jdbcClient) returns sql:Error? {
    sql:ExecutionResult result = check jdbcClient->execute("CREATE TABLE BinaryString(" + "Binary_col binary(255), " + 
    "VarBinary_col  varbinary(255), " + "Image_col image," + ")");
}

function createTables(jdbc:Client jdbcClient) {
    sql:Error? err;

    err = createTableExactNumeric(jdbcClient);
    err = createTableApproximateNumeric(jdbcClient);
    err = createTableDateandTime(jdbcClient);
    err = createTableString(jdbcClient);
    err = createTableUnicodeString(jdbcClient);
    err = createTableBinaryString(jdbcClient);
}
