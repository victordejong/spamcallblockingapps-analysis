package com.google.android.gms.internal.measurement;
/* renamed from: com.google.android.gms.internal.measurement.o5 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/o5.class */
final class C7490o5 {

    /* renamed from: a */
    private static final AbstractC7462m5<?> f34617a = new C7476n5();

    /* renamed from: b */
    private static final AbstractC7462m5<?> f34618b;

    static {
        AbstractC7462m5<?> abstractC7462m5;
        try {
            abstractC7462m5 = (AbstractC7462m5) Class.forName("com.google.protobuf.ExtensionSchemaFull").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception e) {
            abstractC7462m5 = null;
        }
        f34618b = abstractC7462m5;
    }

    /* renamed from: a */
    public static AbstractC7462m5<?> m7043a() {
        return f34617a;
    }

    /* renamed from: b */
    public static AbstractC7462m5<?> m7042b() {
        AbstractC7462m5<?> abstractC7462m5 = f34618b;
        if (abstractC7462m5 != null) {
            return abstractC7462m5;
        }
        throw new IllegalStateException("Protobuf runtime is not correctly loaded.");
    }
}
