package com.google.android.gms.internal.measurement;
/* renamed from: com.google.android.gms.internal.measurement.ds */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/ds.class */
final class C3888ds {

    /* renamed from: a */
    private static final AbstractC3887dr<?> f18008a = new C3889dt();

    /* renamed from: b */
    private static final AbstractC3887dr<?> f18009b = m5689c();

    /* renamed from: a */
    public static AbstractC3887dr<?> m5691a() {
        return f18008a;
    }

    /* renamed from: b */
    public static AbstractC3887dr<?> m5690b() {
        if (f18009b == null) {
            throw new IllegalStateException("Protobuf runtime is not correctly loaded.");
        }
        return f18009b;
    }

    /* renamed from: c */
    private static AbstractC3887dr<?> m5689c() {
        AbstractC3887dr<?> abstractC3887dr;
        try {
            abstractC3887dr = (AbstractC3887dr) Class.forName("com.google.protobuf.ExtensionSchemaFull").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception e) {
            abstractC3887dr = null;
        }
        return abstractC3887dr;
    }
}
