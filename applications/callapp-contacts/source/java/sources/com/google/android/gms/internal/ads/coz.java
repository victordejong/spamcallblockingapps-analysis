package com.google.android.gms.internal.ads;

import android.util.JsonReader;
import android.util.JsonToken;
import com.appsflyer.internal.referrer.Payload;
import com.google.android.gms.ads.internal.util.zzbh;
import java.io.IOException;
import java.util.Collections;
import java.util.List;
import org.json.JSONException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/coz.class */
public final class coz {

    /* renamed from: a */
    public final List<String> f46289a;

    /* renamed from: b */
    public final String f46290b;

    /* renamed from: c */
    public final int f46291c;

    /* renamed from: d */
    public final String f46292d;

    /* renamed from: e */
    public final int f46293e;

    /* renamed from: f */
    public final long f46294f;

    /* renamed from: g */
    public final boolean f46295g;

    /* renamed from: h */
    public final cox f46296h;

    /* JADX WARN: Type inference failed for: r0v50, types: [long] */
    public coz(JsonReader jsonReader) throws IllegalStateException, IOException, JSONException, NumberFormatException {
        List<String> emptyList = Collections.emptyList();
        jsonReader.beginObject();
        String str = "";
        String str2 = "";
        char c = 0;
        cox coxVar = null;
        int i = 0;
        int i2 = 0;
        boolean z = false;
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            if ("nofill_urls".equals(nextName)) {
                emptyList = zzbh.zza(jsonReader);
            } else if ("refresh_interval".equals(nextName)) {
                i = jsonReader.nextInt();
            } else if ("gws_query_id".equals(nextName)) {
                str = jsonReader.nextString();
            } else if ("analytics_query_ad_event_id".equals(nextName)) {
                str2 = jsonReader.nextString();
            } else if ("is_idless".equals(nextName)) {
                z = jsonReader.nextBoolean();
            } else if ("response_code".equals(nextName)) {
                i2 = jsonReader.nextInt();
            } else if (Payload.LATENCY.equals(nextName)) {
                c = jsonReader.nextLong();
            } else {
                if (!((Boolean) ekb.m14831e().m18571a(C12187aq.f42868eS)).booleanValue() || !"public_error".equals(nextName) || jsonReader.peek() != JsonToken.BEGIN_OBJECT) {
                    jsonReader.skipValue();
                } else {
                    coxVar = new cox(jsonReader);
                }
            }
        }
        jsonReader.endObject();
        this.f46289a = emptyList;
        this.f46291c = i;
        this.f46290b = str;
        this.f46292d = str2;
        this.f46293e = i2;
        this.f46294f = c;
        this.f46296h = coxVar;
        this.f46295g = z;
    }
}
