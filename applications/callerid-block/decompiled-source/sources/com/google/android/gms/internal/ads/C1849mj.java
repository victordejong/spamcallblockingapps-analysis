package com.google.android.gms.internal.ads;

import java.util.Arrays;
import java.util.List;
import org.json.JSONObject;
/* renamed from: com.google.android.gms.internal.ads.mj */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/mj.class */
public final class C1849mj {

    /* renamed from: a */
    private final List<String> f7570a;

    /* renamed from: b */
    private final String f7571b;

    /* renamed from: c */
    private final String f7572c;

    /* renamed from: d */
    private final boolean f7573d;

    /* renamed from: e */
    private final boolean f7574e;

    /* renamed from: f */
    private final String f7575f;

    /* renamed from: g */
    private final int f7576g;

    /* renamed from: h */
    private final JSONObject f7577h;

    /* renamed from: i */
    private final String f7578i;

    public C1849mj(JSONObject jSONObject) {
        this.f7575f = jSONObject.optString("url");
        this.f7571b = jSONObject.optString("base_uri");
        this.f7572c = jSONObject.optString("post_parameters");
        this.f7573d = m6563j(jSONObject.optString("drt_include"));
        this.f7574e = m6563j(jSONObject.optString("cookies_include", "true"));
        jSONObject.optString("request_id");
        jSONObject.optString("type");
        String optString = jSONObject.optString("errors");
        this.f7570a = optString == null ? null : Arrays.asList(optString.split(","));
        this.f7576g = jSONObject.optInt("valid", 0) == 1 ? -2 : 1;
        jSONObject.optString("fetched_ad");
        jSONObject.optBoolean("render_test_ad_label");
        JSONObject optJSONObject = jSONObject.optJSONObject("preprocessor_flags");
        this.f7577h = optJSONObject == null ? new JSONObject() : optJSONObject;
        jSONObject.optString("analytics_query_ad_event_id");
        jSONObject.optBoolean("is_analytics_logging_enabled");
        this.f7578i = jSONObject.optString("pool_key");
    }

    /* renamed from: j */
    private static boolean m6563j(String str) {
        boolean z = true;
        if (str != null) {
            if (!str.equals("1")) {
                if (str.equals("true")) {
                    return true;
                }
            }
            return z;
        }
        z = false;
        return z;
    }

    /* renamed from: a */
    public final int m6572a() {
        return this.f7576g;
    }

    /* renamed from: b */
    public final List<String> m6571b() {
        return this.f7570a;
    }

    /* renamed from: c */
    public final String m6570c() {
        return this.f7571b;
    }

    /* renamed from: d */
    public final String m6569d() {
        return this.f7572c;
    }

    /* renamed from: e */
    public final String m6568e() {
        return this.f7575f;
    }

    /* renamed from: f */
    public final boolean m6567f() {
        return this.f7573d;
    }

    /* renamed from: g */
    public final boolean m6566g() {
        return this.f7574e;
    }

    /* renamed from: h */
    public final JSONObject m6565h() {
        return this.f7577h;
    }

    /* renamed from: i */
    public final String m6564i() {
        return this.f7578i;
    }
}
