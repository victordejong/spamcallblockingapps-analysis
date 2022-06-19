package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/yd3.class */
final class yd3 {

    /* renamed from: a */
    private static final wd3<?> f32479a = new xd3();

    /* renamed from: b */
    private static final wd3<?> f32480b;

    static {
        wd3<?> wd3Var;
        try {
            wd3Var = (wd3) Class.forName("com.google.protobuf.ExtensionSchemaFull").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception e) {
            wd3Var = null;
        }
        f32480b = wd3Var;
    }

    /* renamed from: a */
    public static wd3<?> m8842a() {
        return f32479a;
    }

    /* renamed from: b */
    public static wd3<?> m8841b() {
        wd3<?> wd3Var = f32480b;
        if (wd3Var != null) {
            return wd3Var;
        }
        throw new IllegalStateException("Protobuf runtime is not correctly loaded.");
    }
}
