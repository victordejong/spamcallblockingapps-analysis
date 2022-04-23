package com.google.android.gms.internal.ads;

import java.util.Arrays;
import java.util.List;
import org.json.JSONObject;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ta.class */
public final class ta {

    /* renamed from: a  reason: collision with root package name */
    final List<String> f28386a;

    /* renamed from: b  reason: collision with root package name */
    final String f28387b;

    /* renamed from: c  reason: collision with root package name */
    final String f28388c;

    /* renamed from: d  reason: collision with root package name */
    final boolean f28389d;
    final boolean e;
    String f;
    final int g;
    final JSONObject h;
    final String i;
    private final String j;
    private final String k;
    private final String l;
    private final boolean m;
    private final String n;
    private final boolean o;

    public ta(JSONObject jSONObject) {
        this.f = jSONObject.optString("url");
        this.f28387b = jSONObject.optString("base_uri");
        this.f28388c = jSONObject.optString("post_parameters");
        this.f28389d = a(jSONObject.optString("drt_include"));
        this.e = a(jSONObject.optString("cookies_include", "true"));
        this.k = jSONObject.optString("request_id");
        this.j = jSONObject.optString("type");
        String optString = jSONObject.optString("errors");
        this.f28386a = optString == null ? null : Arrays.asList(optString.split(","));
        this.g = jSONObject.optInt("valid", 0) == 1 ? -2 : 1;
        this.l = jSONObject.optString("fetched_ad");
        this.m = jSONObject.optBoolean("render_test_ad_label");
        JSONObject optJSONObject = jSONObject.optJSONObject("preprocessor_flags");
        this.h = optJSONObject == null ? new JSONObject() : optJSONObject;
        this.n = jSONObject.optString("analytics_query_ad_event_id");
        this.o = jSONObject.optBoolean("is_analytics_logging_enabled");
        this.i = jSONObject.optString("pool_key");
    }

    private static boolean a(String str) {
        if (str != null) {
            return str.equals("1") || str.equals("true");
        }
        return false;
    }
}
