package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzehd.class */
public final class zzehd implements zzgla<zzehc> {
    private final zzgln<Context> zza;
    private final zzgln<zzdlb> zzb;
    private final zzgln<zzcgz> zzc;

    public zzehd(zzgln<Context> zzglnVar, zzgln<zzdlb> zzglnVar2, zzgln<zzcgz> zzglnVar3) {
        this.zza = zzglnVar;
        this.zzb = zzglnVar2;
        this.zzc = zzglnVar3;
    }

    @Override // com.google.android.gms.internal.ads.zzgln
    public final /* bridge */ /* synthetic */ Object zzb() {
        return new zzehc(this.zza.zzb(), this.zzb.zzb(), ((zzcox) this.zzc).zza());
    }
}
