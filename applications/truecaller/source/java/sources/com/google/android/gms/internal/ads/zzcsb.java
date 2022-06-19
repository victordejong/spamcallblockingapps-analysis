package com.google.android.gms.internal.ads;

import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcsb.class */
public final class zzcsb implements zzgla<zzcsa> {
    private final zzgln<Map<String, zzcsd>> zza;
    private final zzgln<Map<String, zzcsc>> zzb;

    public zzcsb(zzgln<Map<String, zzcsd>> zzglnVar, zzgln<Map<String, zzcsc>> zzglnVar2) {
        this.zza = zzglnVar;
        this.zzb = zzglnVar2;
    }

    /* renamed from: zza */
    public final zzcsa zzb() {
        return new zzcsa(((zzgle) this.zza).zzb(), ((zzgle) this.zzb).zzb());
    }
}
