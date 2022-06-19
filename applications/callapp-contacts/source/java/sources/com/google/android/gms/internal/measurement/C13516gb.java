package com.google.android.gms.internal.measurement;
/* renamed from: com.google.android.gms.internal.measurement.gb */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/gb.class */
final class C13516gb {

    /* renamed from: a */
    private static final AbstractC13513fz<?> f50747a = new C13515ga();

    /* renamed from: b */
    private static final AbstractC13513fz<?> f50748b;

    static {
        AbstractC13513fz<?> abstractC13513fz;
        try {
            abstractC13513fz = (AbstractC13513fz) Class.forName("com.google.protobuf.ExtensionSchemaFull").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception e) {
            abstractC13513fz = null;
        }
        f50748b = abstractC13513fz;
    }

    /* renamed from: a */
    public static AbstractC13513fz<?> m12794a() {
        return f50747a;
    }

    /* renamed from: b */
    public static AbstractC13513fz<?> m12793b() {
        AbstractC13513fz<?> abstractC13513fz = f50748b;
        if (abstractC13513fz != null) {
            return abstractC13513fz;
        }
        throw new IllegalStateException("Protobuf runtime is not correctly loaded.");
    }
}
