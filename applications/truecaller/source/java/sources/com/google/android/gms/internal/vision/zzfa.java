package com.google.android.gms.internal.vision;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/vision/zzfa.class */
public final class zzfa {
    private static final Class<?> zzrm = zzv("libcore.io.Memory");
    private static final boolean zzrn;

    static {
        zzrn = zzv("org.robolectric.Robolectric") != null;
    }

    public static boolean zzdr() {
        return zzrm != null && !zzrn;
    }

    public static Class<?> zzds() {
        return zzrm;
    }

    private static <T> Class<T> zzv(String str) {
        try {
            return (Class<T>) Class.forName(str);
        } catch (Throwable th) {
            return null;
        }
    }
}
