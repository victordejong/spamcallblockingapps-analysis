package com.google.android.gms.internal.measurement;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzkh.class */
public final class zzkh implements zzcz<zzkk> {
    private static zzkh zza = new zzkh();
    private final zzcz<zzkk> zzb;

    public zzkh() {
        this(zzdc.zza(new zzkj()));
    }

    private zzkh(zzcz<zzkk> zzczVar) {
        this.zzb = zzdc.zza((zzcz) zzczVar);
    }

    public static boolean zzb() {
        return ((zzkk) zza.zza()).zza();
    }

    @Override // com.google.android.gms.internal.measurement.zzcz
    public final /* synthetic */ zzkk zza() {
        return this.zzb.zza();
    }
}
