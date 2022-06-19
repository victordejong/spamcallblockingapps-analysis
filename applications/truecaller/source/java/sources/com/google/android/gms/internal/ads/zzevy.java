package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzevy.class */
public final class zzevy implements zzgla<zzevx> {
    private final zzgln<Context> zza;
    private final zzgln<Executor> zzb;
    private final zzgln<zzcoj> zzc;
    private final zzgln<zzexo<zzcuv, zzcva>> zzd;
    private final zzgln<zzevv> zze;
    private final zzgln<zzfap> zzf;

    public zzevy(zzgln<Context> zzglnVar, zzgln<Executor> zzglnVar2, zzgln<zzcoj> zzglnVar3, zzgln<zzexo<zzcuv, zzcva>> zzglnVar4, zzgln<zzevv> zzglnVar5, zzgln<zzfap> zzglnVar6) {
        this.zza = zzglnVar;
        this.zzb = zzglnVar2;
        this.zzc = zzglnVar3;
        this.zzd = zzglnVar4;
        this.zze = zzglnVar5;
        this.zzf = zzglnVar6;
    }

    @Override // com.google.android.gms.internal.ads.zzgln
    public final /* bridge */ /* synthetic */ Object zzb() {
        return new zzevx(this.zza.zzb(), this.zzb.zzb(), this.zzc.zzb(), ((zzexr) this.zzd).zzb(), this.zze.zzb(), new zzfap());
    }
}
