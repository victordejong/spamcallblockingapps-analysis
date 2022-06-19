package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.Clock;
import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzctr.class */
public final class zzctr implements zzgla<zzctq> {
    private final zzgln<zzbup> zza;
    private final zzgln<zzctm> zzb;
    private final zzgln<Executor> zzc;
    private final zzgln<zzctl> zzd;
    private final zzgln<Clock> zze;

    public zzctr(zzgln<zzbup> zzglnVar, zzgln<zzctm> zzglnVar2, zzgln<Executor> zzglnVar3, zzgln<zzctl> zzglnVar4, zzgln<Clock> zzglnVar5) {
        this.zza = zzglnVar;
        this.zzb = zzglnVar2;
        this.zzc = zzglnVar3;
        this.zzd = zzglnVar4;
        this.zze = zzglnVar5;
    }

    @Override // com.google.android.gms.internal.ads.zzgln
    public final /* bridge */ /* synthetic */ Object zzb() {
        return new zzctq(this.zza.zzb(), this.zzb.zzb(), this.zzc.zzb(), this.zzd.zzb(), this.zze.zzb());
    }
}
