package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import com.google.android.gms.ads.internal.C5667s;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/jh0.class */
public final class jh0 {

    /* renamed from: d */
    private String f24874d;

    /* renamed from: e */
    private String f24875e;

    /* renamed from: f */
    private long f24876f;

    /* renamed from: g */
    private JSONObject f24877g;

    /* renamed from: h */
    private boolean f24878h;

    /* renamed from: j */
    private boolean f24880j;

    /* renamed from: a */
    private final List<String> f24871a = new ArrayList();

    /* renamed from: b */
    private final List<String> f24872b = new ArrayList();

    /* renamed from: c */
    private final Map<String, n70> f24873c = new HashMap();

    /* renamed from: i */
    private final List<String> f24879i = new ArrayList();

    public jh0(String str, long j) {
        JSONObject optJSONObject;
        JSONObject optJSONObject2;
        JSONArray optJSONArray;
        JSONObject optJSONObject3;
        this.f24878h = false;
        this.f24880j = false;
        this.f24875e = str;
        this.f24876f = j;
        if (TextUtils.isEmpty(str)) {
            return;
        }
        try {
            JSONObject jSONObject = new JSONObject(str);
            this.f24877g = jSONObject;
            if (jSONObject.optInt("status", -1) != 1) {
                this.f24878h = false;
                ei0.m15464f("App settings could not be fetched successfully.");
                return;
            }
            this.f24878h = true;
            this.f24874d = this.f24877g.optString("app_id");
            JSONArray optJSONArray2 = this.f24877g.optJSONArray("ad_unit_id_settings");
            if (optJSONArray2 != null) {
                for (int i = 0; i < optJSONArray2.length(); i++) {
                    JSONObject jSONObject2 = optJSONArray2.getJSONObject(i);
                    String optString = jSONObject2.optString("format");
                    String optString2 = jSONObject2.optString("ad_unit_id");
                    if (!TextUtils.isEmpty(optString) && !TextUtils.isEmpty(optString2)) {
                        if ("interstitial".equalsIgnoreCase(optString)) {
                            this.f24872b.add(optString2);
                        } else if (("rewarded".equalsIgnoreCase(optString) || "rewarded_interstitial".equals(optString)) && (optJSONObject3 = jSONObject2.optJSONObject("mediation_config")) != null) {
                            this.f24873c.put(optString2, new n70(optJSONObject3));
                        }
                    }
                }
            }
            JSONArray optJSONArray3 = this.f24877g.optJSONArray("persistable_banner_ad_unit_ids");
            if (optJSONArray3 != null) {
                for (int i2 = 0; i2 < optJSONArray3.length(); i2++) {
                    this.f24871a.add(optJSONArray3.optString(i2));
                }
            }
            if (((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25692f5)).booleanValue() && (optJSONObject2 = this.f24877g.optJSONObject("common_settings")) != null && (optJSONArray = optJSONObject2.optJSONArray("loeid")) != null) {
                for (int i3 = 0; i3 < optJSONArray.length(); i3++) {
                    this.f24879i.add(optJSONArray.get(i3).toString());
                }
            }
            if (!((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25464D4)).booleanValue() || (optJSONObject = this.f24877g.optJSONObject("common_settings")) == null) {
                return;
            }
            this.f24880j = optJSONObject.optBoolean("is_prefetching_enabled", false);
        } catch (JSONException e) {
            ei0.m15463g("Exception occurred while processing app setting json", e);
            C5667s.m18156h().m12235k(e, "AppSettings.parseAppSettingsJson");
        }
    }

    /* renamed from: a */
    public final void m14126a(long j) {
        this.f24876f = j;
    }

    /* renamed from: b */
    public final long m14125b() {
        return this.f24876f;
    }

    /* renamed from: c */
    public final boolean m14124c() {
        return this.f24878h;
    }

    /* renamed from: d */
    public final String m14123d() {
        return this.f24875e;
    }

    /* renamed from: e */
    public final String m14122e() {
        return this.f24874d;
    }

    /* renamed from: f */
    public final Map<String, n70> m14121f() {
        return this.f24873c;
    }

    /* renamed from: g */
    public final JSONObject m14120g() {
        return this.f24877g;
    }

    /* renamed from: h */
    public final List<String> m14119h() {
        return this.f24879i;
    }

    /* renamed from: i */
    public final boolean m14118i() {
        return this.f24880j;
    }
}
