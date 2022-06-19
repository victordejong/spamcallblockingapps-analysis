package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/deb.class */
final class deb {

    /* renamed from: a */
    private static final ddz f14137a = m10000c();

    /* renamed from: b */
    private static final ddz f14138b = new dec();

    /* renamed from: a */
    public static ddz m10002a() {
        return f14137a;
    }

    /* renamed from: b */
    public static ddz m10001b() {
        return f14138b;
    }

    /* renamed from: c */
    private static ddz m10000c() {
        ddz ddzVar;
        try {
            ddzVar = (ddz) Class.forName("com.google.protobuf.MapFieldSchemaFull").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception e) {
            ddzVar = null;
        }
        return ddzVar;
    }
}
