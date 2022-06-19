package com.google.android.gms.internal.ads;

import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcby.class */
public final class zzcby {
    public final boolean zza;
    public final String zzb;

    public zzcby(boolean z, String str) {
        this.zza = z;
        this.zzb = str;
    }

    public static zzcby zza(JSONObject jSONObject) {
        return new zzcby(jSONObject.optBoolean("enable_prewarming", false), jSONObject.optString("prefetch_url", ""));
    }
}
