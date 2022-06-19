package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzeuq.class */
public final class zzeuq implements zzgla<zzeup> {
    private final zzgln<Context> zza;
    private final zzgln<Executor> zzb;
    private final zzgln<zzcoj> zzc;
    private final zzgln<zzexo<zzcuk, zzcuq>> zzd;
    private final zzgln<zzevv> zze;
    private final zzgln<zzfap> zzf;

    public zzeuq(zzgln<Context> zzglnVar, zzgln<Executor> zzglnVar2, zzgln<zzcoj> zzglnVar3, zzgln<zzexo<zzcuk, zzcuq>> zzglnVar4, zzgln<zzevv> zzglnVar5, zzgln<zzfap> zzglnVar6) {
        this.zza = zzglnVar;
        this.zzb = zzglnVar2;
        this.zzc = zzglnVar3;
        this.zzd = zzglnVar4;
        this.zze = zzglnVar5;
        this.zzf = zzglnVar6;
    }

    @Override // com.google.android.gms.internal.ads.zzgln
    public final /* bridge */ /* synthetic */ Object zzb() {
        return new zzeup(this.zza.zzb(), this.zzb.zzb(), this.zzc.zzb(), ((zzexs) this.zzd).zzb(), this.zze.zzb(), new zzfap());
    }
}
