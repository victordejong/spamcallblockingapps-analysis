package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import com.google.android.gms.ads.internal.util.C5722o1;
import com.google.android.gms.ads.internal.util.C5748x0;
import com.google.android.gms.ads.p263v.C5852a;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/nb2.class */
public final class nb2 implements va2<JSONObject> {

    /* renamed from: a */
    private final C5852a.C5853a f27060a;

    /* renamed from: b */
    private final String f27061b;

    public nb2(C5852a.C5853a c5853a, String str) {
        this.f27060a = c5853a;
        this.f27061b = str;
    }

    @Override // com.google.android.gms.internal.ads.va2
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ void mo8928a(JSONObject jSONObject) {
        try {
            JSONObject m17918g = C5748x0.m17918g(jSONObject, "pii");
            C5852a.C5853a c5853a = this.f27060a;
            if (c5853a == null || TextUtils.isEmpty(c5853a.m17742a())) {
                m17918g.put("pdid", this.f27061b);
                m17918g.put("pdidtype", "ssaid");
                return;
            }
            m17918g.put("rdid", this.f27060a.m17742a());
            m17918g.put("is_lat", this.f27060a.m17741b());
            m17918g.put("idtype", "adid");
        } catch (JSONException e) {
            C5722o1.m17989l("Failed putting Ad ID.", e);
        }
    }
}
