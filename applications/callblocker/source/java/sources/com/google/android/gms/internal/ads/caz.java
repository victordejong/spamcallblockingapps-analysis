package com.google.android.gms.internal.ads;

import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/caz.class */
public final class caz implements cae<JSONObject> {

    /* renamed from: a */
    private final String f12651a;

    public caz(String str) {
        this.f12651a = str;
    }

    @Override // com.google.android.gms.internal.ads.cae
    /* renamed from: a */
    public final /* synthetic */ void mo11481a(JSONObject jSONObject) {
        try {
            jSONObject.put("ms", this.f12651a);
        } catch (JSONException e) {
            C3556uu.m7051a("Failed putting Ad ID.", e);
        }
    }
}
