package com.google.android.gms.internal.ads;

import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdlq.class */
public final class zzdlq implements zzgla<JSONObject> {
    private final zzdlo zza;

    public zzdlq(zzdlo zzdloVar) {
        this.zza = zzdloVar;
    }

    public final JSONObject zza() {
        JSONObject zza = this.zza.zza();
        zzgli.zzb(zza);
        return zza;
    }

    @Override // com.google.android.gms.internal.ads.zzgln
    public final /* bridge */ /* synthetic */ Object zzb() {
        JSONObject zza = this.zza.zza();
        zzgli.zzb(zza);
        return zza;
    }
}
