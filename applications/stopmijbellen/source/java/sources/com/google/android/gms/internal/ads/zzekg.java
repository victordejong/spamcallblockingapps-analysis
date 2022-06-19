package com.google.android.gms.internal.ads;

import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzekg.class */
public final class zzekg implements zzehv<zzfev, zzejp> {
    private final zzdww zza;

    public zzekg(zzdww zzdwwVar) {
        this.zza = zzdwwVar;
    }

    @Override // com.google.android.gms.internal.ads.zzehv
    public final zzehw<zzfev, zzejp> zza(String str, JSONObject jSONObject) throws zzfek {
        return new zzehw<>(this.zza.zzb(str, jSONObject), new zzejp(), str);
    }
}
