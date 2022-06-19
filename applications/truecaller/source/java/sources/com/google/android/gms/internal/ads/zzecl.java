package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzecl.class */
public final class zzecl implements zzgla<zzdih<zzfet>> {
    private final zzgln<zzecx> zza;
    private final zzgln<Executor> zzb;

    public zzecl(zzgln<zzecx> zzglnVar, zzgln<Executor> zzglnVar2) {
        this.zza = zzglnVar;
        this.zzb = zzglnVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzgln
    public final /* bridge */ /* synthetic */ Object zzb() {
        zzecx zzb = ((zzecy) this.zza).zzb();
        zzfsn zzfsnVar = zzchg.zza;
        zzgli.zzb(zzfsnVar);
        return new zzdih(zzb, zzfsnVar);
    }
}
