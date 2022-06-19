package com.google.android.gms.internal.measurement;
/* renamed from: com.google.android.gms.internal.measurement.h5 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/h5.class */
final class C2124h5 {

    /* renamed from: a */
    private static final AbstractC2111f5<?> f9755a = new g5();

    /* renamed from: b */
    private static final AbstractC2111f5<?> f9756b;

    static {
        AbstractC2111f5<?> abstractC2111f5;
        try {
            abstractC2111f5 = (AbstractC2111f5) Class.forName("com.google.protobuf.ExtensionSchemaFull").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception e) {
            abstractC2111f5 = null;
        }
        f9756b = abstractC2111f5;
    }

    /* renamed from: a */
    static AbstractC2111f5<?> m4325a() {
        return f9755a;
    }

    /* renamed from: b */
    static AbstractC2111f5<?> m4324b() {
        AbstractC2111f5<?> abstractC2111f5 = f9756b;
        if (abstractC2111f5 != null) {
            return abstractC2111f5;
        }
        throw new IllegalStateException("Protobuf runtime is not correctly loaded.");
    }
}
