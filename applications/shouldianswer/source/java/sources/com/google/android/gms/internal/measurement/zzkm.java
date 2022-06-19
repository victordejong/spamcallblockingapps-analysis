package com.google.android.gms.internal.measurement;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzkm.class */
public final class zzkm implements zzcz<zzkl> {
    private static zzkm zza = new zzkm();
    private final zzcz<zzkl> zzb;

    public zzkm() {
        this(zzdc.zza(new zzko()));
    }

    private zzkm(zzcz<zzkl> zzczVar) {
        this.zzb = zzdc.zza((zzcz) zzczVar);
    }

    public static boolean zzb() {
        return ((zzkl) zza.zza()).zza();
    }

    public static boolean zzc() {
        return ((zzkl) zza.zza()).zzb();
    }

    @Override // com.google.android.gms.internal.measurement.zzcz
    public final /* synthetic */ zzkl zza() {
        return this.zzb.zza();
    }
}
