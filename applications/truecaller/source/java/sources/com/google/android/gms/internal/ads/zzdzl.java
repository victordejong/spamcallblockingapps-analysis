package com.google.android.gms.internal.ads;

import java.util.concurrent.ScheduledExecutorService;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdzl.class */
public final class zzdzl implements zzgla<zzdzk> {
    private final zzgln<ScheduledExecutorService> zza;
    private final zzgln<zzfsn> zzb;
    private final zzgln<zzeac> zzc;
    private final zzgln<zzebq> zzd;

    public zzdzl(zzgln<ScheduledExecutorService> zzglnVar, zzgln<zzfsn> zzglnVar2, zzgln<zzeac> zzglnVar3, zzgln<zzebq> zzglnVar4) {
        this.zza = zzglnVar;
        this.zzb = zzglnVar2;
        this.zzc = zzglnVar3;
        this.zzd = zzglnVar4;
    }

    /* renamed from: zza */
    public final zzdzk zzb() {
        ScheduledExecutorService zzb = this.zza.zzb();
        zzfsn zzfsnVar = zzchg.zza;
        zzgli.zzb(zzfsnVar);
        return new zzdzk(zzb, zzfsnVar, ((zzead) this.zzc).zzb(), zzgkz.zzc(this.zzd));
    }
}
