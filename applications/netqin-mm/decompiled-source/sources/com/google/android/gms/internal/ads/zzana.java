package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.zzp;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzana.class */
public final class zzana {

    /* renamed from: a */
    public final List<zzamx> f24201a;

    public zzana(JSONObject jSONObject) throws JSONException {
        boolean z;
        if (zzbbq.m15859a(2)) {
            String valueOf = String.valueOf(jSONObject.toString(2));
            zzayp.m16153g(valueOf.length() != 0 ? "Mediation Response JSON: ".concat(valueOf) : new String("Mediation Response JSON: "));
        }
        JSONArray jSONArray = jSONObject.getJSONArray("ad_networks");
        ArrayList arrayList = new ArrayList(jSONArray.length());
        int i = -1;
        for (int i2 = 0; i2 < jSONArray.length(); i2++) {
            try {
                zzamx zzamxVar = new zzamx(jSONArray.getJSONObject(i2));
                "banner".equalsIgnoreCase(zzamxVar.f24200c);
                arrayList.add(zzamxVar);
                i = i;
                if (i < 0) {
                    Iterator<String> it = zzamxVar.f24198a.iterator();
                    while (true) {
                        if (it.hasNext()) {
                            if (it.next().equals("com.google.ads.mediation.admob.AdMobAdapter")) {
                                z = true;
                                break;
                            }
                        } else {
                            z = false;
                            break;
                        }
                    }
                    i = i;
                    if (z) {
                        i = i2;
                    }
                }
            } catch (JSONException e) {
                i = i;
            }
        }
        jSONArray.length();
        this.f24201a = Collections.unmodifiableList(arrayList);
        jSONObject.optString("qdata");
        jSONObject.optInt("fs_model_type", -1);
        jSONObject.optLong("timeout_ms", -1L);
        JSONObject optJSONObject = jSONObject.optJSONObject("settings");
        if (optJSONObject != null) {
            optJSONObject.optLong("ad_network_timeout_millis", -1L);
            zzp.m17951u();
            zzamz.m16644a(optJSONObject, "click_urls");
            zzp.m17951u();
            zzamz.m16644a(optJSONObject, "imp_urls");
            zzp.m17951u();
            zzamz.m16644a(optJSONObject, "downloaded_imp_urls");
            zzp.m17951u();
            zzamz.m16644a(optJSONObject, "nofill_urls");
            zzp.m17951u();
            zzamz.m16644a(optJSONObject, "remote_ping_urls");
            optJSONObject.optBoolean("render_in_browser", false);
            optJSONObject.optLong("refresh", -1L);
            zzauv a = zzauv.m16318a(optJSONObject.optJSONArray("rewards"));
            if (a != null) {
                String str = a.f24528a;
                int i3 = a.f24529b;
            }
            optJSONObject.optBoolean("use_displayed_impression", false);
            optJSONObject.optBoolean("allow_pub_rendered_attribution", false);
            optJSONObject.optBoolean("allow_pub_owned_ad_view", false);
            optJSONObject.optBoolean("allow_custom_click_gesture", false);
        }
    }
}
