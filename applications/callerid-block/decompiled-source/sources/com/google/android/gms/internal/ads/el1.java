package com.google.android.gms.internal.ads;

import android.util.JsonReader;
import com.google.android.gms.ads.internal.util.C1422h0;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/el1.class */
public final class el1 {

    /* renamed from: a */
    public final String f6418a;

    /* renamed from: b */
    public final String f6419b;

    /* renamed from: c */
    public final JSONObject f6420c;

    /* renamed from: d */
    public final JSONObject f6421d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public el1(JsonReader jsonReader) {
        JSONObject c = C1422h0.m8835c(jsonReader);
        this.f6421d = c;
        this.f6418a = c.optString("ad_html", null);
        this.f6419b = c.optString("ad_base_url", null);
        this.f6420c = c.optJSONObject("ad_json");
    }
}
