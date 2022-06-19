package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdvb.class */
public final class zzdvb implements zzgla<zzdih<zzfet>> {
    private final zzgln<zzdvl> zza;
    private final zzgln<Executor> zzb;
    private final zzgln<zzech> zzc;

    public zzdvb(zzgln<zzdvl> zzglnVar, zzgln<Executor> zzglnVar2, zzgln<zzech> zzglnVar3) {
        this.zza = zzglnVar;
        this.zzb = zzglnVar2;
        this.zzc = zzglnVar3;
    }

    @Override // com.google.android.gms.internal.ads.zzgln
    public final /* bridge */ /* synthetic */ Object zzb() {
        zzdvl zzb = this.zza.zzb();
        zzfsn zzfsnVar = zzchg.zza;
        zzgli.zzb(zzfsnVar);
        return ((Boolean) zzbet.zzc().zzc(zzbjl.zzgi)).booleanValue() ? new zzdih(this.zzc.zzb(), zzfsnVar) : new zzdih(zzb, zzfsnVar);
    }
}
