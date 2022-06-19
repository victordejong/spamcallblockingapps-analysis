package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzeeq.class */
public final class zzeeq implements zzgla<zzeep> {
    private final zzgln<zzcuv> zza;
    private final zzgln<Context> zzb;
    private final zzgln<Executor> zzc;
    private final zzgln<zzdss> zzd;
    private final zzgln<zzfar> zze;
    private final zzgln<zzcgz> zzf;
    private final zzgln<zzbpu> zzg;

    public zzeeq(zzgln<zzcuv> zzglnVar, zzgln<Context> zzglnVar2, zzgln<Executor> zzglnVar3, zzgln<zzdss> zzglnVar4, zzgln<zzfar> zzglnVar5, zzgln<zzcgz> zzglnVar6, zzgln<zzbpu> zzglnVar7) {
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
        return new zzeep(this.zza.zzb(), this.zzb.zzb(), this.zzc.zzb(), this.zzd.zzb(), ((zzdat) this.zze).zza(), ((zzcox) this.zzf).zza(), new zzbpu());
    }
}
