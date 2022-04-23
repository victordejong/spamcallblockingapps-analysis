package com.google.android.gms.internal.ads;

import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdho.class */
public final class zzdho implements zzdgu<JSONObject> {

    /* renamed from: a */
    public final String f27341a;

    public zzdho(String str) {
        this.f27341a = str;
    }

    @Override // com.google.android.gms.internal.ads.zzdgu
    /* renamed from: a */
    public final /* synthetic */ void mo13578a(JSONObject jSONObject) {
        try {
            jSONObject.put("ms", this.f27341a);
        } catch (JSONException e) {
            zzayp.m16154e("Failed putting Ad ID.", e);
        }
    }
}
