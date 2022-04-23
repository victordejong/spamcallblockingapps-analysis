package com.google.android.gms.internal.icing;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/icing/zzcs.class */
final class zzcs {

    /* renamed from: a */
    private static final Class<?> f7954a = m13980c("libcore.io.Memory");

    /* renamed from: b */
    private static final boolean f7955b;

    static {
        f7955b = m13980c("org.robolectric.Robolectric") != null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static boolean m13982a() {
        return f7954a != null && !f7955b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public static Class<?> m13981b() {
        return f7954a;
    }

    /* renamed from: c */
    private static <T> Class<T> m13980c(String str) {
        try {
            return (Class<T>) Class.forName(str);
        } catch (Throwable th) {
            return null;
        }
    }
}
