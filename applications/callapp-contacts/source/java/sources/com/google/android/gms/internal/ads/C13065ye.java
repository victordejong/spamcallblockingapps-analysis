package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.ads.internal.zzr;
import com.mopub.common.AdType;
import com.mopub.mobileads.CriteoBiddingInterstital;
import com.mopub.mobileads.PangleAdapterConfiguration;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import net.pubnative.lite.sdk.analytics.Reporting;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.google.android.gms.internal.ads.ye */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ye.class */
public final class C13065ye {

    /* renamed from: b */
    public String f50056b;

    /* renamed from: c */
    public String f50057c;

    /* renamed from: d */
    public long f50058d;

    /* renamed from: e */
    JSONObject f50059e;

    /* renamed from: f */
    public boolean f50060f;

    /* renamed from: h */
    private final List<String> f50062h = new ArrayList();

    /* renamed from: i */
    private final List<String> f50063i = new ArrayList();

    /* renamed from: a */
    final Map<String, C12741mh> f50055a = new HashMap();

    /* renamed from: g */
    final List<String> f50061g = new ArrayList();

    public C13065ye(String str, long j) {
        JSONObject optJSONObject;
        JSONArray optJSONArray;
        JSONObject optJSONObject2;
        this.f50060f = false;
        this.f50057c = str;
        this.f50058d = j;
        if (!TextUtils.isEmpty(str)) {
            try {
                JSONObject jSONObject = new JSONObject(str);
                this.f50059e = jSONObject;
                if (jSONObject.optInt("status", -1) != 1) {
                    this.f50060f = false;
                    zzd.zzez("App settings could not be fetched successfully.");
                    return;
                }
                this.f50060f = true;
                this.f50056b = this.f50059e.optString(PangleAdapterConfiguration.APP_ID_EXTRA_KEY);
                JSONArray optJSONArray2 = this.f50059e.optJSONArray("ad_unit_id_settings");
                if (optJSONArray2 != null) {
                    for (int i = 0; i < optJSONArray2.length(); i++) {
                        JSONObject jSONObject2 = optJSONArray2.getJSONObject(i);
                        String optString = jSONObject2.optString("format");
                        String optString2 = jSONObject2.optString(CriteoBiddingInterstital.AD_UNIT_ID_KEY);
                        if (!TextUtils.isEmpty(optString) && !TextUtils.isEmpty(optString2)) {
                            if (AdType.INTERSTITIAL.equalsIgnoreCase(optString)) {
                                this.f50063i.add(optString2);
                            } else if ((Reporting.AdFormat.REWARDED.equalsIgnoreCase(optString) || "rewarded_interstitial".equals(optString)) && (optJSONObject2 = jSONObject2.optJSONObject("mediation_config")) != null) {
                                this.f50055a.put(optString2, new C12741mh(optJSONObject2));
                            }
                        }
                    }
                }
                JSONArray optJSONArray3 = this.f50059e.optJSONArray("persistable_banner_ad_unit_ids");
                if (optJSONArray3 != null) {
                    for (int i2 = 0; i2 < optJSONArray3.length(); i2++) {
                        this.f50062h.add(optJSONArray3.optString(i2));
                    }
                }
                if (!((Boolean) ekb.m14831e().m18571a(C12187aq.f42892eq)).booleanValue() || (optJSONObject = this.f50059e.optJSONObject("common_settings")) == null || (optJSONArray = optJSONObject.optJSONArray("loeid")) == null) {
                    return;
                }
                for (int i3 = 0; i3 < optJSONArray.length(); i3++) {
                    this.f50061g.add(optJSONArray.get(i3).toString());
                }
            } catch (JSONException e) {
                zzd.zzd("Exception occurred while processing app setting json", e);
                zzr.zzkz().m13979a(e, "AppSettings.parseAppSettingsJson");
            }
        }
    }
}
