package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.zzd;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdgr.class */
public final class zzdgr implements zzdfj<JSONObject> {
    private JSONObject zzhej;

    public zzdgr(JSONObject jSONObject) {
        this.zzhej = jSONObject;
    }

    @Override // com.google.android.gms.internal.ads.zzdfj
    public final /* synthetic */ void zzr(JSONObject jSONObject) {
        try {
            jSONObject.put("cache_state", this.zzhej);
        } catch (JSONException e) {
            zzd.zzeb("Unable to get cache_state");
        }
    }
}
