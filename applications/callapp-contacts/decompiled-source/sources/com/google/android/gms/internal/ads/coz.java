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

    /* renamed from: a  reason: collision with root package name */
    public final List<String> f26196a;

    /* renamed from: b  reason: collision with root package name */
    public final String f26197b;

    /* renamed from: c  reason: collision with root package name */
    public final int f26198c;

    /* renamed from: d  reason: collision with root package name */
    public final String f26199d;
    public final int e;
    public final long f;
    public final boolean g;
    public final cox h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public coz(JsonReader jsonReader) throws IllegalStateException, IOException, JSONException, NumberFormatException {
        List<String> emptyList = Collections.emptyList();
        jsonReader.beginObject();
        String str = "";
        String str2 = "";
        long j = 0;
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
                j = jsonReader.nextLong();
            } else {
                if (!((Boolean) ekb.e().a(aq.eS)).booleanValue() || !"public_error".equals(nextName) || jsonReader.peek() != JsonToken.BEGIN_OBJECT) {
                    jsonReader.skipValue();
                } else {
                    coxVar = new cox(jsonReader);
                }
            }
        }
        jsonReader.endObject();
        this.f26196a = emptyList;
        this.f26198c = i;
        this.f26197b = str;
        this.f26199d = str2;
        this.e = i2;
        this.f = j;
        this.h = coxVar;
        this.g = z;
    }
}
