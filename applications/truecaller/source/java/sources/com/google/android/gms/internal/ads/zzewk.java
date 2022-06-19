package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzewk.class */
public final class zzewk implements zzgla<zzewj> {
    private final zzgln<Context> zza;
    private final zzgln<Executor> zzb;
    private final zzgln<zzbdl> zzc;
    private final zzgln<zzcoj> zzd;
    private final zzgln<zzeli> zze;
    private final zzgln<zzelm> zzf;
    private final zzgln<zzfap> zzg;

    public zzewk(zzgln<Context> zzglnVar, zzgln<Executor> zzglnVar2, zzgln<zzbdl> zzglnVar3, zzgln<zzcoj> zzglnVar4, zzgln<zzeli> zzglnVar5, zzgln<zzelm> zzglnVar6, zzgln<zzfap> zzglnVar7) {
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
        return new zzewj(this.zza.zzb(), this.zzb.zzb(), this.zzc.zzb(), this.zzd.zzb(), this.zze.zzb(), this.zzf.zzb(), new zzfap());
    }
}
