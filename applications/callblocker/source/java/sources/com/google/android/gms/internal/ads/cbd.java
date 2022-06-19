package com.google.android.gms.internal.ads;

import java.util.Iterator;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cbd.class */
public final class cbd implements cae<JSONObject> {

    /* renamed from: a */
    private final JSONObject f12657a;

    public cbd(JSONObject jSONObject) {
        this.f12657a = jSONObject;
    }

    @Override // com.google.android.gms.internal.ads.cae
    /* renamed from: a */
    public final /* synthetic */ void mo11481a(JSONObject jSONObject) {
        try {
            JSONObject m6852a = C3614wy.m6852a(jSONObject, "content_info");
            JSONObject jSONObject2 = this.f12657a;
            Iterator<String> keys = jSONObject2.keys();
            while (keys.hasNext()) {
                String next = keys.next();
                m6852a.put(next, jSONObject2.get(next));
            }
        } catch (JSONException e) {
            C3556uu.m7052a("Failed putting app indexing json.");
        }
    }
}
