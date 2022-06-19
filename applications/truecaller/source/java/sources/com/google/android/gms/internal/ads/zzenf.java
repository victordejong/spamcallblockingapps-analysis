package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzenf.class */
public final class zzenf implements zzgla<zzena> {
    private final zzgln<zzfsn> zza;
    private final zzgln<zzdtf> zzb;
    private final zzgln<zzdxk> zzc;
    private final zzgln<zzenc> zzd;

    public zzenf(zzgln<zzfsn> zzglnVar, zzgln<zzdtf> zzglnVar2, zzgln<zzdxk> zzglnVar3, zzgln<zzenc> zzglnVar4) {
        this.zza = zzglnVar;
        this.zzb = zzglnVar2;
        this.zzc = zzglnVar3;
        this.zzd = zzglnVar4;
    }

    @Override // com.google.android.gms.internal.ads.zzgln
    public final /* bridge */ /* synthetic */ Object zzb() {
        zzfsn zzfsnVar = zzchg.zza;
        zzgli.zzb(zzfsnVar);
        return new zzena(zzfsnVar, this.zzb.zzb(), this.zzc.zzb(), this.zzd.zzb());
    }
}
