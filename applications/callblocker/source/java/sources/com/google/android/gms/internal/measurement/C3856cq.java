package com.google.android.gms.internal.measurement;
/* renamed from: com.google.android.gms.internal.measurement.cq */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/cq.class */
final class C3856cq {

    /* renamed from: a */
    private static final Class<?> f17934a = m5818a("libcore.io.Memory");

    /* renamed from: b */
    private static final boolean f17935b;

    static {
        f17935b = m5818a("org.robolectric.Robolectric") != null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    private static <T> Class<T> m5818a(String str) {
        Class cls;
        try {
            cls = Class.forName(str);
        } catch (Throwable th) {
            cls = null;
        }
        return cls;
    }

    /* renamed from: a */
    public static boolean m5819a() {
        return f17934a != null && !f17935b;
    }

    /* renamed from: b */
    public static Class<?> m5817b() {
        return f17934a;
    }
}
