package com.j256.ormlite.field.types;

import com.j256.ormlite.field.SqlType;
/* loaded from: classes2-dex2jar.jar:com/j256/ormlite/field/types/EnumToStringType.class */
public class EnumToStringType extends EnumStringType {
    private static final EnumToStringType singleTon = new EnumToStringType();

    private EnumToStringType() {
        super(SqlType.STRING, new Class[]{Enum.class});
    }

    protected EnumToStringType(SqlType sqlType, Class<?>[] clsArr) {
        super(sqlType, clsArr);
    }

    public static EnumToStringType getSingleton() {
        return singleTon;
    }

    @Override // com.j256.ormlite.field.types.EnumStringType
    protected String getEnumName(Enum<?> r3) {
        return r3.toString();
    }
}
