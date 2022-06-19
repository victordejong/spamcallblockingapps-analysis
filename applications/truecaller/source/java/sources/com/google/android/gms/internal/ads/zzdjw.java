package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdjw.class */
public final class zzdjw implements zzgla<zzdih<zzdbc>> {
    private final zzdjm zza;
    private final zzgln<zzdks> zzb;
    private final zzgln<Executor> zzc;

    public zzdjw(zzdjm zzdjmVar, zzgln<zzdks> zzglnVar, zzgln<Executor> zzglnVar2) {
        this.zza = zzdjmVar;
        this.zzb = zzglnVar;
        this.zzc = zzglnVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzgln
    public final /* bridge */ /* synthetic */ Object zzb() {
        zzdks zzb = this.zzb.zzb();
        zzfsn zzfsnVar = zzchg.zza;
        zzgli.zzb(zzfsnVar);
        return new zzdih(zzb, zzfsnVar);
    }
}
