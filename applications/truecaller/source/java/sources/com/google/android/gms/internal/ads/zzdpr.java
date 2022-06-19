package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdpr.class */
public final class zzdpr implements zzgla<zzdpq> {
    private final zzgln<Executor> zza;
    private final zzgln<zzdpl> zzb;

    public zzdpr(zzgln<Executor> zzglnVar, zzgln<zzdpl> zzglnVar2) {
        this.zza = zzglnVar;
        this.zzb = zzglnVar2;
    }

    /* renamed from: zza */
    public final zzdpq zzb() {
        zzfsn zzfsnVar = zzchg.zza;
        zzgli.zzb(zzfsnVar);
        return new zzdpq(zzfsnVar, ((zzdpm) this.zzb).zzb());
    }
}
