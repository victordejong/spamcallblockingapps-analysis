package com.google.android.gms.internal.ads;

import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcsq.class */
public final class zzcsq implements zzcsd {
    private final zzced zza;

    public zzcsq(zzced zzcedVar) {
        this.zza = zzcedVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcsd
    public final void zza(JSONObject jSONObject) {
        this.zza.zzd(jSONObject.optBoolean("npa_reset") ? true : jSONObject.optBoolean("npa") ? 1 : 0, jSONObject.optLong("timestamp"));
    }
}
