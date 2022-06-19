package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import com.google.android.gms.ads.internal.util.C5748x0;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/kd2.class */
public final class kd2 implements va2<JSONObject> {

    /* renamed from: a */
    private final String f25104a;

    public kd2(String str) {
        this.f25104a = str;
    }

    @Override // com.google.android.gms.internal.ads.va2
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ void mo8928a(JSONObject jSONObject) {
        JSONObject jSONObject2 = jSONObject;
        try {
            if (TextUtils.isEmpty(this.f25104a)) {
                return;
            }
            C5748x0.m17918g(jSONObject2, "pii").put("adsid", this.f25104a);
        } catch (JSONException e) {
            ei0.m15463g("Failed putting trustless token.", e);
        }
    }
}
