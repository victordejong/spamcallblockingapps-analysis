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

    /* renamed from: a  reason: collision with root package name */
    final Map<String, Map<String, JSONObject>> f24545a = new ConcurrentHashMap();

    /* renamed from: b  reason: collision with root package name */
    JSONObject f24546b;

    /* renamed from: c  reason: collision with root package name */
    final Executor f24547c;

    /* renamed from: d  reason: collision with root package name */
    boolean f24548d;
    JSONObject e;

    public bji(Executor executor) {
        this.f24547c = executor;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a() {
        Map<String, JSONObject> map;
        synchronized (this) {
            this.f24548d = true;
            ye zzzg = zzr.zzkz().d().zzzg();
            if (zzzg != null) {
                JSONObject jSONObject = zzzg.e;
                if (jSONObject != null) {
                    this.f24546b = ((Boolean) ekb.e().a(aq.cf)).booleanValue() ? jSONObject.optJSONObject("common_settings") : null;
                    this.e = jSONObject.optJSONObject("ad_unit_patterns");
                    JSONArray optJSONArray = jSONObject.optJSONArray("ad_unit_id_settings");
                    if (optJSONArray != null) {
                        for (int i = 0; i < optJSONArray.length(); i++) {
                            JSONObject optJSONObject = optJSONArray.optJSONObject(i);
                            if (optJSONObject != null) {
                                String optString = optJSONObject.optString(CriteoBiddingInterstital.AD_UNIT_ID_KEY);
                                String optString2 = optJSONObject.optString("format");
                                JSONObject optJSONObject2 = optJSONObject.optJSONObject("request_signals");
                                if (!(optString == null || optJSONObject2 == null || optString2 == null)) {
                                    if (this.f24545a.containsKey(optString2)) {
                                        map = this.f24545a.get(optString2);
                                    } else {
                                        map = new ConcurrentHashMap<>();
                                        this.f24545a.put(optString2, map);
                                    }
                                    map.put(optString, optJSONObject2);
                                }
                            }
                        }
                    }
                }
            }
        }
    }
}
