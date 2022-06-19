package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.zzr;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.google.android.gms.internal.ads.mi */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/mi.class */
public final class C12742mi {

    /* renamed from: a */
    public final List<String> f49535a;

    /* renamed from: b */
    public final String f49536b;

    /* renamed from: c */
    public final String f49537c;

    /* renamed from: d */
    private final String f49538d;

    /* renamed from: e */
    private final String f49539e;

    /* renamed from: f */
    private final String f49540f;

    /* renamed from: g */
    private final String f49541g;

    /* renamed from: h */
    private final List<String> f49542h;

    /* renamed from: i */
    private final List<String> f49543i;

    /* renamed from: j */
    private final List<String> f49544j;

    /* renamed from: k */
    private final List<String> f49545k;

    /* renamed from: l */
    private final List<String> f49546l;

    /* renamed from: m */
    private final List<String> f49547m;

    /* renamed from: n */
    private final List<String> f49548n;

    /* renamed from: o */
    private final List<String> f49549o;

    /* renamed from: p */
    private final String f49550p;

    /* renamed from: q */
    private final String f49551q;

    /* renamed from: r */
    private final String f49552r;

    /* renamed from: s */
    private final String f49553s;

    /* renamed from: t */
    private final String f49554t;

    /* renamed from: u */
    private final List<String> f49555u;

    /* renamed from: v */
    private final String f49556v;

    /* renamed from: w */
    private final long f49557w;

    public C12742mi(JSONObject jSONObject) throws JSONException {
        List<String> list;
        this.f49539e = jSONObject.optString("id");
        JSONArray jSONArray = jSONObject.getJSONArray("adapters");
        ArrayList arrayList = new ArrayList(jSONArray.length());
        for (int i = 0; i < jSONArray.length(); i++) {
            arrayList.add(jSONArray.getString(i));
        }
        this.f49535a = Collections.unmodifiableList(arrayList);
        this.f49540f = jSONObject.optString("allocation_id", null);
        zzr.zzln();
        this.f49542h = C12744mk.m14489a(jSONObject, "clickurl");
        zzr.zzln();
        this.f49543i = C12744mk.m14489a(jSONObject, "imp_urls");
        zzr.zzln();
        this.f49544j = C12744mk.m14489a(jSONObject, "downloaded_imp_urls");
        zzr.zzln();
        this.f49546l = C12744mk.m14489a(jSONObject, "fill_urls");
        zzr.zzln();
        this.f49547m = C12744mk.m14489a(jSONObject, "video_start_urls");
        zzr.zzln();
        this.f49549o = C12744mk.m14489a(jSONObject, "video_complete_urls");
        zzr.zzln();
        this.f49548n = C12744mk.m14489a(jSONObject, "video_reward_urls");
        this.f49550p = jSONObject.optString("transaction_id");
        this.f49551q = jSONObject.optString("valid_from_timestamp");
        JSONObject optJSONObject = jSONObject.optJSONObject("ad");
        if (optJSONObject != null) {
            zzr.zzln();
            list = C12744mk.m14489a(optJSONObject, "manual_impression_urls");
        } else {
            list = null;
        }
        this.f49545k = list;
        this.f49538d = optJSONObject != null ? optJSONObject.toString() : null;
        JSONObject optJSONObject2 = jSONObject.optJSONObject("data");
        this.f49536b = optJSONObject2 != null ? optJSONObject2.toString() : null;
        this.f49541g = optJSONObject2 != null ? optJSONObject2.optString("class_name") : null;
        this.f49552r = jSONObject.optString("html_template", null);
        this.f49553s = jSONObject.optString("ad_base_url", null);
        JSONObject optJSONObject3 = jSONObject.optJSONObject("assets");
        this.f49554t = optJSONObject3 != null ? optJSONObject3.toString() : null;
        zzr.zzln();
        this.f49555u = C12744mk.m14489a(jSONObject, "template_ids");
        JSONObject optJSONObject4 = jSONObject.optJSONObject("ad_loader_options");
        this.f49556v = optJSONObject4 != null ? optJSONObject4.toString() : null;
        this.f49537c = jSONObject.optString("response_type", null);
        this.f49557w = jSONObject.optLong("ad_network_timeout_millis", -1L);
    }
}
