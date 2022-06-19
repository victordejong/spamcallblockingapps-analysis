package com.google.android.gms.internal.ads;

import android.util.JsonReader;
import android.util.JsonToken;
import com.google.android.gms.ads.internal.util.C5748x0;
import java.util.Collections;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/jj2.class */
public final class jj2 {

    /* renamed from: a */
    public final List<String> f24896a;

    /* renamed from: b */
    public final String f24897b;

    /* renamed from: c */
    public final int f24898c;

    /* renamed from: d */
    public final String f24899d;

    /* renamed from: e */
    public final int f24900e;

    /* renamed from: f */
    public final long f24901f;

    /* renamed from: g */
    public final boolean f24902g;

    /* renamed from: h */
    public final String f24903h;

    /* renamed from: i */
    public final ij2 f24904i;

    /* JADX WARN: Type inference failed for: r0v52, types: [long] */
    public jj2(JsonReader jsonReader) {
        List<String> emptyList = Collections.emptyList();
        jsonReader.beginObject();
        int i = 0;
        String str = "";
        char c = 0;
        ij2 ij2Var = null;
        boolean z = false;
        String str2 = str;
        String str3 = str2;
        int i2 = 0;
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            if ("nofill_urls".equals(nextName)) {
                emptyList = C5748x0.m17923b(jsonReader);
            } else if ("refresh_interval".equals(nextName)) {
                i = jsonReader.nextInt();
            } else if ("gws_query_id".equals(nextName)) {
                str2 = jsonReader.nextString();
            } else if ("analytics_query_ad_event_id".equals(nextName)) {
                str3 = jsonReader.nextString();
            } else if ("is_idless".equals(nextName)) {
                z = jsonReader.nextBoolean();
            } else if ("response_code".equals(nextName)) {
                i2 = jsonReader.nextInt();
            } else if ("latency".equals(nextName)) {
                c = jsonReader.nextLong();
            } else {
                if (((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25609V5)).booleanValue() && "public_error".equals(nextName) && jsonReader.peek() == JsonToken.BEGIN_OBJECT) {
                    ij2Var = new ij2(jsonReader);
                } else if ("bidding_data".equals(nextName)) {
                    str = jsonReader.nextString();
                } else {
                    jsonReader.skipValue();
                }
            }
        }
        jsonReader.endObject();
        this.f24896a = emptyList;
        this.f24898c = i;
        this.f24897b = str2;
        this.f24899d = str3;
        this.f24900e = i2;
        this.f24901f = c;
        this.f24904i = ij2Var;
        this.f24902g = z;
        this.f24903h = str;
    }
}
