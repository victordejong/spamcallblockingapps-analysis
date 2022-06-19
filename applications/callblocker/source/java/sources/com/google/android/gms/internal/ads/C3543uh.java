package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import com.google.android.gms.ads.internal.C2341q;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.google.android.gms.internal.ads.uh */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/uh.class */
public final class C3543uh {

    /* renamed from: a */
    private final long f17424a;

    /* renamed from: b */
    private final List<String> f17425b = new ArrayList();

    /* renamed from: c */
    private final List<String> f17426c = new ArrayList();

    /* renamed from: d */
    private final Map<String, C3275kj> f17427d = new HashMap();

    /* renamed from: e */
    private String f17428e;

    /* renamed from: f */
    private String f17429f;

    /* renamed from: g */
    private JSONObject f17430g;

    /* renamed from: h */
    private boolean f17431h;

    public C3543uh(String str, long j) {
        JSONObject optJSONObject;
        this.f17431h = false;
        this.f17429f = str;
        this.f17424a = j;
        if (!TextUtils.isEmpty(str)) {
            try {
                this.f17430g = new JSONObject(str);
                if (this.f17430g.optInt("status", -1) != 1) {
                    this.f17431h = false;
                    C3556uu.m6745e("App settings could not be fetched successfully.");
                    return;
                }
                this.f17431h = true;
                this.f17428e = this.f17430g.optString("app_id");
                JSONArray optJSONArray = this.f17430g.optJSONArray("ad_unit_id_settings");
                if (optJSONArray != null) {
                    for (int i = 0; i < optJSONArray.length(); i++) {
                        JSONObject jSONObject = optJSONArray.getJSONObject(i);
                        String optString = jSONObject.optString("format");
                        String optString2 = jSONObject.optString("ad_unit_id");
                        if (!TextUtils.isEmpty(optString) && !TextUtils.isEmpty(optString2)) {
                            if ("interstitial".equalsIgnoreCase(optString)) {
                                this.f17426c.add(optString2);
                            } else if ("rewarded".equalsIgnoreCase(optString) && (optJSONObject = jSONObject.optJSONObject("mediation_config")) != null) {
                                this.f17427d.put(optString2, new C3275kj(optJSONObject));
                            }
                        }
                    }
                }
                JSONArray optJSONArray2 = this.f17430g.optJSONArray("persistable_banner_ad_unit_ids");
                if (optJSONArray2 == null) {
                    return;
                }
                for (int i2 = 0; i2 < optJSONArray2.length(); i2++) {
                    this.f17425b.add(optJSONArray2.optString(i2));
                }
            } catch (JSONException e) {
                C3556uu.m6746d("Exception occurred while processing app setting json", e);
                C2341q.m14740g().m7095a(e, "AppSettings.parseAppSettingsJson");
            }
        }
    }

    /* renamed from: a */
    public final long m7079a() {
        return this.f17424a;
    }

    /* renamed from: b */
    public final boolean m7078b() {
        return this.f17431h;
    }

    /* renamed from: c */
    public final String m7077c() {
        return this.f17429f;
    }

    /* renamed from: d */
    public final String m7076d() {
        return this.f17428e;
    }

    /* renamed from: e */
    public final Map<String, C3275kj> m7075e() {
        return this.f17427d;
    }

    /* renamed from: f */
    public final JSONObject m7074f() {
        return this.f17430g;
    }
}
