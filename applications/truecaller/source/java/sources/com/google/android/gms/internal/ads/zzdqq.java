package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdqq.class */
public final class zzdqq implements zzgla<zzdqp> {
    private final zzgln<Context> zza;
    private final zzgln<zzdmm> zzb;
    private final zzgln<zzdnl> zzc;
    private final zzgln<zzdmh> zzd;

    public zzdqq(zzgln<Context> zzglnVar, zzgln<zzdmm> zzglnVar2, zzgln<zzdnl> zzglnVar3, zzgln<zzdmh> zzglnVar4) {
        this.zza = zzglnVar;
        this.zzb = zzglnVar2;
        this.zzc = zzglnVar3;
        this.zzd = zzglnVar4;
    }

    @Override // com.google.android.gms.internal.ads.zzgln
    public final /* bridge */ /* synthetic */ Object zzb() {
        return new zzdqp(((zzfbv) this.zza).zza(), ((zzdne) this.zzb).zza(), ((zzdnm) this.zzc).zzb(), this.zzd.zzb());
    }
}
