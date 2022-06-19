package com.google.android.gms.internal.firebase_perf;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_perf/zzdb.class */
final class zzdb {
    private static final Class<?> zzmf = zzad("libcore.io.Memory");
    private static final boolean zzmg;

    static {
        zzmg = zzad("org.robolectric.Robolectric") != null;
    }

    private static <T> Class<T> zzad(String str) {
        try {
            return (Class<T>) Class.forName(str);
        } catch (Throwable th) {
            return null;
        }
    }

    public static boolean zzfh() {
        return zzmf != null && !zzmg;
    }

    public static Class<?> zzfi() {
        return zzmf;
    }
}
