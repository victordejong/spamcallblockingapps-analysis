package com.google.android.gms.internal.ads;

import java.util.Arrays;
import java.util.List;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzati.class */
public final class zzati {

    /* renamed from: a */
    public final List<String> f24459a;

    /* renamed from: b */
    public final String f24460b;

    /* renamed from: c */
    public final String f24461c;

    /* renamed from: d */
    public final boolean f24462d;

    /* renamed from: e */
    public String f24463e;

    /* renamed from: f */
    public final int f24464f;

    /* renamed from: g */
    public final JSONObject f24465g;

    /* renamed from: h */
    public final String f24466h;

    public zzati(JSONObject jSONObject) {
        this.f24463e = jSONObject.optString("url");
        this.f24460b = jSONObject.optString("base_uri");
        this.f24461c = jSONObject.optString("post_parameters");
        String optString = jSONObject.optString("drt_include");
        int i = 1;
        this.f24462d = optString != null && (optString.equals("1") || optString.equals("true"));
        jSONObject.optString("request_id");
        jSONObject.optString("type");
        String optString2 = jSONObject.optString("errors");
        this.f24459a = optString2 == null ? null : Arrays.asList(optString2.split(","));
        this.f24464f = jSONObject.optInt("valid", 0) == 1 ? -2 : i;
        jSONObject.optString("fetched_ad");
        jSONObject.optBoolean("render_test_ad_label");
        JSONObject optJSONObject = jSONObject.optJSONObject("preprocessor_flags");
        this.f24465g = optJSONObject == null ? new JSONObject() : optJSONObject;
        jSONObject.optString("analytics_query_ad_event_id");
        jSONObject.optBoolean("is_analytics_logging_enabled");
        this.f24466h = jSONObject.optString("pool_key");
    }

    /* renamed from: a */
    public final int m16375a() {
        return this.f24464f;
    }

    /* renamed from: b */
    public final String m16374b() {
        return this.f24463e;
    }

    /* renamed from: c */
    public final List<String> m16373c() {
        return this.f24459a;
    }

    /* renamed from: d */
    public final String m16372d() {
        return this.f24460b;
    }

    /* renamed from: e */
    public final String m16371e() {
        return this.f24461c;
    }

    /* renamed from: f */
    public final boolean m16370f() {
        return this.f24462d;
    }

    /* renamed from: g */
    public final JSONObject m16369g() {
        return this.f24465g;
    }

    /* renamed from: h */
    public final String m16368h() {
        return this.f24466h;
    }
}
