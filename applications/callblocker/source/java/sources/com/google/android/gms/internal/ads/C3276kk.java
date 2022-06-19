package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.C2341q;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import javax.annotation.ParametersAreNonnullByDefault;
import org.json.JSONArray;
import org.json.JSONObject;
@ParametersAreNonnullByDefault
/* renamed from: com.google.android.gms.internal.ads.kk */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/kk.class */
public final class C3276kk {

    /* renamed from: a */
    public final List<String> f16874a;

    /* renamed from: b */
    public final String f16875b;

    /* renamed from: c */
    public final String f16876c;

    /* renamed from: d */
    private final String f16877d;

    /* renamed from: e */
    private final String f16878e;

    /* renamed from: f */
    private final String f16879f;

    /* renamed from: g */
    private final String f16880g;

    /* renamed from: h */
    private final List<String> f16881h;

    /* renamed from: i */
    private final List<String> f16882i;

    /* renamed from: j */
    private final List<String> f16883j;

    /* renamed from: k */
    private final List<String> f16884k;

    /* renamed from: l */
    private final List<String> f16885l;

    /* renamed from: m */
    private final List<String> f16886m;

    /* renamed from: n */
    private final List<String> f16887n;

    /* renamed from: o */
    private final List<String> f16888o;

    /* renamed from: p */
    private final String f16889p;

    /* renamed from: q */
    private final String f16890q;

    /* renamed from: r */
    private final String f16891r;

    /* renamed from: s */
    private final String f16892s;

    /* renamed from: t */
    private final String f16893t;

    /* renamed from: u */
    private final List<String> f16894u;

    /* renamed from: v */
    private final String f16895v;

    /* renamed from: w */
    private final long f16896w;

    public C3276kk(JSONObject jSONObject) {
        List<String> list;
        this.f16878e = jSONObject.optString("id");
        JSONArray jSONArray = jSONObject.getJSONArray("adapters");
        ArrayList arrayList = new ArrayList(jSONArray.length());
        for (int i = 0; i < jSONArray.length(); i++) {
            arrayList.add(jSONArray.getString(i));
        }
        this.f16874a = Collections.unmodifiableList(arrayList);
        this.f16879f = jSONObject.optString("allocation_id", null);
        C2341q.m14726u();
        this.f16881h = C3278km.m7665a(jSONObject, "clickurl");
        C2341q.m14726u();
        this.f16882i = C3278km.m7665a(jSONObject, "imp_urls");
        C2341q.m14726u();
        this.f16883j = C3278km.m7665a(jSONObject, "downloaded_imp_urls");
        C2341q.m14726u();
        this.f16885l = C3278km.m7665a(jSONObject, "fill_urls");
        C2341q.m14726u();
        this.f16886m = C3278km.m7665a(jSONObject, "video_start_urls");
        C2341q.m14726u();
        this.f16888o = C3278km.m7665a(jSONObject, "video_complete_urls");
        C2341q.m14726u();
        this.f16887n = C3278km.m7665a(jSONObject, "video_reward_urls");
        this.f16889p = jSONObject.optString("transaction_id");
        this.f16890q = jSONObject.optString("valid_from_timestamp");
        JSONObject optJSONObject = jSONObject.optJSONObject("ad");
        if (optJSONObject != null) {
            C2341q.m14726u();
            list = C3278km.m7665a(optJSONObject, "manual_impression_urls");
        } else {
            list = null;
        }
        this.f16884k = list;
        this.f16877d = optJSONObject != null ? optJSONObject.toString() : null;
        JSONObject optJSONObject2 = jSONObject.optJSONObject("data");
        this.f16875b = optJSONObject2 != null ? optJSONObject2.toString() : null;
        this.f16880g = optJSONObject2 != null ? optJSONObject2.optString("class_name") : null;
        this.f16891r = jSONObject.optString("html_template", null);
        this.f16892s = jSONObject.optString("ad_base_url", null);
        JSONObject optJSONObject3 = jSONObject.optJSONObject("assets");
        this.f16893t = optJSONObject3 != null ? optJSONObject3.toString() : null;
        C2341q.m14726u();
        this.f16894u = C3278km.m7665a(jSONObject, "template_ids");
        JSONObject optJSONObject4 = jSONObject.optJSONObject("ad_loader_options");
        this.f16895v = optJSONObject4 != null ? optJSONObject4.toString() : null;
        this.f16876c = jSONObject.optString("response_type", null);
        this.f16896w = jSONObject.optLong("ad_network_timeout_millis", -1L);
    }
}
