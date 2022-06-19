package com.google.android.gms.internal.ads;

import java.util.concurrent.ScheduledExecutorService;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzfeu.class */
public final class zzfeu implements zzgla<zzfes> {
    private final zzgln<zzfsn> zza;
    private final zzgln<ScheduledExecutorService> zzb;
    private final zzgln<zzfer> zzc;

    public zzfeu(zzgln<zzfsn> zzglnVar, zzgln<ScheduledExecutorService> zzglnVar2, zzgln<zzfer> zzglnVar3) {
        this.zza = zzglnVar;
        this.zzb = zzglnVar2;
        this.zzc = zzglnVar3;
    }

    @Override // com.google.android.gms.internal.ads.zzgln
    public final /* bridge */ /* synthetic */ Object zzb() {
        zzfsn zzfsnVar = zzchg.zza;
        zzgli.zzb(zzfsnVar);
        return new zzfes(zzfsnVar, this.zzb.zzb(), ((zzfev) this.zzc).zzb());
    }
}
