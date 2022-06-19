package com.google.android.gms.internal.ads;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dmw.class */
final class dmw {

    /* renamed from: a */
    private static final dmv<?> f47255a = new dmx();

    /* renamed from: b */
    private static final dmv<?> f47256b = m16391c();

    /* renamed from: a */
    public static dmv<?> m16393a() {
        return f47255a;
    }

    /* renamed from: b */
    public static dmv<?> m16392b() {
        dmv<?> dmvVar = f47256b;
        if (dmvVar != null) {
            return dmvVar;
        }
        throw new IllegalStateException("Protobuf runtime is not correctly loaded.");
    }

    /* renamed from: c */
    private static dmv<?> m16391c() {
        try {
            return (dmv) Class.forName("com.google.protobuf.ExtensionSchemaFull").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception e) {
            return null;
        }
    }
}
