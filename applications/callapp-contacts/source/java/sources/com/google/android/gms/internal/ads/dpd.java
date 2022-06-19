package com.google.android.gms.internal.ads;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dpd.class */
final class dpd {

    /* renamed from: a */
    private static final dpb f47351a = m16201c();

    /* renamed from: b */
    private static final dpb f47352b = new dpa();

    /* renamed from: a */
    public static dpb m16203a() {
        return f47351a;
    }

    /* renamed from: b */
    public static dpb m16202b() {
        return f47352b;
    }

    /* renamed from: c */
    private static dpb m16201c() {
        try {
            return (dpb) Class.forName("com.google.protobuf.NewInstanceSchemaFull").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception e) {
            return null;
        }
    }
}
