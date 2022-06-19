package com.google.android.gms.internal.ads;

import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cbn.class */
public final class cbn implements cae<JSONObject> {

    /* renamed from: a */
    private JSONObject f12678a;

    public cbn(JSONObject jSONObject) {
        this.f12678a = jSONObject;
    }

    @Override // com.google.android.gms.internal.ads.cae
    /* renamed from: a */
    public final /* synthetic */ void mo11481a(JSONObject jSONObject) {
        try {
            jSONObject.put("cache_state", this.f12678a);
        } catch (JSONException e) {
            C3556uu.m7052a("Unable to get cache_state");
        }
    }
}
