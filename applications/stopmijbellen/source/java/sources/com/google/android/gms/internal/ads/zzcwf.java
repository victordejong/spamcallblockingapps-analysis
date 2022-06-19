package com.google.android.gms.internal.ads;

import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcwf.class */
final class zzcwf implements zzcvs {
    private final zzcgk zza;

    public zzcwf(zzcgk zzcgkVar) {
        this.zza = zzcgkVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcvs
    public final void zza(JSONObject jSONObject) {
        this.zza.zzb(jSONObject.optBoolean("npa_reset") ? true : jSONObject.optBoolean("npa") ? 1 : 0, jSONObject.optLong("timestamp"));
    }
}
