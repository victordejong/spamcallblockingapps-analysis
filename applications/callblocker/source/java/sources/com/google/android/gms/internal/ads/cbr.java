package com.google.android.gms.internal.ads;

import android.content.Context;
import org.json.JSONException;
import org.json.JSONObject;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cbr.class */
public final class cbr implements cah<cae<JSONObject>> {

    /* renamed from: a */
    private final JSONObject f12689a;

    public cbr(Context context) {
        this.f12689a = C3436qi.m7308a(context);
    }

    @Override // com.google.android.gms.internal.ads.cah
    /* renamed from: a */
    public final crt<cae<JSONObject>> mo11479a() {
        return crg.m10778a(new cae(this) { // from class: com.google.android.gms.internal.ads.cbu

            /* renamed from: a */
            private final cbr f12694a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f12694a = this;
            }

            @Override // com.google.android.gms.internal.ads.cae
            /* renamed from: a */
            public final void mo11481a(Object obj) {
                this.f12694a.m11493a((JSONObject) obj);
            }
        });
    }

    /* renamed from: a */
    public final /* synthetic */ void m11493a(JSONObject jSONObject) {
        try {
            jSONObject.put("gms_sdk_env", this.f12689a);
        } catch (JSONException e) {
            C3556uu.m7052a("Failed putting version constants.");
        }
    }
}
