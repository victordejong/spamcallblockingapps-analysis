package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.ScheduledExecutorService;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzerh.class */
public final class zzerh implements zzgla<zzerf> {
    private final zzgln<zzfsn> zza;
    private final zzgln<ScheduledExecutorService> zzb;
    private final zzgln<String> zzc;
    private final zzgln<Context> zzd;
    private final zzgln<zzfar> zze;
    private final zzgln<zzcoj> zzf;

    public zzerh(zzgln<zzfsn> zzglnVar, zzgln<ScheduledExecutorService> zzglnVar2, zzgln<String> zzglnVar3, zzgln<Context> zzglnVar4, zzgln<zzfar> zzglnVar5, zzgln<zzcoj> zzglnVar6) {
        this.zza = zzglnVar;
        this.zzb = zzglnVar2;
        this.zzc = zzglnVar3;
        this.zzd = zzglnVar4;
        this.zze = zzglnVar5;
        this.zzf = zzglnVar6;
    }

    @Override // com.google.android.gms.internal.ads.zzgln
    public final /* bridge */ /* synthetic */ Object zzb() {
        zzfsn zzfsnVar = zzchg.zza;
        zzgli.zzb(zzfsnVar);
        return new zzerf(zzfsnVar, this.zzb.zzb(), this.zzc.zzb(), this.zzd.zzb(), ((zzdat) this.zze).zza(), this.zzf.zzb());
    }
}
