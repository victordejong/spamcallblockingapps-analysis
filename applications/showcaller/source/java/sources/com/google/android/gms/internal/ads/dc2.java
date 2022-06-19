package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import com.google.android.gms.ads.internal.util.C5722o1;
import com.google.android.gms.ads.internal.util.C5748x0;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/dc2.class */
public final class dc2 implements va2<JSONObject> {

    /* renamed from: a */
    private final String f21587a;

    public dc2(String str) {
        this.f21587a = str;
    }

    @Override // com.google.android.gms.internal.ads.va2
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ void mo8928a(JSONObject jSONObject) {
        try {
            JSONObject m17918g = C5748x0.m17918g(jSONObject, "pii");
            if (TextUtils.isEmpty(this.f21587a)) {
                return;
            }
            m17918g.put("attok", this.f21587a);
        } catch (JSONException e) {
            C5722o1.m17989l("Failed putting attestation token.", e);
        }
    }
}
