package com.google.android.gms.internal.ads;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dlp.class */
final class dlp {

    /* renamed from: a */
    private static final Class<?> f47186a = m16503a("libcore.io.Memory");

    /* renamed from: b */
    private static final boolean f47187b;

    static {
        f47187b = m16503a("org.robolectric.Robolectric") != null;
    }

    /* renamed from: a */
    private static <T> Class<T> m16503a(String str) {
        try {
            return (Class<T>) Class.forName(str);
        } catch (Throwable th) {
            return null;
        }
    }

    /* renamed from: a */
    public static boolean m16504a() {
        return f47186a != null && !f47187b;
    }

    /* renamed from: b */
    public static Class<?> m16502b() {
        return f47186a;
    }
}
