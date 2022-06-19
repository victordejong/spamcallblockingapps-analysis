package com.google.android.gms.internal.measurement;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzkn.class */
public final class zzkn implements zzcz<zzkq> {
    private static zzkn zza = new zzkn();
    private final zzcz<zzkq> zzb;

    public zzkn() {
        this(zzdc.zza(new zzkp()));
    }

    private zzkn(zzcz<zzkq> zzczVar) {
        this.zzb = zzdc.zza((zzcz) zzczVar);
    }

    public static boolean zzb() {
        return ((zzkq) zza.zza()).zza();
    }

    public static boolean zzc() {
        return ((zzkq) zza.zza()).zzb();
    }

    @Override // com.google.android.gms.internal.measurement.zzcz
    public final /* synthetic */ zzkq zza() {
        return this.zzb.zza();
    }
}
