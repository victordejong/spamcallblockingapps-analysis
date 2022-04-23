package com.explorestack.protobuf;

import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* loaded from: classes2-dex2jar.jar:com/explorestack/protobuf/JavaType.class */
public enum JavaType {
    VOID(Void.class, Void.class, null),
    INT(Integer.TYPE, Integer.class, 0),
    LONG(Long.TYPE, Long.class, 0L),
    FLOAT(Float.TYPE, Float.class, Float.valueOf((float) BitmapDescriptorFactory.HUE_RED)),
    DOUBLE(Double.TYPE, Double.class, Double.valueOf(0.0d)),
    BOOLEAN(Boolean.TYPE, Boolean.class, Boolean.FALSE),
    STRING(String.class, String.class, ""),
    BYTE_STRING(ByteString.class, ByteString.class, ByteString.EMPTY),
    ENUM(Integer.TYPE, Integer.class, null),
    MESSAGE(Object.class, Object.class, null);
    
    private final Class<?> boxedType;
    private final Object defaultDefault;
    private final Class<?> type;

    JavaType(Class cls, Class cls2, Object obj) {
        this.type = cls;
        this.boxedType = cls2;
        this.defaultDefault = obj;
    }

    public final Class<?> getBoxedType() {
        return this.boxedType;
    }

    public final Object getDefaultDefault() {
        return this.defaultDefault;
    }

    public final Class<?> getType() {
        return this.type;
    }

    public final boolean isValidType(Class<?> cls) {
        return this.type.isAssignableFrom(cls);
    }
}
