package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.zze;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzeth.class */
public final class zzeth implements zzerx<JSONObject> {
    private final JSONObject zza;

    public zzeth(JSONObject jSONObject) {
        this.zza = jSONObject;
    }

    @Override // com.google.android.gms.internal.ads.zzerx
    public final /* bridge */ /* synthetic */ void zzf(JSONObject jSONObject) {
        try {
            jSONObject.put("cache_state", this.zza);
        } catch (JSONException e) {
            zze.zza("Unable to get cache_state");
        }
    }
}
