package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdvq.class */
public final class zzdvq implements zzgla<zzdvn> {
    private final zzgln<Executor> zza;
    private final zzgln<zzcgy> zzb;
    private final zzgln<zzffk> zzc;
    private final zzgln<zzffm> zzd;

    public zzdvq(zzgln<Executor> zzglnVar, zzgln<zzcgy> zzglnVar2, zzgln<zzffk> zzglnVar3, zzgln<zzffm> zzglnVar4) {
        this.zza = zzglnVar;
        this.zzb = zzglnVar2;
        this.zzc = zzglnVar3;
        this.zzd = zzglnVar4;
    }

    @Override // com.google.android.gms.internal.ads.zzgln
    public final /* bridge */ /* synthetic */ Object zzb() {
        zzfsn zzfsnVar = zzchg.zza;
        zzgli.zzb(zzfsnVar);
        return new zzdvn(zzfsnVar, this.zzb.zzb(), ((zzffl) this.zzc).zzb(), new zzffm());
    }
}
