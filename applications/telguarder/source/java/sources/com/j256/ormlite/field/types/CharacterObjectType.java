package com.j256.ormlite.field.types;

import com.j256.ormlite.field.FieldType;
import com.j256.ormlite.field.SqlType;
import com.j256.ormlite.support.DatabaseResults;
import java.sql.SQLException;
/* loaded from: classes2-dex2jar.jar:com/j256/ormlite/field/types/CharacterObjectType.class */
public class CharacterObjectType extends BaseDataType {
    private static final CharacterObjectType singleTon = new CharacterObjectType();

    private CharacterObjectType() {
        super(SqlType.CHAR, new Class[]{Character.class});
    }

    public CharacterObjectType(SqlType sqlType, Class<?>[] clsArr) {
        super(sqlType, clsArr);
    }

    public static CharacterObjectType getSingleton() {
        return singleTon;
    }

    @Override // com.j256.ormlite.field.FieldConverter
    public Object parseDefaultString(FieldType fieldType, String str) throws SQLException {
        if (str.length() == 1) {
            return Character.valueOf(str.charAt(0));
        }
        throw new SQLException("Problems with field " + fieldType + ", default string to long for Character: '" + str + "'");
    }

    @Override // com.j256.ormlite.field.FieldConverter
    public Object resultToSqlArg(FieldType fieldType, DatabaseResults databaseResults, int i) throws SQLException {
        return Character.valueOf(databaseResults.getChar(i));
    }
}
