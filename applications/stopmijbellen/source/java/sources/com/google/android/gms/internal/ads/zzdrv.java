package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdrv.class */
public final class zzdrv implements zzgpr<zzdru> {
    private final zzgqe<zzdwj> zza;
    private final zzgqe<zzduy> zzb;

    public zzdrv(zzgqe<zzdwj> zzgqeVar, zzgqe<zzduy> zzgqeVar2) {
        this.zza = zzgqeVar;
        this.zzb = zzgqeVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzgqe
    public final /* bridge */ /* synthetic */ Object zzb() {
        return new zzdru(this.zza.zzb(), ((zzdpj) this.zzb).zza());
    }
}
