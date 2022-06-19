package com.google.android.libraries.places.internal;
/* loaded from: classes3-dex2jar.jar:com/google/android/libraries/places/internal/zzqz.class */
public final class zzqz {
    private static final Class<?> zza = zza("libcore.io.Memory");
    private static final boolean zzb;

    static {
        zzb = zza("org.robolectric.Robolectric") != null;
    }

    private static <T> Class<T> zza(String str) {
        try {
            return (Class<T>) Class.forName(str);
        } catch (Throwable th) {
            return null;
        }
    }

    public static boolean zza() {
        return zza != null && !zzb;
    }

    public static Class<?> zzb() {
        return zza;
    }
}
