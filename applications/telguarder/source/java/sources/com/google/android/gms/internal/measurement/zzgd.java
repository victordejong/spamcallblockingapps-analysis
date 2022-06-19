package com.google.android.gms.internal.measurement;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/zzgd.class */
final class zzgd {
    private static final Class<?> zza;
    private static final boolean zzb;

    static {
        Class<?> cls;
        Class<?> cls2;
        try {
            cls = Class.forName("libcore.io.Memory");
        } catch (Throwable th) {
            cls = null;
        }
        zza = cls;
        try {
            cls2 = Class.forName("org.robolectric.Robolectric");
        } catch (Throwable th2) {
            cls2 = null;
        }
        zzb = cls2 != null;
    }

    public static boolean zza() {
        return zza != null && !zzb;
    }

    public static Class<?> zzb() {
        return zza;
    }
}
