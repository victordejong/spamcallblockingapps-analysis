package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzduz.class */
public final class zzduz implements zzgla<zzdih<zzdbf>> {
    private final zzgln<zzduv> zza;
    private final zzgln<Executor> zzb;
    private final zzgln<zzeca> zzc;

    public zzduz(zzgln<zzduv> zzglnVar, zzgln<Executor> zzglnVar2, zzgln<zzeca> zzglnVar3) {
        this.zza = zzglnVar;
        this.zzb = zzglnVar2;
        this.zzc = zzglnVar3;
    }

    @Override // com.google.android.gms.internal.ads.zzgln
    public final /* bridge */ /* synthetic */ Object zzb() {
        zzduv zzb = this.zza.zzb();
        zzfsn zzfsnVar = zzchg.zza;
        zzgli.zzb(zzfsnVar);
        return ((Boolean) zzbet.zzc().zzc(zzbjl.zzgi)).booleanValue() ? new zzdih(this.zzc.zzb(), zzfsnVar) : new zzdih(zzb, zzfsnVar);
    }
}
