package com.google.android.gms.internal.ads;

import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcxk.class */
public final class zzcxk<AdT> implements zzgla<zzcxi<AdT>> {
    private final zzgln<Map<String, zzeec<AdT>>> zza;

    public zzcxk(zzgln<Map<String, zzeec<AdT>>> zzglnVar) {
        this.zza = zzglnVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgln
    public final /* bridge */ /* synthetic */ Object zzb() {
        return new zzcxi(((zzgle) this.zza).zzb());
    }
}
