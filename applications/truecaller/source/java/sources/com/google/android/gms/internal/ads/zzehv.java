package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzehv.class */
public final class zzehv<AdT> implements zzgla<zzehu<AdT>> {
    private final zzgln<zzfes> zza;
    private final zzgln<zzehp> zzb;
    private final zzgln<zzdbe> zzc;
    private final zzgln<zzffr> zzd;
    private final zzgln<zzffu> zze;
    private final zzgln<zzcxj<AdT>> zzf;
    private final zzgln<Executor> zzg;
    private final zzgln<ScheduledExecutorService> zzh;
    private final zzgln<zzeeh> zzi;

    public zzehv(zzgln<zzfes> zzglnVar, zzgln<zzehp> zzglnVar2, zzgln<zzdbe> zzglnVar3, zzgln<zzffr> zzglnVar4, zzgln<zzffu> zzglnVar5, zzgln<zzcxj<AdT>> zzglnVar6, zzgln<Executor> zzglnVar7, zzgln<ScheduledExecutorService> zzglnVar8, zzgln<zzeeh> zzglnVar9) {
        this.zza = zzglnVar;
        this.zzb = zzglnVar2;
        this.zzc = zzglnVar3;
        this.zzd = zzglnVar4;
        this.zze = zzglnVar5;
        this.zzf = zzglnVar6;
        this.zzg = zzglnVar7;
        this.zzh = zzglnVar8;
        this.zzi = zzglnVar9;
    }

    /* renamed from: zza */
    public final zzehu<AdT> zzb() {
        zzfes zzb = this.zza.zzb();
        zzehp zzb2 = this.zzb.zzb();
        zzdbe zzb3 = this.zzc.zzb();
        zzffr zzb4 = this.zzd.zzb();
        zzffu zzb5 = this.zze.zzb();
        zzcxj<AdT> zzb6 = this.zzf.zzb();
        zzfsn zzfsnVar = zzchg.zza;
        zzgli.zzb(zzfsnVar);
        return new zzehu<>(zzb, zzb2, zzb3, zzb4, zzb5, zzb6, zzfsnVar, this.zzh.zzb(), this.zzi.zzb());
    }
}
