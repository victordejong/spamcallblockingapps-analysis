package com.google.android.gms.internal.measurement;
/* renamed from: com.google.android.gms.internal.measurement.fy */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/fy.class */
final class C3954fy {

    /* renamed from: a */
    private static final AbstractC3952fw f18186a = m5482c();

    /* renamed from: b */
    private static final AbstractC3952fw f18187b = new C3951fv();

    /* renamed from: a */
    public static AbstractC3952fw m5484a() {
        return f18186a;
    }

    /* renamed from: b */
    public static AbstractC3952fw m5483b() {
        return f18187b;
    }

    /* renamed from: c */
    private static AbstractC3952fw m5482c() {
        AbstractC3952fw abstractC3952fw;
        try {
            abstractC3952fw = (AbstractC3952fw) Class.forName("com.google.protobuf.NewInstanceSchemaFull").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception e) {
            abstractC3952fw = null;
        }
        return abstractC3952fw;
    }
}
