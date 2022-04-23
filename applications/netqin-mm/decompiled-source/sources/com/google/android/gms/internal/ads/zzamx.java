package com.google.android.gms.internal.ads;

import com.applovin.sdk.AppLovinEventParameters;
import com.google.android.gms.ads.internal.zzp;
import com.inmobi.ads.C8078ad;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzamx.class */
public final class zzamx {

    /* renamed from: a */
    public final List<String> f24198a;

    /* renamed from: b */
    public final String f24199b;

    /* renamed from: c */
    public final String f24200c;

    public zzamx(JSONObject jSONObject) throws JSONException {
        jSONObject.optString("id");
        JSONArray jSONArray = jSONObject.getJSONArray("adapters");
        ArrayList arrayList = new ArrayList(jSONArray.length());
        for (int i = 0; i < jSONArray.length(); i++) {
            arrayList.add(jSONArray.getString(i));
        }
        this.f24198a = Collections.unmodifiableList(arrayList);
        jSONObject.optString("allocation_id", null);
        zzp.m17951u();
        zzamz.m16644a(jSONObject, "clickurl");
        zzp.m17951u();
        zzamz.m16644a(jSONObject, "imp_urls");
        zzp.m17951u();
        zzamz.m16644a(jSONObject, "downloaded_imp_urls");
        zzp.m17951u();
        zzamz.m16644a(jSONObject, "fill_urls");
        zzp.m17951u();
        zzamz.m16644a(jSONObject, "video_start_urls");
        zzp.m17951u();
        zzamz.m16644a(jSONObject, "video_complete_urls");
        zzp.m17951u();
        zzamz.m16644a(jSONObject, "video_reward_urls");
        jSONObject.optString(AppLovinEventParameters.CHECKOUT_TRANSACTION_IDENTIFIER);
        jSONObject.optString("valid_from_timestamp");
        JSONObject optJSONObject = jSONObject.optJSONObject(C8078ad.f31587d);
        if (optJSONObject != null) {
            zzp.m17951u();
            zzamz.m16644a(optJSONObject, "manual_impression_urls");
        }
        if (optJSONObject != null) {
            optJSONObject.toString();
        }
        JSONObject optJSONObject2 = jSONObject.optJSONObject("data");
        this.f24199b = optJSONObject2 != null ? optJSONObject2.toString() : null;
        if (optJSONObject2 != null) {
            optJSONObject2.optString("class_name");
        }
        jSONObject.optString("html_template", null);
        jSONObject.optString("ad_base_url", null);
        JSONObject optJSONObject3 = jSONObject.optJSONObject("assets");
        if (optJSONObject3 != null) {
            optJSONObject3.toString();
        }
        zzp.m17951u();
        zzamz.m16644a(jSONObject, "template_ids");
        JSONObject optJSONObject4 = jSONObject.optJSONObject("ad_loader_options");
        if (optJSONObject4 != null) {
            optJSONObject4.toString();
        }
        this.f24200c = jSONObject.optString("response_type", null);
        jSONObject.optLong("ad_network_timeout_millis", -1L);
    }
}
