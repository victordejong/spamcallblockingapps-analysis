package com.google.android.gms.internal.ads;

import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdmt.class */
public final class zzdmt implements zzgla<zzdmq> {
    private final zzgln<zzezz> zza;
    private final zzgln<JSONObject> zzb;

    public zzdmt(zzgln<zzezz> zzglnVar, zzgln<JSONObject> zzglnVar2) {
        this.zza = zzglnVar;
        this.zzb = zzglnVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzgln
    public final /* bridge */ /* synthetic */ Object zzb() {
        return new zzdmq(((zzcxw) this.zza).zza(), ((zzdlq) this.zzb).zza());
    }
}
