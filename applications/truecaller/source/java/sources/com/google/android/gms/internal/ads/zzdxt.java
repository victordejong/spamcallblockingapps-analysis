package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdxt.class */
public final class zzdxt implements zzgla<zzdih<zzdbf>> {
    private final zzgln<zzdxq> zza;
    private final zzgln<Executor> zzb;

    public zzdxt(zzgln<zzdxq> zzglnVar, zzgln<Executor> zzglnVar2) {
        this.zza = zzglnVar;
        this.zzb = zzglnVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzgln
    public final /* bridge */ /* synthetic */ Object zzb() {
        zzdxq zzb = this.zza.zzb();
        zzfsn zzfsnVar = zzchg.zza;
        zzgli.zzb(zzfsnVar);
        return new zzdih(zzb, zzfsnVar);
    }
}
