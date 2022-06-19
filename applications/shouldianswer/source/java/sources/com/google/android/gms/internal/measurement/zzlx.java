package com.google.android.gms.internal.measurement;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzlx.class */
public final class zzlx implements zzcz<zzma> {
    private static zzlx zza = new zzlx();
    private final zzcz<zzma> zzb;

    public zzlx() {
        this(zzdc.zza(new zzlz()));
    }

    private zzlx(zzcz<zzma> zzczVar) {
        this.zzb = zzdc.zza((zzcz) zzczVar);
    }

    public static boolean zzb() {
        return ((zzma) zza.zza()).zza();
    }

    public static double zzc() {
        return ((zzma) zza.zza()).zzb();
    }

    public static long zzd() {
        return ((zzma) zza.zza()).zzc();
    }

    public static long zze() {
        return ((zzma) zza.zza()).zzd();
    }

    public static String zzf() {
        return ((zzma) zza.zza()).zze();
    }

    @Override // com.google.android.gms.internal.measurement.zzcz
    public final /* synthetic */ zzma zza() {
        return this.zzb.zza();
    }
}
