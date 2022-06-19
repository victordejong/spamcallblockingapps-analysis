package com.google.android.gms.internal.ads;

import java.util.Arrays;
import java.util.List;
import org.json.JSONObject;
/* renamed from: com.google.android.gms.internal.ads.qc */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/qc.class */
public final class C3430qc {

    /* renamed from: a */
    private final List<String> f17211a;

    /* renamed from: b */
    private final String f17212b;

    /* renamed from: c */
    private final String f17213c;

    /* renamed from: d */
    private final String f17214d;

    /* renamed from: e */
    private final boolean f17215e;

    /* renamed from: f */
    private final String f17216f;

    /* renamed from: g */
    private final String f17217g;

    /* renamed from: h */
    private String f17218h;

    /* renamed from: i */
    private final int f17219i;

    /* renamed from: j */
    private final boolean f17220j;

    /* renamed from: k */
    private final JSONObject f17221k;

    /* renamed from: l */
    private final String f17222l;

    /* renamed from: m */
    private final boolean f17223m;

    /* renamed from: n */
    private final String f17224n;

    public C3430qc(JSONObject jSONObject) {
        int i = 1;
        this.f17218h = jSONObject.optString("url");
        this.f17212b = jSONObject.optString("base_uri");
        this.f17213c = jSONObject.optString("post_parameters");
        String optString = jSONObject.optString("drt_include");
        this.f17215e = optString != null && (optString.equals("1") || optString.equals("true"));
        this.f17216f = jSONObject.optString("request_id");
        this.f17214d = jSONObject.optString("type");
        String optString2 = jSONObject.optString("errors");
        this.f17211a = optString2 == null ? null : Arrays.asList(optString2.split(","));
        this.f17219i = jSONObject.optInt("valid", 0) == 1 ? -2 : i;
        this.f17217g = jSONObject.optString("fetched_ad");
        this.f17220j = jSONObject.optBoolean("render_test_ad_label");
        JSONObject optJSONObject = jSONObject.optJSONObject("preprocessor_flags");
        this.f17221k = optJSONObject == null ? new JSONObject() : optJSONObject;
        this.f17222l = jSONObject.optString("analytics_query_ad_event_id");
        this.f17223m = jSONObject.optBoolean("is_analytics_logging_enabled");
        this.f17224n = jSONObject.optString("pool_key");
    }

    /* renamed from: a */
    public final int m7326a() {
        return this.f17219i;
    }

    /* renamed from: b */
    public final List<String> m7325b() {
        return this.f17211a;
    }

    /* renamed from: c */
    public final String m7324c() {
        return this.f17212b;
    }

    /* renamed from: d */
    public final String m7323d() {
        return this.f17213c;
    }

    /* renamed from: e */
    public final String m7322e() {
        return this.f17218h;
    }

    /* renamed from: f */
    public final boolean m7321f() {
        return this.f17215e;
    }

    /* renamed from: g */
    public final JSONObject m7320g() {
        return this.f17221k;
    }

    /* renamed from: h */
    public final String m7319h() {
        return this.f17224n;
    }
}
