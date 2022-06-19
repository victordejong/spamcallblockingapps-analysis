package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import com.google.android.gms.ads.p120c.C2276a;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cas.class */
public final class cas implements cae<JSONObject> {

    /* renamed from: a */
    private final C2276a.C2277a f12636a;

    /* renamed from: b */
    private final String f12637b;

    public cas(C2276a.C2277a c2277a, String str) {
        this.f12636a = c2277a;
        this.f12637b = str;
    }

    @Override // com.google.android.gms.internal.ads.cae
    /* renamed from: a */
    public final /* synthetic */ void mo11481a(JSONObject jSONObject) {
        try {
            JSONObject m6852a = C3614wy.m6852a(jSONObject, "pii");
            if (this.f12636a == null || TextUtils.isEmpty(this.f12636a.m14848a())) {
                m6852a.put("pdid", this.f12637b);
                m6852a.put("pdidtype", "ssaid");
            } else {
                m6852a.put("rdid", this.f12636a.m14848a());
                m6852a.put("is_lat", this.f12636a.m14847b());
                m6852a.put("idtype", "adid");
            }
        } catch (JSONException e) {
            C3556uu.m7051a("Failed putting Ad ID.", e);
        }
    }
}
