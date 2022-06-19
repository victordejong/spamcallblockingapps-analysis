package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ec2.class */
final class ec2 {

    /* renamed from: a */
    private static final cc2<?> f6393a = new dc2();

    /* renamed from: b */
    private static final cc2<?> f6394b;

    static {
        cc2<?> cc2Var;
        try {
            cc2Var = (cc2) Class.forName("com.google.protobuf.ExtensionSchemaFull").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception e) {
            cc2Var = null;
        }
        f6394b = cc2Var;
    }

    /* renamed from: a */
    static cc2<?> m7655a() {
        return f6393a;
    }

    /* renamed from: b */
    static cc2<?> m7654b() {
        cc2<?> cc2Var = f6394b;
        if (cc2Var != null) {
            return cc2Var;
        }
        throw new IllegalStateException("Protobuf runtime is not correctly loaded.");
    }
}
