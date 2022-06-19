package com.j256.ormlite.field.converter;

import com.j256.ormlite.field.BaseFieldConverter;
import com.j256.ormlite.field.FieldConverter;
import com.j256.ormlite.field.FieldType;
import com.j256.ormlite.field.SqlType;
import com.j256.ormlite.support.DatabaseResults;
import java.sql.SQLException;
/* loaded from: classes2-dex2jar.jar:com/j256/ormlite/field/converter/CharacterCompatFieldConverter.class */
public class CharacterCompatFieldConverter extends BaseFieldConverter {
    private final FieldConverter wrappedConverter;

    public CharacterCompatFieldConverter(FieldConverter fieldConverter) {
        this.wrappedConverter = fieldConverter;
    }

    @Override // com.j256.ormlite.field.FieldConverter
    public SqlType getSqlType() {
        return SqlType.CHAR;
    }

    @Override // com.j256.ormlite.field.BaseFieldConverter, com.j256.ormlite.field.FieldConverter
    public Object javaToSqlArg(FieldType fieldType, Object obj) throws SQLException {
        Object javaToSqlArg = this.wrappedConverter.javaToSqlArg(fieldType, obj);
        if (javaToSqlArg == null) {
            return null;
        }
        return javaToSqlArg.toString();
    }

    @Override // com.j256.ormlite.field.BaseFieldConverter, com.j256.ormlite.field.FieldConverter
    public Object makeConfigObject(FieldType fieldType) throws SQLException {
        return this.wrappedConverter.makeConfigObject(fieldType);
    }

    @Override // com.j256.ormlite.field.FieldConverter
    public Object parseDefaultString(FieldType fieldType, String str) throws SQLException {
        Object parseDefaultString = this.wrappedConverter.parseDefaultString(fieldType, str);
        if (parseDefaultString == null) {
            return null;
        }
        return parseDefaultString.toString();
    }

    @Override // com.j256.ormlite.field.FieldConverter
    public Object resultStringToJava(FieldType fieldType, String str, int i) throws SQLException {
        return this.wrappedConverter.resultStringToJava(fieldType, str, i);
    }

    @Override // com.j256.ormlite.field.BaseFieldConverter, com.j256.ormlite.field.FieldConverter
    public Object resultToJava(FieldType fieldType, DatabaseResults databaseResults, int i) throws SQLException {
        return this.wrappedConverter.resultToJava(fieldType, databaseResults, i);
    }

    @Override // com.j256.ormlite.field.FieldConverter
    public Object resultToSqlArg(FieldType fieldType, DatabaseResults databaseResults, int i) throws SQLException {
        return this.wrappedConverter.resultToSqlArg(fieldType, databaseResults, i);
    }

    @Override // com.j256.ormlite.field.BaseFieldConverter, com.j256.ormlite.field.FieldConverter
    public Object sqlArgToJava(FieldType fieldType, Object obj, int i) throws SQLException {
        return this.wrappedConverter.sqlArgToJava(fieldType, obj, i);
    }
}
