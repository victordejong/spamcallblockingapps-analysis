package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdud.class */
public final class zzdud implements zzgpr<zzduc> {
    private final zzgqe<String> zza;
    private final zzgqe<zzdpx> zzb;
    private final zzgqe<zzdqc> zzc;

    public zzdud(zzgqe<String> zzgqeVar, zzgqe<zzdpx> zzgqeVar2, zzgqe<zzdqc> zzgqeVar3) {
        this.zza = zzgqeVar;
        this.zzb = zzgqeVar2;
        this.zzc = zzgqeVar3;
    }

    @Override // com.google.android.gms.internal.ads.zzgqe
    public final /* bridge */ /* synthetic */ Object zzb() {
        return new zzduc(((zzdbm) this.zza).zza(), this.zzb.zzb(), ((zzdqu) this.zzc).zza());
    }
}
