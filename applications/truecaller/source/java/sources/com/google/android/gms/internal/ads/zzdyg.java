package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdyg.class */
public final class zzdyg implements zzgla<zzdyj> {
    private final zzgln<Context> zza;
    private final zzgln<zzcgz> zzb;

    public zzdyg(zzgln<Context> zzglnVar, zzgln<zzcgz> zzglnVar2) {
        this.zza = zzglnVar;
        this.zzb = zzglnVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzgln
    public final /* bridge */ /* synthetic */ Object zzb() {
        return new zzdyj(((zzcoo) this.zza).zza(), ((zzcox) this.zzb).zza());
    }
}
