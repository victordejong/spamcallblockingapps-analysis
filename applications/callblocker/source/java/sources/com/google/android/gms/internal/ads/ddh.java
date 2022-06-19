package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ddh.class */
public enum ddh {
    VOID(Void.class, Void.class, null),
    INT(Integer.TYPE, Integer.class, 0),
    LONG(Long.TYPE, Long.class, 0L),
    FLOAT(Float.TYPE, Float.class, Float.valueOf(0.0f)),
    DOUBLE(Double.TYPE, Double.class, Double.valueOf(0.0d)),
    BOOLEAN(Boolean.TYPE, Boolean.class, false),
    STRING(String.class, String.class, ""),
    BYTE_STRING(dbi.class, dbi.class, dbi.f13932a),
    ENUM(Integer.TYPE, Integer.class, null),
    MESSAGE(Object.class, Object.class, null);
    

    /* renamed from: k */
    private final Class<?> f14109k;

    /* renamed from: l */
    private final Class<?> f14110l;

    /* renamed from: m */
    private final Object f14111m;

    ddh(Class cls, Class cls2, Object obj) {
        this.f14109k = cls;
        this.f14110l = cls2;
        this.f14111m = obj;
    }

    /* renamed from: a */
    public final Class<?> m10036a() {
        return this.f14110l;
    }
}
