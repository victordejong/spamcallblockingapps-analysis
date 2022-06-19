package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdtz.class */
public final class zzdtz implements zzgpr<zzdty> {
    private final zzgqe<zzdpx> zza;
    private final zzgqe<zzdqc> zzb;

    public zzdtz(zzgqe<zzdpx> zzgqeVar, zzgqe<zzdqc> zzgqeVar2) {
        this.zza = zzgqeVar;
        this.zzb = zzgqeVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzgqe
    public final /* bridge */ /* synthetic */ Object zzb() {
        return new zzdty(this.zza.zzb(), ((zzdqu) this.zzb).zza());
    }
}
