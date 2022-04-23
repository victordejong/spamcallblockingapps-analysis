package com.google.android.gms.internal.ads;

import com.appsflyer.internal.referrer.Payload;
import com.google.android.gms.ads.internal.zzr;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bpx.class */
final class bpx implements lk<bpy> {
    @Override // com.google.android.gms.internal.ads.lk
    public final /* synthetic */ JSONObject a(bpy bpyVar) throws JSONException {
        bpy bpyVar2 = bpyVar;
        JSONObject jSONObject = new JSONObject();
        JSONObject jSONObject2 = new JSONObject();
        JSONObject jSONObject3 = new JSONObject();
        jSONObject2.put("base_url", bpyVar2.f24859c.f28387b);
        jSONObject2.put("signals", bpyVar2.f24858b);
        jSONObject3.put("body", bpyVar2.f24857a.f24870c);
        jSONObject3.put("headers", zzr.zzkv().zzj(bpyVar2.f24857a.f24869b));
        jSONObject3.put("response_code", bpyVar2.f24857a.f24868a);
        jSONObject3.put(Payload.LATENCY, bpyVar2.f24857a.f24871d);
        jSONObject.put("request", jSONObject2);
        jSONObject.put(Payload.RESPONSE, jSONObject3);
        jSONObject.put("flags", bpyVar2.f24859c.h);
        return jSONObject;
    }
}
