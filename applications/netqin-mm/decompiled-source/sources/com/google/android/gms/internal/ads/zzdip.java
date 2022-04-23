package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdip.class */
public final class zzdip implements zzdgu<JSONObject> {

    /* renamed from: a */
    public List<String> f27386a;

    public zzdip(List<String> list) {
        this.f27386a = list;
    }

    @Override // com.google.android.gms.internal.ads.zzdgu
    /* renamed from: a */
    public final /* synthetic */ void mo13578a(JSONObject jSONObject) {
        try {
            jSONObject.put("eid", TextUtils.join(",", this.f27386a));
        } catch (JSONException e) {
            zzayp.m16153g("Failed putting experiment ids.");
        }
    }
}
