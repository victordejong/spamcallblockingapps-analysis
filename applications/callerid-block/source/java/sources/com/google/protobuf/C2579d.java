package com.google.protobuf;
/* renamed from: com.google.protobuf.d */
/* loaded from: classes2-dex2jar.jar:com/google/protobuf/d.class */
final class C2579d {

    /* renamed from: a */
    private static final Class<?> f11049a = m2836a("libcore.io.Memory");

    /* renamed from: b */
    private static final boolean f11050b;

    static {
        f11050b = m2836a("org.robolectric.Robolectric") != null;
    }

    /* renamed from: a */
    private static <T> Class<T> m2836a(String str) {
        try {
            return (Class<T>) Class.forName(str);
        } catch (Throwable th) {
            return null;
        }
    }

    /* renamed from: b */
    public static Class<?> m2835b() {
        return f11049a;
    }

    /* renamed from: c */
    public static boolean m2834c() {
        return f11049a != null && !f11050b;
    }
}
