package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.C5722o1;
import com.google.android.gms.ads.internal.util.C5748x0;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/oc2.class */
public final class oc2 implements va2<JSONObject> {

    /* renamed from: a */
    private final String f27499a;

    /* renamed from: b */
    private final String f27500b;

    public oc2(String str, String str2) {
        this.f27499a = str;
        this.f27500b = str2;
    }

    @Override // com.google.android.gms.internal.ads.va2
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ void mo8928a(JSONObject jSONObject) {
        try {
            JSONObject m17918g = C5748x0.m17918g(jSONObject, "pii");
            m17918g.put("doritos", this.f27499a);
            m17918g.put("doritos_v2", this.f27500b);
        } catch (JSONException e) {
            C5722o1.m17990k("Failed putting doritos string.");
        }
    }
}
