package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.C5667s;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/m70.class */
public final class m70 {

    /* renamed from: a */
    public final String f26458a;

    /* renamed from: b */
    public final String f26459b;

    /* renamed from: c */
    public final List<String> f26460c;

    /* renamed from: d */
    public final String f26461d;

    /* renamed from: e */
    public final String f26462e;

    /* renamed from: f */
    public final List<String> f26463f;

    /* renamed from: g */
    public final List<String> f26464g;

    /* renamed from: h */
    public final List<String> f26465h;

    /* renamed from: i */
    public final List<String> f26466i;

    /* renamed from: j */
    public final List<String> f26467j;

    /* renamed from: k */
    public final String f26468k;

    /* renamed from: l */
    public final List<String> f26469l;

    /* renamed from: m */
    public final List<String> f26470m;

    /* renamed from: n */
    public final List<String> f26471n;

    /* renamed from: o */
    public final String f26472o;

    /* renamed from: p */
    public final String f26473p;

    /* renamed from: q */
    public final String f26474q;

    /* renamed from: r */
    public final String f26475r;

    /* renamed from: s */
    public final String f26476s;

    /* renamed from: t */
    public final List<String> f26477t;

    /* renamed from: u */
    public final String f26478u;

    /* renamed from: v */
    public final String f26479v;

    public m70(JSONObject jSONObject) {
        List<String> list;
        this.f26459b = jSONObject.optString("id");
        JSONArray jSONArray = jSONObject.getJSONArray("adapters");
        ArrayList arrayList = new ArrayList(jSONArray.length());
        for (int i = 0; i < jSONArray.length(); i++) {
            arrayList.add(jSONArray.getString(i));
        }
        this.f26460c = Collections.unmodifiableList(arrayList);
        this.f26461d = jSONObject.optString("allocation_id", null);
        C5667s.m18142v();
        this.f26463f = o70.m12714a(jSONObject, "clickurl");
        C5667s.m18142v();
        this.f26464g = o70.m12714a(jSONObject, "imp_urls");
        C5667s.m18142v();
        this.f26465h = o70.m12714a(jSONObject, "downloaded_imp_urls");
        C5667s.m18142v();
        this.f26467j = o70.m12714a(jSONObject, "fill_urls");
        C5667s.m18142v();
        this.f26469l = o70.m12714a(jSONObject, "video_start_urls");
        C5667s.m18142v();
        this.f26471n = o70.m12714a(jSONObject, "video_complete_urls");
        C5667s.m18142v();
        this.f26470m = o70.m12714a(jSONObject, "video_reward_urls");
        this.f26472o = jSONObject.optString("transaction_id");
        this.f26473p = jSONObject.optString("valid_from_timestamp");
        JSONObject optJSONObject = jSONObject.optJSONObject("ad");
        if (optJSONObject != null) {
            C5667s.m18142v();
            list = o70.m12714a(optJSONObject, "manual_impression_urls");
        } else {
            list = null;
        }
        this.f26466i = list;
        this.f26458a = optJSONObject != null ? optJSONObject.toString() : null;
        JSONObject optJSONObject2 = jSONObject.optJSONObject("data");
        this.f26468k = optJSONObject2 != null ? optJSONObject2.toString() : null;
        this.f26462e = optJSONObject2 != null ? optJSONObject2.optString("class_name") : null;
        this.f26474q = jSONObject.optString("html_template", null);
        this.f26475r = jSONObject.optString("ad_base_url", null);
        JSONObject optJSONObject3 = jSONObject.optJSONObject("assets");
        this.f26476s = optJSONObject3 != null ? optJSONObject3.toString() : null;
        C5667s.m18142v();
        this.f26477t = o70.m12714a(jSONObject, "template_ids");
        JSONObject optJSONObject4 = jSONObject.optJSONObject("ad_loader_options");
        this.f26478u = optJSONObject4 != null ? optJSONObject4.toString() : null;
        this.f26479v = jSONObject.optString("response_type", null);
        jSONObject.optLong("ad_network_timeout_millis", -1L);
    }
}
