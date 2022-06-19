package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.View;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzctg.class */
public final class zzctg implements zzgla<zzctf> {
    private final zzgln<Context> zza;
    private final zzgln<Executor> zzb;
    private final zzgln<Executor> zzc;
    private final zzgln<ScheduledExecutorService> zzd;
    private final zzgln<zzfal> zze;
    private final zzgln<zzezz> zzf;
    private final zzgln<zzffr> zzg;
    private final zzgln<zzfbb> zzh;
    private final zzgln<View> zzi;
    private final zzgln<zzaas> zzj;
    private final zzgln<zzbkk> zzk;
    private final zzgln<zzbkm> zzl;

    public zzctg(zzgln<Context> zzglnVar, zzgln<Executor> zzglnVar2, zzgln<Executor> zzglnVar3, zzgln<ScheduledExecutorService> zzglnVar4, zzgln<zzfal> zzglnVar5, zzgln<zzezz> zzglnVar6, zzgln<zzffr> zzglnVar7, zzgln<zzfbb> zzglnVar8, zzgln<View> zzglnVar9, zzgln<zzaas> zzglnVar10, zzgln<zzbkk> zzglnVar11, zzgln<zzbkm> zzglnVar12) {
        this.zza = zzglnVar;
        this.zzb = zzglnVar2;
        this.zzc = zzglnVar3;
        this.zzd = zzglnVar4;
        this.zze = zzglnVar5;
        this.zzf = zzglnVar6;
        this.zzg = zzglnVar7;
        this.zzh = zzglnVar8;
        this.zzi = zzglnVar9;
        this.zzj = zzglnVar10;
        this.zzk = zzglnVar11;
        this.zzl = zzglnVar12;
    }

    @Override // com.google.android.gms.internal.ads.zzgln
    public final /* bridge */ /* synthetic */ Object zzb() {
        Context zza = ((zzfbv) this.zza).zza();
        zzfsn zzfsnVar = zzchg.zza;
        zzgli.zzb(zzfsnVar);
        return new zzctf(zza, zzfsnVar, this.zzc.zzb(), this.zzd.zzb(), ((zzcxz) this.zze).zza(), ((zzcxw) this.zzf).zza(), this.zzg.zzb(), this.zzh.zzb(), this.zzi.zzb(), this.zzj.zzb(), this.zzk.zzb(), new zzbkm(), null);
    }
}
