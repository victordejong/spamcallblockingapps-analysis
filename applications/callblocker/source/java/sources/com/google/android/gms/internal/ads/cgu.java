package com.google.android.gms.internal.ads;

import android.util.JsonReader;
import android.util.JsonWriter;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cgu.class */
public final class cgu implements AbstractC3615wz {

    /* renamed from: a */
    public final String f13012a;

    /* renamed from: b */
    public final String f13013b;

    /* renamed from: c */
    public final JSONObject f13014c;

    /* renamed from: d */
    private final JSONObject f13015d;

    public cgu(JsonReader jsonReader) {
        this.f13015d = C3614wy.m6847c(jsonReader);
        this.f13012a = this.f13015d.optString("ad_html", null);
        this.f13013b = this.f13015d.optString("ad_base_url", null);
        this.f13014c = this.f13015d.optJSONObject("ad_json");
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3615wz
    /* renamed from: a */
    public final void mo6845a(JsonWriter jsonWriter) {
        C3614wy.m6858a(jsonWriter, this.f13015d);
    }
}
