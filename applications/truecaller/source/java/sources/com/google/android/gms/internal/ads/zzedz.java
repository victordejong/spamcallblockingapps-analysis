package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzedz.class */
public final class zzedz implements zzgla<zzedy> {
    private final zzgln<Context> zza;
    private final zzgln<zzedq> zzb;
    private final zzgln<zzcgy> zzc;
    private final zzgln<zzdvi> zzd;
    private final zzgln<zzffc> zze;

    public zzedz(zzgln<Context> zzglnVar, zzgln<zzedq> zzglnVar2, zzgln<zzcgy> zzglnVar3, zzgln<zzdvi> zzglnVar4, zzgln<zzffc> zzglnVar5) {
        this.zza = zzglnVar;
        this.zzb = zzglnVar2;
        this.zzc = zzglnVar3;
        this.zzd = zzglnVar4;
        this.zze = zzglnVar5;
    }

    @Override // com.google.android.gms.internal.ads.zzgln
    public final /* bridge */ /* synthetic */ Object zzb() {
        return new zzedy(((zzcoo) this.zza).zza(), this.zzb.zzb(), this.zzc.zzb(), this.zzd.zzb(), this.zze.zzb());
    }
}
