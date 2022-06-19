package com.j256.ormlite.field.converter;

import com.j256.ormlite.field.BaseFieldConverter;
import com.j256.ormlite.field.FieldType;
import com.j256.ormlite.field.SqlType;
import com.j256.ormlite.support.DatabaseResults;
import java.sql.SQLException;
/* loaded from: classes2-dex2jar.jar:com/j256/ormlite/field/converter/BooleanNumberFieldConverter.class */
public class BooleanNumberFieldConverter extends BaseFieldConverter {
    @Override // com.j256.ormlite.field.FieldConverter
    public SqlType getSqlType() {
        return SqlType.BYTE;
    }

    @Override // com.j256.ormlite.field.BaseFieldConverter, com.j256.ormlite.field.FieldConverter
    public Object javaToSqlArg(FieldType fieldType, Object obj) {
        return Byte.valueOf(((Boolean) obj).booleanValue() ? (byte) 1 : (byte) 0);
    }

    @Override // com.j256.ormlite.field.FieldConverter
    public Object parseDefaultString(FieldType fieldType, String str) {
        return Byte.valueOf(Boolean.parseBoolean(str) ? (byte) 1 : (byte) 0);
    }

    @Override // com.j256.ormlite.field.FieldConverter
    public Object resultStringToJava(FieldType fieldType, String str, int i) {
        return sqlArgToJava(fieldType, Byte.valueOf(Byte.parseByte(str)), i);
    }

    @Override // com.j256.ormlite.field.FieldConverter
    public Object resultToSqlArg(FieldType fieldType, DatabaseResults databaseResults, int i) throws SQLException {
        return Byte.valueOf(databaseResults.getByte(i));
    }

    @Override // com.j256.ormlite.field.BaseFieldConverter, com.j256.ormlite.field.FieldConverter
    public Object sqlArgToJava(FieldType fieldType, Object obj, int i) {
        return ((Byte) obj).byteValue() == 1;
    }
}
