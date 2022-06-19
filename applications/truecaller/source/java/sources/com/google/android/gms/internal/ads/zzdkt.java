package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.View;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdkt.class */
public final class zzdkt implements zzgla<zzdks> {
    private final zzgln<zzcei> zza;
    private final zzgln<Context> zzb;
    private final zzgln<zzcfa> zzc;
    private final zzgln<View> zzd;
    private final zzgln<zzazj> zze;

    public zzdkt(zzgln<zzcei> zzglnVar, zzgln<Context> zzglnVar2, zzgln<zzcfa> zzglnVar3, zzgln<View> zzglnVar4, zzgln<zzazj> zzglnVar5) {
        this.zza = zzglnVar;
        this.zzb = zzglnVar2;
        this.zzc = zzglnVar3;
        this.zzd = zzglnVar4;
        this.zze = zzglnVar5;
    }

    @Override // com.google.android.gms.internal.ads.zzgln
    public final /* bridge */ /* synthetic */ Object zzb() {
        return new zzdks(((zzdjv) this.zza).zzb(), ((zzfbv) this.zzb).zza(), this.zzc.zzb(), ((zzdjo) this.zzd).zza(), this.zze.zzb());
    }
}
