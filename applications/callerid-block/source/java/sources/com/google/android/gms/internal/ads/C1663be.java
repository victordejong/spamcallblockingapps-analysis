package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.C1407r;
import com.google.android.gms.ads.internal.util.y0;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.google.android.gms.internal.ads.be */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/be.class */
public final class C1663be {

    /* renamed from: a */
    public final List<C1648ae> f6136a;

    /* renamed from: b */
    public final List<String> f6137b;

    /* renamed from: c */
    public final List<String> f6138c;

    /* renamed from: d */
    public final List<String> f6139d;

    /* renamed from: e */
    public final List<String> f6140e;

    /* renamed from: f */
    public final List<String> f6141f;

    public C1663be(JSONObject jSONObject) {
        int i;
        if (C1894po.m6176j(2)) {
            String valueOf = String.valueOf(jSONObject.toString(2));
            y0.k(valueOf.length() != 0 ? "Mediation Response JSON: ".concat(valueOf) : new String("Mediation Response JSON: "));
        }
        JSONArray jSONArray = jSONObject.getJSONArray("ad_networks");
        ArrayList arrayList = new ArrayList(jSONArray.length());
        int i2 = 0;
        int i3 = -1;
        while (true) {
            int i4 = i3;
            if (i2 >= jSONArray.length()) {
                break;
            }
            try {
                C1648ae c1648ae = new C1648ae(jSONArray.getJSONObject(i2));
                "banner".equalsIgnoreCase(c1648ae.f5965l);
                arrayList.add(c1648ae);
                i = i4;
                if (i4 < 0) {
                    Iterator<String> it = c1648ae.f5954a.iterator();
                    while (true) {
                        i = i4;
                        if (it.hasNext()) {
                            if (it.next().equals("com.google.ads.mediation.admob.AdMobAdapter")) {
                                i = i2;
                                break;
                            }
                        } else {
                            break;
                        }
                    }
                }
            } catch (JSONException e) {
                i = i4;
            }
            i2++;
            i3 = i;
        }
        jSONArray.length();
        this.f6136a = Collections.unmodifiableList(arrayList);
        jSONObject.optString("qdata");
        jSONObject.optInt("fs_model_type", -1);
        jSONObject.optLong("timeout_ms", -1L);
        JSONObject optJSONObject = jSONObject.optJSONObject("settings");
        if (optJSONObject != null) {
            optJSONObject.optLong("ad_network_timeout_millis", -1L);
            C1407r.m8902v();
            this.f6137b = C1683ce.m7840a(optJSONObject, "click_urls");
            C1407r.m8902v();
            this.f6138c = C1683ce.m7840a(optJSONObject, "imp_urls");
            C1407r.m8902v();
            this.f6139d = C1683ce.m7840a(optJSONObject, "downloaded_imp_urls");
            C1407r.m8902v();
            this.f6140e = C1683ce.m7840a(optJSONObject, "nofill_urls");
            C1407r.m8902v();
            this.f6141f = C1683ce.m7840a(optJSONObject, "remote_ping_urls");
            optJSONObject.optBoolean("render_in_browser", false);
            optJSONObject.optLong("refresh", -1L);
            zzaxe a = zzaxe.a(optJSONObject.optJSONArray("rewards"));
            if (a != null) {
                String str = a.b;
            }
            optJSONObject.optBoolean("use_displayed_impression", false);
            optJSONObject.optBoolean("allow_pub_rendered_attribution", false);
            optJSONObject.optBoolean("allow_pub_owned_ad_view", false);
            optJSONObject.optBoolean("allow_custom_click_gesture", false);
        }
    }
}
