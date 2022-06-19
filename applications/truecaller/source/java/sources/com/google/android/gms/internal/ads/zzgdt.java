package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzgdt.class */
public final class zzgdt {
    public static boolean zza() {
        return "The Android Project".equals(System.getProperty("java.vendor"));
    }

    public static int zzb() {
        try {
            return Class.forName("android.os.Build$VERSION").getDeclaredField("SDK_INT").getInt(null);
        } catch (ClassNotFoundException | IllegalAccessException | NoSuchFieldException e) {
            return -1;
        }
    }
}
