package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzesp.class */
public final class zzesp implements zzgla<zzesn> {
    private final zzgln<zzcfw> zza;
    private final zzgln<Context> zzb;
    private final zzgln<ScheduledExecutorService> zzc;
    private final zzgln<Executor> zzd;
    private final zzgln<Integer> zze;

    public zzesp(zzgln<zzcfw> zzglnVar, zzgln<Context> zzglnVar2, zzgln<ScheduledExecutorService> zzglnVar3, zzgln<Executor> zzglnVar4, zzgln<Integer> zzglnVar5) {
        this.zza = zzglnVar;
        this.zzb = zzglnVar2;
        this.zzc = zzglnVar3;
        this.zzd = zzglnVar4;
        this.zze = zzglnVar5;
    }

    @Override // com.google.android.gms.internal.ads.zzgln
    public final /* bridge */ /* synthetic */ Object zzb() {
        zzcfw zzcfwVar = new zzcfw();
        Context zza = ((zzcoo) this.zzb).zza();
        ScheduledExecutorService zzb = this.zzc.zzb();
        zzfsn zzfsnVar = zzchg.zza;
        zzgli.zzb(zzfsnVar);
        return new zzesn(zzcfwVar, zza, zzb, zzfsnVar, ((zzetz) this.zze).zzb().intValue(), null);
    }
}
