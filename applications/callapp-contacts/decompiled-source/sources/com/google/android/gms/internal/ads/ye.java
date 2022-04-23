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
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ye.class */
public final class ye {

    /* renamed from: b  reason: collision with root package name */
    public String f28531b;

    /* renamed from: c  reason: collision with root package name */
    public String f28532c;

    /* renamed from: d  reason: collision with root package name */
    public long f28533d;
    JSONObject e;
    public boolean f;
    private final List<String> h = new ArrayList();
    private final List<String> i = new ArrayList();

    /* renamed from: a  reason: collision with root package name */
    final Map<String, mh> f28530a = new HashMap();
    final List<String> g = new ArrayList();

    public ye(String str, long j) {
        JSONObject optJSONObject;
        JSONArray optJSONArray;
        JSONObject optJSONObject2;
        this.f = false;
        this.f28532c = str;
        this.f28533d = j;
        if (!TextUtils.isEmpty(str)) {
            try {
                JSONObject jSONObject = new JSONObject(str);
                this.e = jSONObject;
                if (jSONObject.optInt("status", -1) != 1) {
                    this.f = false;
                    zzd.zzez("App settings could not be fetched successfully.");
                    return;
                }
                this.f = true;
                this.f28531b = this.e.optString(PangleAdapterConfiguration.APP_ID_EXTRA_KEY);
                JSONArray optJSONArray2 = this.e.optJSONArray("ad_unit_id_settings");
                if (optJSONArray2 != null) {
                    for (int i = 0; i < optJSONArray2.length(); i++) {
                        JSONObject jSONObject2 = optJSONArray2.getJSONObject(i);
                        String optString = jSONObject2.optString("format");
                        String optString2 = jSONObject2.optString(CriteoBiddingInterstital.AD_UNIT_ID_KEY);
                        if (!TextUtils.isEmpty(optString) && !TextUtils.isEmpty(optString2)) {
                            if (AdType.INTERSTITIAL.equalsIgnoreCase(optString)) {
                                this.i.add(optString2);
                            } else if ((Reporting.AdFormat.REWARDED.equalsIgnoreCase(optString) || "rewarded_interstitial".equals(optString)) && (optJSONObject2 = jSONObject2.optJSONObject("mediation_config")) != null) {
                                this.f28530a.put(optString2, new mh(optJSONObject2));
                            }
                        }
                    }
                }
                JSONArray optJSONArray3 = this.e.optJSONArray("persistable_banner_ad_unit_ids");
                if (optJSONArray3 != null) {
                    for (int i2 = 0; i2 < optJSONArray3.length(); i2++) {
                        this.h.add(optJSONArray3.optString(i2));
                    }
                }
                if (!(!((Boolean) ekb.e().a(aq.eq)).booleanValue() || (optJSONObject = this.e.optJSONObject("common_settings")) == null || (optJSONArray = optJSONObject.optJSONArray("loeid")) == null)) {
                    for (int i3 = 0; i3 < optJSONArray.length(); i3++) {
                        this.g.add(optJSONArray.get(i3).toString());
                    }
                }
            } catch (JSONException e) {
                zzd.zzd("Exception occurred while processing app setting json", e);
                zzr.zzkz().a(e, "AppSettings.parseAppSettingsJson");
            }
        }
    }
}
