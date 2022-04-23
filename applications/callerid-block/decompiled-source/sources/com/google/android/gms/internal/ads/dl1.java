package com.google.android.gms.internal.ads;

import android.util.JsonReader;
import android.util.JsonToken;
import com.google.android.gms.ads.internal.util.C1422h0;
import java.util.Collections;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dl1.class */
public final class dl1 {

    /* renamed from: a */
    public final List<String> f6334a;

    /* renamed from: b */
    public final String f6335b;

    /* renamed from: c */
    public final int f6336c;

    /* renamed from: d */
    public final String f6337d;

    /* renamed from: e */
    public final int f6338e;

    /* renamed from: f */
    public final long f6339f;

    /* renamed from: g */
    public final boolean f6340g;

    /* renamed from: h */
    public final cl1 f6341h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public dl1(JsonReader jsonReader) {
        List<String> emptyList = Collections.emptyList();
        jsonReader.beginObject();
        String str = "";
        String str2 = "";
        long j = 0;
        cl1 cl1Var = null;
        int i = 0;
        int i2 = 0;
        boolean z = false;
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            if ("nofill_urls".equals(nextName)) {
                emptyList = C1422h0.m8836b(jsonReader);
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
            } else if ("latency".equals(nextName)) {
                j = jsonReader.nextLong();
            } else {
                if (!((Boolean) C1674c.m7906c().m6878b(C1842m3.f7327S4)).booleanValue() || !"public_error".equals(nextName) || jsonReader.peek() != JsonToken.BEGIN_OBJECT) {
                    jsonReader.skipValue();
                } else {
                    cl1Var = new cl1(jsonReader);
                }
            }
        }
        jsonReader.endObject();
        this.f6334a = emptyList;
        this.f6336c = i;
        this.f6335b = str;
        this.f6337d = str2;
        this.f6338e = i2;
        this.f6339f = j;
        this.f6341h = cl1Var;
        this.f6340g = z;
    }
}
