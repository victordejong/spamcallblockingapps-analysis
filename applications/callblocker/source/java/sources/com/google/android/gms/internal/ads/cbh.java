package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cbh.class */
public final class cbh implements cae<JSONObject> {

    /* renamed from: a */
    private String f12664a;

    public cbh(String str) {
        this.f12664a = str;
    }

    @Override // com.google.android.gms.internal.ads.cae
    /* renamed from: a */
    public final /* synthetic */ void mo11481a(JSONObject jSONObject) {
        try {
            JSONObject m6852a = C3614wy.m6852a(jSONObject, "pii");
            if (TextUtils.isEmpty(this.f12664a)) {
                return;
            }
            m6852a.put("attok", this.f12664a);
        } catch (JSONException e) {
            C3556uu.m7051a("Failed putting attestation token.", e);
        }
    }
}
