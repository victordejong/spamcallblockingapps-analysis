package com.j256.ormlite.field.types;

import com.j256.ormlite.field.SqlType;
/* loaded from: classes2-dex2jar.jar:com/j256/ormlite/field/types/NativeUuidType.class */
public class NativeUuidType extends UuidType {
    private static final NativeUuidType singleTon = new NativeUuidType();

    private NativeUuidType() {
        super(SqlType.UUID);
    }

    protected NativeUuidType(SqlType sqlType, Class<?>[] clsArr) {
        super(sqlType, clsArr);
    }

    public static NativeUuidType getSingleton() {
        return singleTon;
    }
}
