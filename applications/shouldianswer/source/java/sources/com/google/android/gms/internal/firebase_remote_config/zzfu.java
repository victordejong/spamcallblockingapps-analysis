package com.google.android.gms.internal.firebase_remote_config;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_remote_config/zzfu.class */
final class zzfu {
    private static final Class<?> zzon = zzbi("libcore.io.Memory");
    private static final boolean zzoo;

    static {
        zzoo = zzbi("org.robolectric.Robolectric") != null;
    }

    private static <T> Class<T> zzbi(String str) {
        try {
            return (Class<T>) Class.forName(str);
        } catch (Throwable th) {
            return null;
        }
    }

    public static boolean zzeu() {
        return zzon != null && !zzoo;
    }

    public static Class<?> zzev() {
        return zzon;
    }
}
