package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdxw.class */
public final class zzdxw implements zzgpr<zzdxv> {
    private final zzgqe<zzbay> zza;
    private final zzgqe<zzfbi> zzb;

    public zzdxw(zzgqe<zzbay> zzgqeVar, zzgqe<zzfbi> zzgqeVar2) {
        this.zza = zzgqeVar;
        this.zzb = zzgqeVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzgqe
    public final /* bridge */ /* synthetic */ Object zzb() {
        return new zzdxv(this.zza.zzb(), this.zzb.zzb());
    }
}
