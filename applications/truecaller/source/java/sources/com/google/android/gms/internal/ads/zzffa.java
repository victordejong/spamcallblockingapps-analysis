package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzffa.class */
public final class zzffa implements zzgla<zzfez> {
    private final zzgln<Executor> zza;
    private final zzgln<zzcgy> zzb;

    public zzffa(zzgln<Executor> zzglnVar, zzgln<zzcgy> zzglnVar2) {
        this.zza = zzglnVar;
        this.zzb = zzglnVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzgln
    public final /* bridge */ /* synthetic */ Object zzb() {
        zzfsn zzfsnVar = zzchg.zza;
        zzgli.zzb(zzfsnVar);
        return new zzfez(zzfsnVar, this.zzb.zzb());
    }
}
