package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.C2341q;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/blq.class */
final class blq implements AbstractC3245jg<bln> {
    @Override // com.google.android.gms.internal.ads.AbstractC3245jg
    /* renamed from: a */
    public final /* synthetic */ JSONObject mo7728a(bln blnVar) {
        bln blnVar2 = blnVar;
        JSONObject jSONObject = new JSONObject();
        JSONObject jSONObject2 = new JSONObject();
        JSONObject jSONObject3 = new JSONObject();
        jSONObject2.put("base_url", blnVar2.f11491c.m7324c());
        jSONObject2.put("signals", blnVar2.f11490b);
        jSONObject3.put("body", blnVar2.f11489a.f11510c);
        jSONObject3.put("headers", C2341q.m14744c().m6982a(blnVar2.f11489a.f11509b));
        jSONObject3.put("response_code", blnVar2.f11489a.f11508a);
        jSONObject3.put("latency", blnVar2.f11489a.f11511d);
        jSONObject.put("request", jSONObject2);
        jSONObject.put("response", jSONObject3);
        jSONObject.put("flags", blnVar2.f11491c.m7320g());
        return jSONObject;
    }
}
