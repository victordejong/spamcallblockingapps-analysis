package com.google.android.gms.internal.ads;

import android.util.JsonReader;
import com.google.android.gms.ads.internal.util.C5748x0;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/kj2.class */
public final class kj2 {

    /* renamed from: a */
    public final String f25233a;

    /* renamed from: b */
    public final String f25234b;

    /* renamed from: c */
    public final JSONObject f25235c;

    /* renamed from: d */
    public final JSONObject f25236d;

    public kj2(JsonReader jsonReader) {
        JSONObject m17922c = C5748x0.m17922c(jsonReader);
        this.f25236d = m17922c;
        this.f25233a = m17922c.optString("ad_html", null);
        this.f25234b = m17922c.optString("ad_base_url", null);
        this.f25235c = m17922c.optJSONObject("ad_json");
    }
}
