package com.google.android.gms.internal.ads;

import java.util.Arrays;
import java.util.List;
import org.json.JSONObject;
/* renamed from: com.google.android.gms.internal.ads.ta */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ta.class */
public final class C12924ta {

    /* renamed from: a */
    final List<String> f49822a;

    /* renamed from: b */
    final String f49823b;

    /* renamed from: c */
    final String f49824c;

    /* renamed from: d */
    final boolean f49825d;

    /* renamed from: e */
    final boolean f49826e;

    /* renamed from: f */
    String f49827f;

    /* renamed from: g */
    final int f49828g;

    /* renamed from: h */
    final JSONObject f49829h;

    /* renamed from: i */
    final String f49830i;

    /* renamed from: j */
    private final String f49831j;

    /* renamed from: k */
    private final String f49832k;

    /* renamed from: l */
    private final String f49833l;

    /* renamed from: m */
    private final boolean f49834m;

    /* renamed from: n */
    private final String f49835n;

    /* renamed from: o */
    private final boolean f49836o;

    public C12924ta(JSONObject jSONObject) {
        this.f49827f = jSONObject.optString("url");
        this.f49823b = jSONObject.optString("base_uri");
        this.f49824c = jSONObject.optString("post_parameters");
        this.f49825d = m14185a(jSONObject.optString("drt_include"));
        this.f49826e = m14185a(jSONObject.optString("cookies_include", "true"));
        this.f49832k = jSONObject.optString("request_id");
        this.f49831j = jSONObject.optString("type");
        String optString = jSONObject.optString("errors");
        this.f49822a = optString == null ? null : Arrays.asList(optString.split(","));
        this.f49828g = jSONObject.optInt("valid", 0) == 1 ? -2 : 1;
        this.f49833l = jSONObject.optString("fetched_ad");
        this.f49834m = jSONObject.optBoolean("render_test_ad_label");
        JSONObject optJSONObject = jSONObject.optJSONObject("preprocessor_flags");
        this.f49829h = optJSONObject == null ? new JSONObject() : optJSONObject;
        this.f49835n = jSONObject.optString("analytics_query_ad_event_id");
        this.f49836o = jSONObject.optBoolean("is_analytics_logging_enabled");
        this.f49830i = jSONObject.optString("pool_key");
    }

    /* renamed from: a */
    private static boolean m14185a(String str) {
        if (str != null) {
            return str.equals("1") || str.equals("true");
        }
        return false;
    }
}
