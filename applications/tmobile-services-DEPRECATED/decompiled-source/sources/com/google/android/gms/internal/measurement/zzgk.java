package com.google.android.gms.internal.measurement;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzgk.class */
final class zzgk {

    /* renamed from: a */
    private static final Class<?> f8450a = m12659a("libcore.io.Memory");

    /* renamed from: b */
    private static final boolean f8451b;

    static {
        f8451b = m12659a("org.robolectric.Robolectric") != null;
    }

    /* renamed from: a */
    private static <T> Class<T> m12659a(String str) {
        try {
            return (Class<T>) Class.forName(str);
        } catch (Throwable th) {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public static boolean m12658b() {
        return f8450a != null && !f8451b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public static Class<?> m12657c() {
        return f8450a;
    }
}
