package com.google.android.gms.internal.ads;

import com.appsflyer.internal.referrer.Payload;
import com.google.android.gms.ads.internal.zzr;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bpx.class */
final class bpx implements AbstractC12717lk<bpy> {
    @Override // com.google.android.gms.internal.ads.AbstractC12717lk
    /* renamed from: a */
    public final /* synthetic */ JSONObject mo14524a(bpy bpyVar) throws JSONException {
        bpy bpyVar2 = bpyVar;
        JSONObject jSONObject = new JSONObject();
        JSONObject jSONObject2 = new JSONObject();
        JSONObject jSONObject3 = new JSONObject();
        jSONObject2.put("base_url", bpyVar2.f44450c.f49823b);
        jSONObject2.put("signals", bpyVar2.f44449b);
        jSONObject3.put("body", bpyVar2.f44448a.f44464c);
        jSONObject3.put("headers", zzr.zzkv().zzj(bpyVar2.f44448a.f44463b));
        jSONObject3.put("response_code", bpyVar2.f44448a.f44462a);
        jSONObject3.put(Payload.LATENCY, bpyVar2.f44448a.f44465d);
        jSONObject.put("request", jSONObject2);
        jSONObject.put(Payload.RESPONSE, jSONObject3);
        jSONObject.put("flags", bpyVar2.f44450c.f49829h);
        return jSONObject;
    }
}
