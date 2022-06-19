package com.google.android.gms.internal.measurement;
/* renamed from: com.google.android.gms.internal.measurement.eo */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/eo.class */
public enum EnumC3917eo {
    VOID(Void.class, Void.class, null),
    INT(Integer.TYPE, Integer.class, 0),
    LONG(Long.TYPE, Long.class, 0L),
    FLOAT(Float.TYPE, Float.class, Float.valueOf(0.0f)),
    DOUBLE(Double.TYPE, Double.class, Double.valueOf(0.0d)),
    BOOLEAN(Boolean.TYPE, Boolean.class, false),
    STRING(String.class, String.class, ""),
    BYTE_STRING(AbstractC3859ct.class, AbstractC3859ct.class, AbstractC3859ct.f17943a),
    ENUM(Integer.TYPE, Integer.class, null),
    MESSAGE(Object.class, Object.class, null);
    

    /* renamed from: k */
    private final Class<?> f18126k;

    /* renamed from: l */
    private final Class<?> f18127l;

    /* renamed from: m */
    private final Object f18128m;

    EnumC3917eo(Class cls, Class cls2, Object obj) {
        this.f18126k = cls;
        this.f18127l = cls2;
        this.f18128m = obj;
    }

    /* renamed from: a */
    public final Class<?> m5595a() {
        return this.f18127l;
    }
}
