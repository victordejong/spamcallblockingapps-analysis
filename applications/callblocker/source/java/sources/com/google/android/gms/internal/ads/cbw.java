package com.google.android.gms.internal.ads;

import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cbw.class */
public final class cbw implements cae<JSONObject> {

    /* renamed from: a */
    private String f12698a;

    /* renamed from: b */
    private String f12699b;

    public cbw(String str, String str2) {
        this.f12698a = str;
        this.f12699b = str2;
    }

    @Override // com.google.android.gms.internal.ads.cae
    /* renamed from: a */
    public final /* synthetic */ void mo11481a(JSONObject jSONObject) {
        try {
            JSONObject m6852a = C3614wy.m6852a(jSONObject, "pii");
            m6852a.put("doritos", this.f12698a);
            m6852a.put("doritos_v2", this.f12699b);
        } catch (JSONException e) {
            C3556uu.m7052a("Failed putting doritos string.");
        }
    }
}
