package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.zzr;
import com.mopub.mobileads.CriteoBiddingInterstital;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executor;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bji.class */
public final class bji {

    /* renamed from: a */
    final Map<String, Map<String, JSONObject>> f44095a = new ConcurrentHashMap();

    /* renamed from: b */
    JSONObject f44096b;

    /* renamed from: c */
    final Executor f44097c;

    /* renamed from: d */
    boolean f44098d;

    /* renamed from: e */
    JSONObject f44099e;

    public bji(Executor executor) {
        this.f44097c = executor;
    }

    /* renamed from: a */
    public final void m17808a() {
        Map<String, JSONObject> map;
        synchronized (this) {
            this.f44098d = true;
            C13065ye zzzg = zzr.zzkz().m13975d().zzzg();
            if (zzzg == null) {
                return;
            }
            JSONObject jSONObject = zzzg.f50059e;
            if (jSONObject == null) {
                return;
            }
            this.f44096b = ((Boolean) ekb.m14831e().m18571a(C12187aq.f42775cf)).booleanValue() ? jSONObject.optJSONObject("common_settings") : null;
            this.f44099e = jSONObject.optJSONObject("ad_unit_patterns");
            JSONArray optJSONArray = jSONObject.optJSONArray("ad_unit_id_settings");
            if (optJSONArray == null) {
                return;
            }
            for (int i = 0; i < optJSONArray.length(); i++) {
                JSONObject optJSONObject = optJSONArray.optJSONObject(i);
                if (optJSONObject != null) {
                    String optString = optJSONObject.optString(CriteoBiddingInterstital.AD_UNIT_ID_KEY);
                    String optString2 = optJSONObject.optString("format");
                    JSONObject optJSONObject2 = optJSONObject.optJSONObject("request_signals");
                    if (optString != null && optJSONObject2 != null && optString2 != null) {
                        if (this.f44095a.containsKey(optString2)) {
                            map = this.f44095a.get(optString2);
                        } else {
                            map = new ConcurrentHashMap<>();
                            this.f44095a.put(optString2, map);
                        }
                        map.put(optString, optJSONObject2);
                    }
                }
            }
        }
    }
}
