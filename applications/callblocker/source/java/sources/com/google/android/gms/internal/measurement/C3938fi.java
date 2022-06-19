package com.google.android.gms.internal.measurement;
/* renamed from: com.google.android.gms.internal.measurement.fi */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/fi.class */
final class C3938fi {

    /* renamed from: a */
    private static final AbstractC3936fg f18157a = m5559c();

    /* renamed from: b */
    private static final AbstractC3936fg f18158b = new C3939fj();

    /* renamed from: a */
    public static AbstractC3936fg m5561a() {
        return f18157a;
    }

    /* renamed from: b */
    public static AbstractC3936fg m5560b() {
        return f18158b;
    }

    /* renamed from: c */
    private static AbstractC3936fg m5559c() {
        AbstractC3936fg abstractC3936fg;
        try {
            abstractC3936fg = (AbstractC3936fg) Class.forName("com.google.protobuf.MapFieldSchemaFull").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception e) {
            abstractC3936fg = null;
        }
        return abstractC3936fg;
    }
}
