package com.google.android.gms.internal.icing;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/icing/zzbf.class */
final class zzbf {
    private static final Class<?> zzdm = zzf("libcore.io.Memory");
    private static final boolean zzdn;

    static {
        zzdn = zzf("org.robolectric.Robolectric") != null;
    }

    private static <T> Class<T> zzf(String str) {
        try {
            return (Class<T>) Class.forName(str);
        } catch (Throwable th) {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean zzr() {
        return zzdm != null && !zzdn;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Class<?> zzs() {
        return zzdm;
    }
}
