package com.google.android.gms.internal.ads;

import android.content.Context;
import java.lang.ref.WeakReference;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdxl.class */
public final class zzdxl implements zzgla<zzdxk> {
    private final zzgln<Executor> zza;
    private final zzgln<Context> zzb;
    private final zzgln<WeakReference<Context>> zzc;
    private final zzgln<Executor> zzd;
    private final zzgln<zzdtf> zze;
    private final zzgln<ScheduledExecutorService> zzf;
    private final zzgln<zzdvr> zzg;
    private final zzgln<zzcgz> zzh;
    private final zzgln<zzdht> zzi;

    public zzdxl(zzgln<Executor> zzglnVar, zzgln<Context> zzglnVar2, zzgln<WeakReference<Context>> zzglnVar3, zzgln<Executor> zzglnVar4, zzgln<zzdtf> zzglnVar5, zzgln<ScheduledExecutorService> zzglnVar6, zzgln<zzdvr> zzglnVar7, zzgln<zzcgz> zzglnVar8, zzgln<zzdht> zzglnVar9) {
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

    @Override // com.google.android.gms.internal.ads.zzgln
    public final /* bridge */ /* synthetic */ Object zzb() {
        Executor zzb = this.zza.zzb();
        Context zza = ((zzcoo) this.zzb).zza();
        WeakReference<Context> zza2 = ((zzcop) this.zzc).zza();
        zzfsn zzfsnVar = zzchg.zza;
        zzgli.zzb(zzfsnVar);
        return new zzdxk(zzb, zza, zza2, zzfsnVar, this.zze.zzb(), this.zzf.zzb(), this.zzg.zzb(), ((zzcox) this.zzh).zza(), ((zzdhu) this.zzi).zzb());
    }
}
