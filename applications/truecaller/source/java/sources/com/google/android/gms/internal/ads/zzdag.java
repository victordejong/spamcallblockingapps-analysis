package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdag.class */
public final class zzdag implements zzgla<zzdaf> {
    private final zzgln<Context> zza;
    private final zzgln<zzezz> zzb;
    private final zzgln<zzbzv> zzc;

    public zzdag(zzgln<Context> zzglnVar, zzgln<zzezz> zzglnVar2, zzgln<zzbzv> zzglnVar3) {
        this.zza = zzglnVar;
        this.zzb = zzglnVar2;
        this.zzc = zzglnVar3;
    }

    @Override // com.google.android.gms.internal.ads.zzgln
    public final /* bridge */ /* synthetic */ Object zzb() {
        return new zzdaf(this.zza.zzb(), ((zzcxw) this.zzb).zza(), new zzbzv(), null);
    }
}
