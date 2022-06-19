package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzejk.class */
final class zzejk {
    private static final Class<?> zzilq = zzhx("libcore.io.Memory");
    private static final boolean zzilr;

    static {
        zzilr = zzhx("org.robolectric.Robolectric") != null;
    }

    public static boolean zzbgc() {
        return zzilq != null && !zzilr;
    }

    public static Class<?> zzbgd() {
        return zzilq;
    }

    private static <T> Class<T> zzhx(String str) {
        try {
            return (Class<T>) Class.forName(str);
        } catch (Throwable th) {
            return null;
        }
    }
}
