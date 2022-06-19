package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdkp.class */
public final class zzdkp implements zzgla<zzdko> {
    private final zzgln<Context> zza;
    private final zzgln<zzcml> zzb;
    private final zzgln<zzezz> zzc;
    private final zzgln<zzcgz> zzd;
    private final zzgln<zzazj> zze;

    public zzdkp(zzgln<Context> zzglnVar, zzgln<zzcml> zzglnVar2, zzgln<zzezz> zzglnVar3, zzgln<zzcgz> zzglnVar4, zzgln<zzazj> zzglnVar5) {
        this.zza = zzglnVar;
        this.zzb = zzglnVar2;
        this.zzc = zzglnVar3;
        this.zzd = zzglnVar4;
        this.zze = zzglnVar5;
    }

    @Override // com.google.android.gms.internal.ads.zzgln
    public final /* bridge */ /* synthetic */ Object zzb() {
        return new zzdko(((zzfbv) this.zza).zza(), ((zzdka) this.zzb).zza(), ((zzcxw) this.zzc).zza(), ((zzcox) this.zzd).zza(), this.zze.zzb());
    }
}
