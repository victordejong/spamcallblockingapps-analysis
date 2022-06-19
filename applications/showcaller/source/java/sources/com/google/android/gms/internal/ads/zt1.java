package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.C5667s;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zt1.class */
final class zt1 implements j60<au1> {
    @Override // com.google.android.gms.internal.ads.j60
    /* renamed from: b */
    public final /* bridge */ /* synthetic */ JSONObject mo8186b(au1 au1Var) {
        au1 au1Var2 = au1Var;
        JSONObject jSONObject = new JSONObject();
        JSONObject jSONObject2 = new JSONObject();
        JSONObject jSONObject3 = new JSONObject();
        jSONObject2.put("base_url", au1Var2.f20127d.m16644c());
        jSONObject2.put("signals", au1Var2.f20126c);
        jSONObject3.put("body", au1Var2.f20125b.f22542c);
        jSONObject3.put("headers", C5667s.m18160d().m18091Q(au1Var2.f20125b.f22541b));
        jSONObject3.put("response_code", au1Var2.f20125b.f22540a);
        jSONObject3.put("latency", au1Var2.f20125b.f22543d);
        jSONObject.put("request", jSONObject2);
        jSONObject.put("response", jSONObject3);
        jSONObject.put("flags", au1Var2.f20127d.m16639h());
        return jSONObject;
    }
}
