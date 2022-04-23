package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.zzr;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/mi.class */
public final class mi {

    /* renamed from: a  reason: collision with root package name */
    public final List<String> f28201a;

    /* renamed from: b  reason: collision with root package name */
    public final String f28202b;

    /* renamed from: c  reason: collision with root package name */
    public final String f28203c;

    /* renamed from: d  reason: collision with root package name */
    private final String f28204d;
    private final String e;
    private final String f;
    private final String g;
    private final List<String> h;
    private final List<String> i;
    private final List<String> j;
    private final List<String> k;
    private final List<String> l;
    private final List<String> m;
    private final List<String> n;
    private final List<String> o;
    private final String p;
    private final String q;
    private final String r;
    private final String s;
    private final String t;
    private final List<String> u;
    private final String v;
    private final long w;

    public mi(JSONObject jSONObject) throws JSONException {
        List<String> list;
        this.e = jSONObject.optString("id");
        JSONArray jSONArray = jSONObject.getJSONArray("adapters");
        ArrayList arrayList = new ArrayList(jSONArray.length());
        for (int i = 0; i < jSONArray.length(); i++) {
            arrayList.add(jSONArray.getString(i));
        }
        this.f28201a = Collections.unmodifiableList(arrayList);
        this.f = jSONObject.optString("allocation_id", null);
        zzr.zzln();
        this.h = mk.a(jSONObject, "clickurl");
        zzr.zzln();
        this.i = mk.a(jSONObject, "imp_urls");
        zzr.zzln();
        this.j = mk.a(jSONObject, "downloaded_imp_urls");
        zzr.zzln();
        this.l = mk.a(jSONObject, "fill_urls");
        zzr.zzln();
        this.m = mk.a(jSONObject, "video_start_urls");
        zzr.zzln();
        this.o = mk.a(jSONObject, "video_complete_urls");
        zzr.zzln();
        this.n = mk.a(jSONObject, "video_reward_urls");
        this.p = jSONObject.optString("transaction_id");
        this.q = jSONObject.optString("valid_from_timestamp");
        JSONObject optJSONObject = jSONObject.optJSONObject("ad");
        if (optJSONObject != null) {
            zzr.zzln();
            list = mk.a(optJSONObject, "manual_impression_urls");
        } else {
            list = null;
        }
        this.k = list;
        this.f28204d = optJSONObject != null ? optJSONObject.toString() : null;
        JSONObject optJSONObject2 = jSONObject.optJSONObject("data");
        this.f28202b = optJSONObject2 != null ? optJSONObject2.toString() : null;
        this.g = optJSONObject2 != null ? optJSONObject2.optString("class_name") : null;
        this.r = jSONObject.optString("html_template", null);
        this.s = jSONObject.optString("ad_base_url", null);
        JSONObject optJSONObject3 = jSONObject.optJSONObject("assets");
        this.t = optJSONObject3 != null ? optJSONObject3.toString() : null;
        zzr.zzln();
        this.u = mk.a(jSONObject, "template_ids");
        JSONObject optJSONObject4 = jSONObject.optJSONObject("ad_loader_options");
        this.v = optJSONObject4 != null ? optJSONObject4.toString() : null;
        this.f28203c = jSONObject.optString("response_type", null);
        this.w = jSONObject.optLong("ad_network_timeout_millis", -1L);
    }
}
