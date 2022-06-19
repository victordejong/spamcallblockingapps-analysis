package com.google.protobuf;

import com.google.android.libraries.places.api.model.PlaceLikelihood;
/* JADX WARN: Init of enum ENUM can be incorrect */
/* JADX WARN: Init of enum INT can be incorrect */
/* loaded from: classes3-dex2jar.jar:com/google/protobuf/JavaType.class */
public enum JavaType {
    VOID(Void.class, Void.class, null),
    INT(r0, Integer.class, 0),
    LONG(Long.TYPE, Long.class, 0L),
    FLOAT(Float.TYPE, Float.class, Float.valueOf(0.0f)),
    DOUBLE(Double.TYPE, Double.class, Double.valueOf((double) PlaceLikelihood.LIKELIHOOD_MIN_VALUE)),
    BOOLEAN(Boolean.TYPE, Boolean.class, Boolean.FALSE),
    STRING(String.class, String.class, ""),
    BYTE_STRING(ByteString.class, ByteString.class, ByteString.EMPTY),
    ENUM(r0, Integer.class, null),
    MESSAGE(Object.class, Object.class, null);
    
    private final Class<?> boxedType;
    private final Object defaultDefault;
    private final Class<?> type;

    static {
        Class cls = Integer.TYPE;
    }

    JavaType(Class cls, Class cls2, Object obj) {
        this.type = cls;
        this.boxedType = cls2;
        this.defaultDefault = obj;
    }

    public Class<?> getBoxedType() {
        return this.boxedType;
    }

    public Object getDefaultDefault() {
        return this.defaultDefault;
    }

    public Class<?> getType() {
        return this.type;
    }

    public boolean isValidType(Class<?> cls) {
        return this.type.isAssignableFrom(cls);
    }
}
