package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import com.google.android.gms.ads.internal.zzp;
import com.mopub.common.AdType;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzaxy.class */
public final class zzaxy {

    /* renamed from: a */
    public final long f24602a;

    /* renamed from: b */
    public final List<String> f24603b = new ArrayList();

    /* renamed from: c */
    public final List<String> f24604c = new ArrayList();

    /* renamed from: d */
    public final Map<String, zzana> f24605d = new HashMap();

    /* renamed from: e */
    public String f24606e;

    /* renamed from: f */
    public String f24607f;

    /* renamed from: g */
    public JSONObject f24608g;

    /* renamed from: h */
    public boolean f24609h;

    public zzaxy(String str, long j) {
        JSONObject optJSONObject;
        this.f24609h = false;
        this.f24607f = str;
        this.f24602a = j;
        if (!TextUtils.isEmpty(str)) {
            try {
                JSONObject jSONObject = new JSONObject(str);
                this.f24608g = jSONObject;
                if (jSONObject.optInt("status", -1) != 1) {
                    this.f24609h = false;
                    zzbbq.m15852d("App settings could not be fetched successfully.");
                    return;
                }
                this.f24609h = true;
                this.f24606e = this.f24608g.optString("app_id");
                JSONArray optJSONArray = this.f24608g.optJSONArray("ad_unit_id_settings");
                if (optJSONArray != null) {
                    for (int i = 0; i < optJSONArray.length(); i++) {
                        JSONObject jSONObject2 = optJSONArray.getJSONObject(i);
                        String optString = jSONObject2.optString("format");
                        String optString2 = jSONObject2.optString("ad_unit_id");
                        if (!TextUtils.isEmpty(optString) && !TextUtils.isEmpty(optString2)) {
                            if (AdType.INTERSTITIAL.equalsIgnoreCase(optString)) {
                                this.f24604c.add(optString2);
                            } else if ("rewarded".equalsIgnoreCase(optString) && (optJSONObject = jSONObject2.optJSONObject("mediation_config")) != null) {
                                this.f24605d.put(optString2, new zzana(optJSONObject));
                            }
                        }
                    }
                }
                JSONArray optJSONArray2 = this.f24608g.optJSONArray("persistable_banner_ad_unit_ids");
                if (optJSONArray2 != null) {
                    for (int i2 = 0; i2 < optJSONArray2.length(); i2++) {
                        this.f24603b.add(optJSONArray2.optString(i2));
                    }
                }
            } catch (JSONException e) {
                zzbbq.m15853c("Exception occurred while processing app setting json", e);
                zzp.m17965g().m16188a(e, "AppSettings.parseAppSettingsJson");
            }
        }
    }

    /* renamed from: a */
    public final long m16199a() {
        return this.f24602a;
    }

    /* renamed from: b */
    public final boolean m16198b() {
        return this.f24609h;
    }

    /* renamed from: c */
    public final String m16197c() {
        return this.f24607f;
    }

    /* renamed from: d */
    public final String m16196d() {
        return this.f24606e;
    }

    /* renamed from: e */
    public final Map<String, zzana> m16195e() {
        return this.f24605d;
    }

    /* renamed from: f */
    public final JSONObject m16194f() {
        return this.f24608g;
    }
}
