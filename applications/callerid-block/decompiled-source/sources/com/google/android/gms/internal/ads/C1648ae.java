package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.C1407r;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import javax.annotation.ParametersAreNonnullByDefault;
import org.json.JSONArray;
import org.json.JSONObject;
@ParametersAreNonnullByDefault
/* renamed from: com.google.android.gms.internal.ads.ae */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ae.class */
public final class C1648ae {

    /* renamed from: a */
    public final List<String> f5954a;

    /* renamed from: b */
    public final List<String> f5955b;

    /* renamed from: c */
    public final List<String> f5956c;

    /* renamed from: d */
    public final List<String> f5957d;

    /* renamed from: e */
    public final List<String> f5958e;

    /* renamed from: f */
    public final List<String> f5959f;

    /* renamed from: g */
    public final String f5960g;

    /* renamed from: h */
    public final List<String> f5961h;

    /* renamed from: i */
    public final List<String> f5962i;

    /* renamed from: j */
    public final List<String> f5963j;

    /* renamed from: k */
    public final List<String> f5964k;

    /* renamed from: l */
    public final String f5965l;

    public C1648ae(JSONObject jSONObject) {
        List<String> list;
        jSONObject.optString("id");
        JSONArray jSONArray = jSONObject.getJSONArray("adapters");
        ArrayList arrayList = new ArrayList(jSONArray.length());
        for (int i = 0; i < jSONArray.length(); i++) {
            arrayList.add(jSONArray.getString(i));
        }
        this.f5954a = Collections.unmodifiableList(arrayList);
        jSONObject.optString("allocation_id", null);
        C1407r.m8902v();
        this.f5955b = C1683ce.m7840a(jSONObject, "clickurl");
        C1407r.m8902v();
        this.f5956c = C1683ce.m7840a(jSONObject, "imp_urls");
        C1407r.m8902v();
        this.f5957d = C1683ce.m7840a(jSONObject, "downloaded_imp_urls");
        C1407r.m8902v();
        this.f5959f = C1683ce.m7840a(jSONObject, "fill_urls");
        C1407r.m8902v();
        this.f5961h = C1683ce.m7840a(jSONObject, "video_start_urls");
        C1407r.m8902v();
        this.f5963j = C1683ce.m7840a(jSONObject, "video_complete_urls");
        C1407r.m8902v();
        this.f5962i = C1683ce.m7840a(jSONObject, "video_reward_urls");
        jSONObject.optString("transaction_id");
        jSONObject.optString("valid_from_timestamp");
        JSONObject optJSONObject = jSONObject.optJSONObject("ad");
        if (optJSONObject != null) {
            C1407r.m8902v();
            list = C1683ce.m7840a(optJSONObject, "manual_impression_urls");
        } else {
            list = null;
        }
        this.f5958e = list;
        if (optJSONObject != null) {
            optJSONObject.toString();
        }
        JSONObject optJSONObject2 = jSONObject.optJSONObject("data");
        this.f5960g = optJSONObject2 != null ? optJSONObject2.toString() : null;
        if (optJSONObject2 != null) {
            optJSONObject2.optString("class_name");
        }
        jSONObject.optString("html_template", null);
        jSONObject.optString("ad_base_url", null);
        JSONObject optJSONObject3 = jSONObject.optJSONObject("assets");
        if (optJSONObject3 != null) {
            optJSONObject3.toString();
        }
        C1407r.m8902v();
        this.f5964k = C1683ce.m7840a(jSONObject, "template_ids");
        JSONObject optJSONObject4 = jSONObject.optJSONObject("ad_loader_options");
        if (optJSONObject4 != null) {
            optJSONObject4.toString();
        }
        this.f5965l = jSONObject.optString("response_type", null);
        jSONObject.optLong("ad_network_timeout_millis", -1L);
    }
}
