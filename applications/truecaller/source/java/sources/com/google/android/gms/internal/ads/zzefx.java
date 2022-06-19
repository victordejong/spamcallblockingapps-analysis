package com.google.android.gms.internal.ads;

import java.util.concurrent.ScheduledExecutorService;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzefx.class */
public final class zzefx implements zzgla<zzefw> {
    private final zzgln<zzcwe> zza;
    private final zzgln<zzefd> zzb;
    private final zzgln<zzdbe> zzc;
    private final zzgln<ScheduledExecutorService> zzd;
    private final zzgln<zzfsn> zze;

    public zzefx(zzgln<zzcwe> zzglnVar, zzgln<zzefd> zzglnVar2, zzgln<zzdbe> zzglnVar3, zzgln<ScheduledExecutorService> zzglnVar4, zzgln<zzfsn> zzglnVar5) {
        this.zza = zzglnVar;
        this.zzb = zzglnVar2;
        this.zzc = zzglnVar3;
        this.zzd = zzglnVar4;
        this.zze = zzglnVar5;
    }

    /* renamed from: zza */
    public final zzefw zzb() {
        zzcwe zzb = this.zza.zzb();
        zzefd zzb2 = ((zzefe) this.zzb).zzb();
        zzdbe zzb3 = this.zzc.zzb();
        ScheduledExecutorService zzb4 = this.zzd.zzb();
        zzfsn zzfsnVar = zzchg.zza;
        zzgli.zzb(zzfsnVar);
        return new zzefw(zzb, zzb2, zzb3, zzb4, zzfsnVar);
    }
}
