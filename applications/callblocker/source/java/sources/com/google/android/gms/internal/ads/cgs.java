package com.google.android.gms.internal.ads;

import android.util.JsonReader;
import java.util.Collections;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cgs.class */
public final class cgs {

    /* renamed from: a */
    public final List<String> f13005a;

    /* renamed from: b */
    public final String f13006b;

    /* renamed from: c */
    public final int f13007c;

    /* renamed from: d */
    public final String f13008d;

    /* renamed from: e */
    public final int f13009e;

    /* renamed from: f */
    public final long f13010f;

    /* JADX WARN: Type inference failed for: r0v42, types: [long] */
    public cgs(JsonReader jsonReader) {
        List<String> emptyList = Collections.emptyList();
        String str = "";
        String str2 = "";
        char c = 0;
        jsonReader.beginObject();
        int i = 0;
        int i2 = 0;
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            if ("nofill_urls".equals(nextName)) {
                emptyList = C3614wy.m6861a(jsonReader);
            } else if ("refresh_interval".equals(nextName)) {
                i2 = jsonReader.nextInt();
            } else if ("gws_query_id".equals(nextName)) {
                str = jsonReader.nextString();
            } else if ("analytics_query_ad_event_id".equals(nextName)) {
                str2 = jsonReader.nextString();
            } else if ("response_code".equals(nextName)) {
                i = jsonReader.nextInt();
            } else if ("latency".equals(nextName)) {
                c = jsonReader.nextLong();
            } else {
                jsonReader.skipValue();
            }
        }
        jsonReader.endObject();
        this.f13005a = emptyList;
        this.f13007c = i2;
        this.f13006b = str;
        this.f13008d = str2;
        this.f13009e = i;
        this.f13010f = c;
    }
}
