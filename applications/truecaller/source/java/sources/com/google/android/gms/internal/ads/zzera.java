package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.ScheduledExecutorService;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzera.class */
public final class zzera implements zzgla<zzeqy> {
    private final zzgln<zzfsn> zza;
    private final zzgln<ScheduledExecutorService> zzb;
    private final zzgln<String> zzc;
    private final zzgln<zzeke> zzd;
    private final zzgln<Context> zze;
    private final zzgln<zzfar> zzf;
    private final zzgln<zzejz> zzg;
    private final zzgln<zzdtf> zzh;

    public zzera(zzgln<zzfsn> zzglnVar, zzgln<ScheduledExecutorService> zzglnVar2, zzgln<String> zzglnVar3, zzgln<zzeke> zzglnVar4, zzgln<Context> zzglnVar5, zzgln<zzfar> zzglnVar6, zzgln<zzejz> zzglnVar7, zzgln<zzdtf> zzglnVar8) {
        this.zza = zzglnVar;
        this.zzb = zzglnVar2;
        this.zzc = zzglnVar3;
        this.zzd = zzglnVar4;
        this.zze = zzglnVar5;
        this.zzf = zzglnVar6;
        this.zzg = zzglnVar7;
        this.zzh = zzglnVar8;
    }

    @Override // com.google.android.gms.internal.ads.zzgln
    public final /* bridge */ /* synthetic */ Object zzb() {
        zzfsn zzfsnVar = zzchg.zza;
        zzgli.zzb(zzfsnVar);
        return new zzeqy(zzfsnVar, this.zzb.zzb(), this.zzc.zzb(), this.zzd.zzb(), this.zze.zzb(), ((zzdat) this.zzf).zza(), this.zzg.zzb(), this.zzh.zzb());
    }
}
