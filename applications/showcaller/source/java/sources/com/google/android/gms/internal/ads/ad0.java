package com.google.android.gms.internal.ads;

import java.util.Arrays;
import java.util.List;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/ad0.class */
public final class ad0 {

    /* renamed from: a */
    private final List<String> f19875a;

    /* renamed from: b */
    private final String f19876b;

    /* renamed from: c */
    private final String f19877c;

    /* renamed from: d */
    private final String f19878d;

    /* renamed from: e */
    private final boolean f19879e;

    /* renamed from: f */
    private final boolean f19880f;

    /* renamed from: g */
    private final String f19881g;

    /* renamed from: h */
    private final String f19882h;

    /* renamed from: i */
    private final String f19883i;

    /* renamed from: j */
    private final int f19884j;

    /* renamed from: k */
    private final JSONObject f19885k;

    /* renamed from: l */
    private final String f19886l;

    /* renamed from: m */
    private final String f19887m;

    public ad0(JSONObject jSONObject) {
        this.f19883i = jSONObject.optString("url");
        this.f19876b = jSONObject.optString("base_uri");
        this.f19877c = jSONObject.optString("post_parameters");
        this.f19879e = m16637j(jSONObject.optString("drt_include"));
        this.f19880f = m16637j(jSONObject.optString("cookies_include", "true"));
        this.f19881g = jSONObject.optString("request_id");
        this.f19878d = jSONObject.optString("type");
        String optString = jSONObject.optString("errors");
        this.f19875a = optString == null ? null : Arrays.asList(optString.split(","));
        this.f19884j = jSONObject.optInt("valid", 0) == 1 ? -2 : 1;
        this.f19882h = jSONObject.optString("fetched_ad");
        jSONObject.optBoolean("render_test_ad_label");
        JSONObject optJSONObject = jSONObject.optJSONObject("preprocessor_flags");
        this.f19885k = optJSONObject == null ? new JSONObject() : optJSONObject;
        this.f19886l = jSONObject.optString("analytics_query_ad_event_id");
        jSONObject.optBoolean("is_analytics_logging_enabled");
        this.f19887m = jSONObject.optString("pool_key");
    }

    /* renamed from: j */
    private static boolean m16637j(String str) {
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
    public final int m16646a() {
        return this.f19884j;
    }

    /* renamed from: b */
    public final List<String> m16645b() {
        return this.f19875a;
    }

    /* renamed from: c */
    public final String m16644c() {
        return this.f19876b;
    }

    /* renamed from: d */
    public final String m16643d() {
        return this.f19877c;
    }

    /* renamed from: e */
    public final String m16642e() {
        return this.f19883i;
    }

    /* renamed from: f */
    public final boolean m16641f() {
        return this.f19879e;
    }

    /* renamed from: g */
    public final boolean m16640g() {
        return this.f19880f;
    }

    /* renamed from: h */
    public final JSONObject m16639h() {
        return this.f19885k;
    }

    /* renamed from: i */
    public final String m16638i() {
        return this.f19887m;
    }
}
