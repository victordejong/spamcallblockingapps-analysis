package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzegx.class */
public final class zzegx implements zzgla<zzegw> {
    private final zzgln<zzdlb> zza;
    private final zzgln<zzfsn> zzb;
    private final zzgln<zzdoy> zzc;
    private final zzgln<zzfbj<zzdrh>> zzd;
    private final zzgln<zzdrn> zze;

    public zzegx(zzgln<zzdlb> zzglnVar, zzgln<zzfsn> zzglnVar2, zzgln<zzdoy> zzglnVar3, zzgln<zzfbj<zzdrh>> zzglnVar4, zzgln<zzdrn> zzglnVar5) {
        this.zza = zzglnVar;
        this.zzb = zzglnVar2;
        this.zzc = zzglnVar3;
        this.zzd = zzglnVar4;
        this.zze = zzglnVar5;
    }

    @Override // com.google.android.gms.internal.ads.zzgln
    public final /* bridge */ /* synthetic */ Object zzb() {
        zzdlb zzb = this.zza.zzb();
        zzfsn zzfsnVar = zzchg.zza;
        zzgli.zzb(zzfsnVar);
        return new zzegw(zzb, zzfsnVar, ((zzdoz) this.zzc).zzb(), this.zzd.zzb(), this.zze.zzb());
    }
}
