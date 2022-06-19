package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.C5722o1;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/hc2.class */
public final class hc2 implements va2<JSONObject> {

    /* renamed from: a */
    private final JSONObject f23851a;

    public hc2(JSONObject jSONObject) {
        this.f23851a = jSONObject;
    }

    @Override // com.google.android.gms.internal.ads.va2
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ void mo8928a(JSONObject jSONObject) {
        try {
            jSONObject.put("cache_state", this.f23851a);
        } catch (JSONException e) {
            C5722o1.m17990k("Unable to get cache_state");
        }
    }
}
