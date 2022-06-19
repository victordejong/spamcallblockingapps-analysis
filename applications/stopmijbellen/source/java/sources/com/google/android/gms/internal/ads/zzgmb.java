package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzgmb.class */
final class zzgmb {
    private static final zzgma zza;
    private static final zzgma zzb;

    static {
        zzgma zzgmaVar;
        try {
            zzgmaVar = (zzgma) Class.forName("com.google.protobuf.NewInstanceSchemaFull").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception e) {
            zzgmaVar = null;
        }
        zza = zzgmaVar;
        zzb = new zzgma();
    }

    public static zzgma zza() {
        return zza;
    }

    public static zzgma zzb() {
        return zzb;
    }
}
