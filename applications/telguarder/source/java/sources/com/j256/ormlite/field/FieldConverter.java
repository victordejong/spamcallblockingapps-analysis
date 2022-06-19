package com.j256.ormlite.field;

import com.j256.ormlite.support.DatabaseResults;
import java.sql.SQLException;
/* loaded from: classes2-dex2jar.jar:com/j256/ormlite/field/FieldConverter.class */
public interface FieldConverter {
    SqlType getSqlType();

    boolean isStreamType();

    Object javaToSqlArg(FieldType fieldType, Object obj) throws SQLException;

    Object makeConfigObject(FieldType fieldType) throws SQLException;

    Object parseDefaultString(FieldType fieldType, String str) throws SQLException;

    Object resultStringToJava(FieldType fieldType, String str, int i) throws SQLException;

    Object resultToJava(FieldType fieldType, DatabaseResults databaseResults, int i) throws SQLException;

    Object resultToSqlArg(FieldType fieldType, DatabaseResults databaseResults, int i) throws SQLException;

    Object sqlArgToJava(FieldType fieldType, Object obj, int i) throws SQLException;
}
