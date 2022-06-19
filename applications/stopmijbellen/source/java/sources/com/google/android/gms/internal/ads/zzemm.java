package com.google.android.gms.internal.ads;

import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzemm.class */
public final class zzemm implements zzehv<zzbzo, zzejp> {
    private final zzenq zza;

    public zzemm(zzenq zzenqVar) {
        this.zza = zzenqVar;
    }

    @Override // com.google.android.gms.internal.ads.zzehv
    public final zzehw<zzbzo, zzejp> zza(String str, JSONObject jSONObject) throws zzfek {
        zzbzo zza = this.zza.zza(str);
        if (zza == null) {
            return null;
        }
        return new zzehw<>(zza, new zzejp(), str);
    }
}
