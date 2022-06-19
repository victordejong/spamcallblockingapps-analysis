package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.C5667s;
import com.google.android.gms.ads.internal.util.C5722o1;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/n70.class */
public final class n70 {

    /* renamed from: a */
    public final List<m70> f27005a;

    /* renamed from: b */
    public final List<String> f27006b;

    /* renamed from: c */
    public final List<String> f27007c;

    /* renamed from: d */
    public final List<String> f27008d;

    /* renamed from: e */
    public final List<String> f27009e;

    /* renamed from: f */
    public final List<String> f27010f;

    /* renamed from: g */
    public final String f27011g;

    /* renamed from: h */
    public final String f27012h;

    public n70(JSONObject jSONObject) {
        int i;
        if (ei0.m15460j(2)) {
            String valueOf = String.valueOf(jSONObject.toString(2));
            C5722o1.m17990k(valueOf.length() != 0 ? "Mediation Response JSON: ".concat(valueOf) : new String("Mediation Response JSON: "));
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
                m70 m70Var = new m70(jSONArray.getJSONObject(i2));
                "banner".equalsIgnoreCase(m70Var.f26479v);
                arrayList.add(m70Var);
                i = i4;
                if (i4 < 0) {
                    Iterator<String> it = m70Var.f26460c.iterator();
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
        this.f27005a = Collections.unmodifiableList(arrayList);
        this.f27011g = jSONObject.optString("qdata");
        jSONObject.optInt("fs_model_type", -1);
        jSONObject.optLong("timeout_ms", -1L);
        JSONObject optJSONObject = jSONObject.optJSONObject("settings");
        if (optJSONObject == null) {
            this.f27006b = null;
            this.f27007c = null;
            this.f27008d = null;
            this.f27009e = null;
            this.f27010f = null;
            this.f27012h = null;
            return;
        }
        optJSONObject.optLong("ad_network_timeout_millis", -1L);
        C5667s.m18142v();
        this.f27006b = o70.m12714a(optJSONObject, "click_urls");
        C5667s.m18142v();
        this.f27007c = o70.m12714a(optJSONObject, "imp_urls");
        C5667s.m18142v();
        this.f27008d = o70.m12714a(optJSONObject, "downloaded_imp_urls");
        C5667s.m18142v();
        this.f27009e = o70.m12714a(optJSONObject, "nofill_urls");
        C5667s.m18142v();
        this.f27010f = o70.m12714a(optJSONObject, "remote_ping_urls");
        optJSONObject.optBoolean("render_in_browser", false);
        optJSONObject.optLong("refresh", -1L);
        zzccl m8068k0 = zzccl.m8068k0(optJSONObject.optJSONArray("rewards"));
        if (m8068k0 == null) {
            this.f27012h = null;
        } else {
            this.f27012h = m8068k0.f33838d;
        }
        optJSONObject.optBoolean("use_displayed_impression", false);
        optJSONObject.optBoolean("allow_pub_rendered_attribution", false);
        optJSONObject.optBoolean("allow_pub_owned_ad_view", false);
        optJSONObject.optBoolean("allow_custom_click_gesture", false);
    }
}
