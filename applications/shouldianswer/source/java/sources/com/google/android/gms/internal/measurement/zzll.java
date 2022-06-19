package com.google.android.gms.internal.measurement;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzll.class */
public final class zzll implements zzcz<zzlo> {
    private static zzll zza = new zzll();
    private final zzcz<zzlo> zzb;

    public zzll() {
        this(zzdc.zza(new zzln()));
    }

    private zzll(zzcz<zzlo> zzczVar) {
        this.zzb = zzdc.zza((zzcz) zzczVar);
    }

    public static boolean zzb() {
        return ((zzlo) zza.zza()).zza();
    }

    public static boolean zzc() {
        return ((zzlo) zza.zza()).zzb();
    }

    public static boolean zzd() {
        return ((zzlo) zza.zza()).zzc();
    }

    @Override // com.google.android.gms.internal.measurement.zzcz
    public final /* synthetic */ zzlo zza() {
        return this.zzb.zza();
    }
}
