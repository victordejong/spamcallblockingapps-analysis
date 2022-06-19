package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.common.util.Clock;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzffs.class */
public final class zzffs implements zzgla<zzffr> {
    private final zzgln<zzehp> zza;
    private final zzgln<zzcgz> zzb;
    private final zzgln<String> zzc;
    private final zzgln<String> zzd;
    private final zzgln<Context> zze;
    private final zzgln<zzfam> zzf;
    private final zzgln<Clock> zzg;
    private final zzgln<zzaas> zzh;

    public zzffs(zzgln<zzehp> zzglnVar, zzgln<zzcgz> zzglnVar2, zzgln<String> zzglnVar3, zzgln<String> zzglnVar4, zzgln<Context> zzglnVar5, zzgln<zzfam> zzglnVar6, zzgln<Clock> zzglnVar7, zzgln<zzaas> zzglnVar8) {
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
        return new zzffr(this.zza.zzb(), ((zzcox) this.zzb).zza(), ((zzdar) this.zzc).zzb(), this.zzd.zzb(), this.zze.zzb(), ((zzdas) this.zzf).zza(), this.zzg.zzb(), this.zzh.zzb());
    }
}
