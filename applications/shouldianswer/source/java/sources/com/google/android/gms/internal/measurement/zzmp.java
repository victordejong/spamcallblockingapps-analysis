package com.google.android.gms.internal.measurement;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzmp.class */
public final class zzmp implements zzcz<zzms> {
    private static zzmp zza = new zzmp();
    private final zzcz<zzms> zzb;

    public zzmp() {
        this(zzdc.zza(new zzmr()));
    }

    private zzmp(zzcz<zzms> zzczVar) {
        this.zzb = zzdc.zza((zzcz) zzczVar);
    }

    public static boolean zzb() {
        return ((zzms) zza.zza()).zza();
    }

    public static boolean zzc() {
        return ((zzms) zza.zza()).zzb();
    }

    public static boolean zzd() {
        return ((zzms) zza.zza()).zzc();
    }

    @Override // com.google.android.gms.internal.measurement.zzcz
    public final /* synthetic */ zzms zza() {
        return this.zzb.zza();
    }
}
