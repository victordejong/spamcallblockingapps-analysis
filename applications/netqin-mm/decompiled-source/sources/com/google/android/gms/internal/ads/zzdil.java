package com.google.android.gms.internal.ads;

import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdil.class */
public final class zzdil implements zzdgu<JSONObject> {

    /* renamed from: a */
    public String f27378a;

    /* renamed from: b */
    public String f27379b;

    public zzdil(String str, String str2) {
        this.f27378a = str;
        this.f27379b = str2;
    }

    @Override // com.google.android.gms.internal.ads.zzdgu
    /* renamed from: a */
    public final /* synthetic */ void mo13578a(JSONObject jSONObject) {
        try {
            JSONObject a = zzbao.m15955a(jSONObject, "pii");
            a.put("doritos", this.f27378a);
            a.put("doritos_v2", this.f27379b);
        } catch (JSONException e) {
            zzayp.m16153g("Failed putting doritos string.");
        }
    }
}
