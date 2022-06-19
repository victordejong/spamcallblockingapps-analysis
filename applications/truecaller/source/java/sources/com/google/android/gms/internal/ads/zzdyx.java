package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdyx.class */
public final class zzdyx implements zzgla<zzdih<zzddx>> {
    private final zzgln<zzeai> zza;
    private final zzgln<Executor> zzb;

    public zzdyx(zzgln<zzeai> zzglnVar, zzgln<Executor> zzglnVar2) {
        this.zza = zzglnVar;
        this.zzb = zzglnVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzgln
    public final /* bridge */ /* synthetic */ Object zzb() {
        zzeai zzb = ((zzeaj) this.zza).zzb();
        zzfsn zzfsnVar = zzchg.zza;
        zzgli.zzb(zzfsnVar);
        return new zzdih(zzb, zzfsnVar);
    }
}
