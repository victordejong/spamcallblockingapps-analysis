package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzenn.class */
public final class zzenn implements zzgla<zzenm> {
    private final zzgln<Executor> zza;
    private final zzgln<zzcge> zzb;

    public zzenn(zzgln<Executor> zzglnVar, zzgln<zzcge> zzglnVar2) {
        this.zza = zzglnVar;
        this.zzb = zzglnVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzgln
    public final /* bridge */ /* synthetic */ Object zzb() {
        zzfsn zzfsnVar = zzchg.zza;
        zzgli.zzb(zzfsnVar);
        return new zzenm(zzfsnVar, this.zzb.zzb());
    }
}
