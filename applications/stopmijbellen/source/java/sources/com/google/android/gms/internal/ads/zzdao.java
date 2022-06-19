package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdao.class */
public final class zzdao implements zzgpr<zzdan> {
    private final zzgqe<zzfdn> zza;
    private final zzgqe<zzdfj> zzb;
    private final zzgqe<zzdgo> zzc;

    public zzdao(zzgqe<zzfdn> zzgqeVar, zzgqe<zzdfj> zzgqeVar2, zzgqe<zzdgo> zzgqeVar3) {
        this.zza = zzgqeVar;
        this.zzb = zzgqeVar2;
        this.zzc = zzgqeVar3;
    }

    @Override // com.google.android.gms.internal.ads.zzgqe
    public final /* bridge */ /* synthetic */ Object zzb() {
        return new zzdan(((zzdbl) this.zza).zza(), this.zzb.zzb(), this.zzc.zzb());
    }
}
