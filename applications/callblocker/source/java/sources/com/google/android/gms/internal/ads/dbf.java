package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dbf.class */
final class dbf {

    /* renamed from: a */
    private static final Class<?> f13923a = m10229a("libcore.io.Memory");

    /* renamed from: b */
    private static final boolean f13924b;

    static {
        f13924b = m10229a("org.robolectric.Robolectric") != null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    private static <T> Class<T> m10229a(String str) {
        Class cls;
        try {
            cls = Class.forName(str);
        } catch (Throwable th) {
            cls = null;
        }
        return cls;
    }

    /* renamed from: a */
    public static boolean m10230a() {
        return f13923a != null && !f13924b;
    }

    /* renamed from: b */
    public static Class<?> m10228b() {
        return f13923a;
    }
}
