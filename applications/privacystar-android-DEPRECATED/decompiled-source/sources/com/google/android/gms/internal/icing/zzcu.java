package com.google.android.gms.internal.icing;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/icing/zzcu.class */
public enum zzcu {
    VOID(Void.class, Void.class, null),
    INT(Integer.TYPE, Integer.class, 0),
    LONG(Long.TYPE, Long.class, 0L),
    FLOAT(Float.TYPE, Float.class, Float.valueOf(0.0f)),
    DOUBLE(Double.TYPE, Double.class, Double.valueOf(0.0d)),
    BOOLEAN(Boolean.TYPE, Boolean.class, false),
    STRING(String.class, String.class, ""),
    BYTE_STRING(zzbi.class, zzbi.class, zzbi.zzdq),
    ENUM(Integer.TYPE, Integer.class, null),
    MESSAGE(Object.class, Object.class, null);
    
    private final Class<?> zzix;
    private final Class<?> zziy;
    private final Object zziz;

    zzcu(Class cls, Class cls2, Object obj) {
        this.zzix = cls;
        this.zziy = cls2;
        this.zziz = obj;
    }

    public final Class<?> zzbe() {
        return this.zziy;
    }
}
