package com.google.android.gms.internal.measurement;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzvv.class */
public enum zzvv {
    VOID(Void.class, Void.class, null),
    INT(Integer.TYPE, Integer.class, 0),
    LONG(Long.TYPE, Long.class, 0L),
    FLOAT(Float.TYPE, Float.class, Float.valueOf(0.0f)),
    DOUBLE(Double.TYPE, Double.class, Double.valueOf(0.0d)),
    BOOLEAN(Boolean.TYPE, Boolean.class, false),
    STRING(String.class, String.class, ""),
    BYTE_STRING(zzud.class, zzud.class, zzud.zzbtz),
    ENUM(Integer.TYPE, Integer.class, null),
    MESSAGE(Object.class, Object.class, null);
    
    private final Class<?> zzbzx;
    private final Class<?> zzbzy;
    private final Object zzbzz;

    zzvv(Class cls, Class cls2, Object obj) {
        this.zzbzx = cls;
        this.zzbzy = cls2;
        this.zzbzz = obj;
    }

    public final Class<?> zzws() {
        return this.zzbzy;
    }
}
