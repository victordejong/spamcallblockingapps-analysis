package com.google.android.gms.internal.ads;

import android.util.JsonReader;
import android.util.JsonWriter;
import java.io.IOException;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdny.class */
public final class zzdny implements zzbat {

    /* renamed from: a */
    public final String f27619a;

    /* renamed from: b */
    public final String f27620b;

    /* renamed from: c */
    public final JSONObject f27621c;

    /* renamed from: d */
    public final JSONObject f27622d;

    public zzdny(JsonReader jsonReader) throws IllegalStateException, IOException, JSONException, NumberFormatException {
        JSONObject c = zzbao.m15950c(jsonReader);
        this.f27622d = c;
        this.f27619a = c.optString("ad_html", null);
        this.f27620b = this.f27622d.optString("ad_base_url", null);
        this.f27621c = this.f27622d.optJSONObject("ad_json");
    }

    @Override // com.google.android.gms.internal.ads.zzbat
    /* renamed from: a */
    public final void mo13449a(JsonWriter jsonWriter) throws IOException {
        zzbao.m15961a(jsonWriter, this.f27622d);
    }
}
