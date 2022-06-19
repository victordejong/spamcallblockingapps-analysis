package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.zze;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzeww.class */
public final class zzeww implements zzevm<JSONObject> {
    private final JSONObject zza;

    public zzeww(JSONObject jSONObject) {
        this.zza = jSONObject;
    }

    @Override // com.google.android.gms.internal.ads.zzevm
    public final /* bridge */ /* synthetic */ void zza(JSONObject jSONObject) {
        try {
            jSONObject.put("cache_state", this.zza);
        } catch (JSONException e) {
            zze.zza("Unable to get cache_state");
        }
    }
}
