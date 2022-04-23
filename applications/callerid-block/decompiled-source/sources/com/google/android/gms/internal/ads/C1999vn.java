package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import com.google.android.gms.ads.internal.C1407r;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.google.android.gms.internal.ads.vn */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/vn.class */
public final class C1999vn {

    /* renamed from: d */
    private String f8927d;

    /* renamed from: e */
    private String f8928e;

    /* renamed from: f */
    private long f8929f;

    /* renamed from: g */
    private JSONObject f8930g;

    /* renamed from: h */
    private boolean f8931h;

    /* renamed from: j */
    private boolean f8933j;

    /* renamed from: a */
    private final List<String> f8924a = new ArrayList();

    /* renamed from: b */
    private final List<String> f8925b = new ArrayList();

    /* renamed from: c */
    private final Map<String, C1663be> f8926c = new HashMap();

    /* renamed from: i */
    private final List<String> f8932i = new ArrayList();

    public C1999vn(String str, long j) {
        JSONObject optJSONObject;
        JSONObject optJSONObject2;
        JSONArray optJSONArray;
        JSONObject optJSONObject3;
        this.f8931h = false;
        this.f8933j = false;
        this.f8928e = str;
        this.f8929f = j;
        if (!TextUtils.isEmpty(str)) {
            try {
                JSONObject jSONObject = new JSONObject(str);
                this.f8930g = jSONObject;
                if (jSONObject.optInt("status", -1) != 1) {
                    this.f8931h = false;
                    C1894po.m6180f("App settings could not be fetched successfully.");
                    return;
                }
                this.f8931h = true;
                this.f8927d = this.f8930g.optString("app_id");
                JSONArray optJSONArray2 = this.f8930g.optJSONArray("ad_unit_id_settings");
                if (optJSONArray2 != null) {
                    for (int i = 0; i < optJSONArray2.length(); i++) {
                        JSONObject jSONObject2 = optJSONArray2.getJSONObject(i);
                        String optString = jSONObject2.optString("format");
                        String optString2 = jSONObject2.optString("ad_unit_id");
                        if (!TextUtils.isEmpty(optString) && !TextUtils.isEmpty(optString2)) {
                            if ("interstitial".equalsIgnoreCase(optString)) {
                                this.f8925b.add(optString2);
                            } else if (("rewarded".equalsIgnoreCase(optString) || "rewarded_interstitial".equals(optString)) && (optJSONObject3 = jSONObject2.optJSONObject("mediation_config")) != null) {
                                this.f8926c.put(optString2, new C1663be(optJSONObject3));
                            }
                        }
                    }
                }
                JSONArray optJSONArray3 = this.f8930g.optJSONArray("persistable_banner_ad_unit_ids");
                if (optJSONArray3 != null) {
                    for (int i2 = 0; i2 < optJSONArray3.length(); i2++) {
                        this.f8924a.add(optJSONArray3.optString(i2));
                    }
                }
                if (!(!((Boolean) C1674c.m7906c().m6878b(C1842m3.f7501s4)).booleanValue() || (optJSONObject2 = this.f8930g.optJSONObject("common_settings")) == null || (optJSONArray = optJSONObject2.optJSONArray("loeid")) == null)) {
                    for (int i3 = 0; i3 < optJSONArray.length(); i3++) {
                        this.f8932i.add(optJSONArray.get(i3).toString());
                    }
                }
                if (((Boolean) C1674c.m7906c().m6878b(C1842m3.f7326S3)).booleanValue() && (optJSONObject = this.f8930g.optJSONObject("common_settings")) != null) {
                    this.f8933j = optJSONObject.optBoolean("is_prefetching_enabled", false);
                }
            } catch (JSONException e) {
                C1894po.m6179g("Exception occurred while processing app setting json", e);
                C1407r.m8916h().m4590g(e, "AppSettings.parseAppSettingsJson");
            }
        }
    }

    /* renamed from: a */
    public final void m5209a(long j) {
        this.f8929f = j;
    }

    /* renamed from: b */
    public final long m5208b() {
        return this.f8929f;
    }

    /* renamed from: c */
    public final boolean m5207c() {
        return this.f8931h;
    }

    /* renamed from: d */
    public final String m5206d() {
        return this.f8928e;
    }

    /* renamed from: e */
    public final String m5205e() {
        return this.f8927d;
    }

    /* renamed from: f */
    public final Map<String, C1663be> m5204f() {
        return this.f8926c;
    }

    /* renamed from: g */
    public final JSONObject m5203g() {
        return this.f8930g;
    }

    /* renamed from: h */
    public final List<String> m5202h() {
        return this.f8932i;
    }

    /* renamed from: i */
    public final boolean m5201i() {
        return this.f8933j;
    }
}
