package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dcm.class */
final class dcm {

    /* renamed from: a */
    private static final dck<?> f13994a = new dcj();

    /* renamed from: b */
    private static final dck<?> f13995b = m10104c();

    /* renamed from: a */
    public static dck<?> m10106a() {
        return f13994a;
    }

    /* renamed from: b */
    public static dck<?> m10105b() {
        if (f13995b == null) {
            throw new IllegalStateException("Protobuf runtime is not correctly loaded.");
        }
        return f13995b;
    }

    /* renamed from: c */
    private static dck<?> m10104c() {
        dck<?> dckVar;
        try {
            dckVar = (dck) Class.forName("com.google.protobuf.ExtensionSchemaFull").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception e) {
            dckVar = null;
        }
        return dckVar;
    }
}
