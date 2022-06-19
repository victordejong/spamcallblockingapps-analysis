package com.j256.ormlite.field.types;

import com.j256.ormlite.field.FieldType;
import com.j256.ormlite.field.SqlType;
import java.lang.reflect.Field;
import java.sql.SQLException;
/* loaded from: classes2-dex2jar.jar:com/j256/ormlite/field/types/BaseEnumType.class */
public abstract class BaseEnumType extends BaseDataType {
    public BaseEnumType(SqlType sqlType) {
        super(sqlType);
    }

    public BaseEnumType(SqlType sqlType, Class<?>[] clsArr) {
        super(sqlType, clsArr);
    }

    public static Enum<?> enumVal(FieldType fieldType, Object obj, Enum<?> r6, Enum<?> r7) throws SQLException {
        if (r6 != null) {
            return r6;
        }
        if (r7 != null) {
            return r7;
        }
        throw new SQLException("Cannot get enum value of '" + obj + "' for field " + fieldType);
    }

    @Override // com.j256.ormlite.field.types.BaseDataType, com.j256.ormlite.field.DataPersister
    public boolean isValidForField(Field field) {
        return field.getType().isEnum();
    }
}
