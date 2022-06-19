package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzemq.class */
public final class zzemq implements zzgla<zzemp> {
    private final zzgln<zzfsm<String>> zza;
    private final zzgln<Executor> zzb;

    public zzemq(zzgln<zzfsm<String>> zzglnVar, zzgln<Executor> zzglnVar2) {
        this.zza = zzglnVar;
        this.zzb = zzglnVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzgln
    public final /* bridge */ /* synthetic */ Object zzb() {
        zzfsm<String> zzb = this.zza.zzb();
        zzfsn zzfsnVar = zzchg.zza;
        zzgli.zzb(zzfsnVar);
        return new zzemp(zzb, zzfsnVar);
    }
}
