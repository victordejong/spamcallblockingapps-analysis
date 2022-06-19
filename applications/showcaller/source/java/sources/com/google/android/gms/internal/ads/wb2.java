package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.C5722o1;
import com.google.android.gms.ads.internal.util.C5748x0;
import java.util.Iterator;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/wb2.class */
public final class wb2 implements va2<JSONObject> {

    /* renamed from: a */
    private final JSONObject f31499a;

    public wb2(JSONObject jSONObject) {
        this.f31499a = jSONObject;
    }

    @Override // com.google.android.gms.internal.ads.va2
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ void mo8928a(JSONObject jSONObject) {
        try {
            JSONObject m17918g = C5748x0.m17918g(jSONObject, "content_info");
            JSONObject jSONObject2 = this.f31499a;
            Iterator<String> keys = jSONObject2.keys();
            while (keys.hasNext()) {
                String next = keys.next();
                m17918g.put(next, jSONObject2.get(next));
            }
        } catch (JSONException e) {
            C5722o1.m17990k("Failed putting app indexing json.");
        }
    }
}
