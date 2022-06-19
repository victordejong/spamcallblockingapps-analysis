package com.google.android.gms.internal.ads;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/doo.class */
final class doo {

    /* renamed from: a */
    private static final dom f47325a = m16272c();

    /* renamed from: b */
    private static final dom f47326b = new dop();

    /* renamed from: a */
    public static dom m16274a() {
        return f47325a;
    }

    /* renamed from: b */
    public static dom m16273b() {
        return f47326b;
    }

    /* renamed from: c */
    private static dom m16272c() {
        try {
            return (dom) Class.forName("com.google.protobuf.MapFieldSchemaFull").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception e) {
            return null;
        }
    }
}
