package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.zzd;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cih.class */
public final class cih implements cgy<JSONObject> {

    /* renamed from: a */
    private JSONObject f45849a;

    public cih(JSONObject jSONObject) {
        this.f45849a = jSONObject;
    }

    @Override // com.google.android.gms.internal.ads.cgy
    /* renamed from: a */
    public final /* synthetic */ void mo17450a(JSONObject jSONObject) {
        try {
            jSONObject.put("cache_state", this.f45849a);
        } catch (JSONException e) {
            zzd.zzed("Unable to get cache_state");
        }
    }
}
