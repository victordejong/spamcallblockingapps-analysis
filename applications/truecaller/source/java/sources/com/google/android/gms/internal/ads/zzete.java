package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzete.class */
public final class zzete implements zzgla<zzetc> {
    private final zzgln<zzcfw> zza;
    private final zzgln<Integer> zzb;
    private final zzgln<Context> zzc;
    private final zzgln<zzcge> zzd;
    private final zzgln<ScheduledExecutorService> zze;
    private final zzgln<Executor> zzf;
    private final zzgln<String> zzg;

    public zzete(zzgln<zzcfw> zzglnVar, zzgln<Integer> zzglnVar2, zzgln<Context> zzglnVar3, zzgln<zzcge> zzglnVar4, zzgln<ScheduledExecutorService> zzglnVar5, zzgln<Executor> zzglnVar6, zzgln<String> zzglnVar7) {
        this.zza = zzglnVar;
        this.zzb = zzglnVar2;
        this.zzc = zzglnVar3;
        this.zzd = zzglnVar4;
        this.zze = zzglnVar5;
        this.zzf = zzglnVar6;
        this.zzg = zzglnVar7;
    }

    @Override // com.google.android.gms.internal.ads.zzgln
    public final /* bridge */ /* synthetic */ Object zzb() {
        zzcfw zzcfwVar = new zzcfw();
        int intValue = ((zzetz) this.zzb).zzb().intValue();
        Context zza = ((zzcoo) this.zzc).zza();
        zzcge zzb = this.zzd.zzb();
        ScheduledExecutorService zzb2 = this.zze.zzb();
        zzfsn zzfsnVar = zzchg.zza;
        zzgli.zzb(zzfsnVar);
        return new zzetc(zzcfwVar, intValue, zza, zzb, zzb2, zzfsnVar, ((zzety) this.zzg).zza(), null);
    }
}
