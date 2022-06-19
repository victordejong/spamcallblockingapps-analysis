package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcwu.class */
public final class zzcwu implements zzgla<zzcwp> {
    private final zzgln<zzcxf> zza;
    private final zzgln<zzbny> zzb;
    private final zzgln<Runnable> zzc;
    private final zzgln<Executor> zzd;

    public zzcwu(zzgln<zzcxf> zzglnVar, zzgln<zzbny> zzglnVar2, zzgln<Runnable> zzglnVar3, zzgln<Executor> zzglnVar4) {
        this.zza = zzglnVar;
        this.zzb = zzglnVar2;
        this.zzc = zzglnVar3;
        this.zzd = zzglnVar4;
    }

    @Override // com.google.android.gms.internal.ads.zzgln
    public final /* bridge */ /* synthetic */ Object zzb() {
        return new zzcwp(((zzczb) this.zza).zzb(), ((zzcwt) this.zzb).zza(), ((zzcws) this.zzc).zza(), this.zzd.zzb());
    }
}
