package com.google.android.gms.internal.ads;

import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdaz.class */
public final class zzdaz<AdT> implements zzgpr<zzdax<AdT>> {
    private final zzgqe<Map<String, zzeht<AdT>>> zza;

    public zzdaz(zzgqe<Map<String, zzeht<AdT>>> zzgqeVar) {
        this.zza = zzgqeVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgqe
    public final /* bridge */ /* synthetic */ Object zzb() {
        return new zzdax(((zzgpv) this.zza).zzb());
    }
}
