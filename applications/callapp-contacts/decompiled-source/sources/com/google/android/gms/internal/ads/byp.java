package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.ads.internal.zzr;
import com.mopub.mobileads.CriteoBiddingInterstital;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executor;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/byp.class */
public final class byp {

    /* renamed from: b  reason: collision with root package name */
    final Executor f25404b;

    /* renamed from: c  reason: collision with root package name */
    JSONObject f25405c;

    /* renamed from: d  reason: collision with root package name */
    private final Map<String, bys> f25406d = new ConcurrentHashMap();

    /* renamed from: a  reason: collision with root package name */
    final Map<String, Map<String, List<bys>>> f25403a = new ConcurrentHashMap();

    public byp(Executor executor) {
        this.f25404b = executor;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a() {
        JSONArray optJSONArray;
        synchronized (this) {
            JSONObject jSONObject = zzr.zzkz().d().zzzg().e;
            if (jSONObject != null) {
                try {
                    JSONArray optJSONArray2 = jSONObject.optJSONArray("ad_unit_id_settings");
                    this.f25405c = jSONObject.optJSONObject("ad_unit_patterns");
                    if (optJSONArray2 != null) {
                        for (int i = 0; i < optJSONArray2.length(); i++) {
                            JSONObject jSONObject2 = optJSONArray2.getJSONObject(i);
                            String optString = jSONObject2.optString(CriteoBiddingInterstital.AD_UNIT_ID_KEY, "");
                            String optString2 = jSONObject2.optString("format", "");
                            ArrayList arrayList = new ArrayList();
                            JSONObject optJSONObject = jSONObject2.optJSONObject("mediation_config");
                            if (!(optJSONObject == null || (optJSONArray = optJSONObject.optJSONArray("ad_networks")) == null)) {
                                for (int i2 = 0; i2 < optJSONArray.length(); i2++) {
                                    JSONObject jSONObject3 = optJSONArray.getJSONObject(i2);
                                    ArrayList arrayList2 = new ArrayList();
                                    if (jSONObject3 != null) {
                                        JSONObject optJSONObject2 = jSONObject3.optJSONObject("data");
                                        Bundle bundle = new Bundle();
                                        if (optJSONObject2 != null) {
                                            Iterator<String> keys = optJSONObject2.keys();
                                            while (keys.hasNext()) {
                                                String next = keys.next();
                                                bundle.putString(next, optJSONObject2.optString(next, ""));
                                            }
                                        }
                                        JSONArray optJSONArray3 = jSONObject3.optJSONArray("rtb_adapters");
                                        if (optJSONArray3 != null) {
                                            ArrayList arrayList3 = new ArrayList();
                                            for (int i3 = 0; i3 < optJSONArray3.length(); i3++) {
                                                String optString3 = optJSONArray3.optString(i3, "");
                                                if (!TextUtils.isEmpty(optString3)) {
                                                    arrayList3.add(optString3);
                                                }
                                            }
                                            ArrayList arrayList4 = arrayList3;
                                            int size = arrayList4.size();
                                            int i4 = 0;
                                            while (i4 < size) {
                                                Object obj = arrayList4.get(i4);
                                                int i5 = i4 + 1;
                                                String str = (String) obj;
                                                a(str);
                                                i4 = i5;
                                                if (this.f25406d.get(str) != null) {
                                                    arrayList2.add(new bys(str, optString2, bundle));
                                                    i4 = i5;
                                                }
                                            }
                                        }
                                    }
                                    arrayList.addAll(arrayList2);
                                }
                            }
                            if (!TextUtils.isEmpty(optString2) && !TextUtils.isEmpty(optString)) {
                                Map<String, List<bys>> map = this.f25403a.get(optString2);
                                Map<String, List<bys>> map2 = map;
                                if (map == null) {
                                    map2 = new ConcurrentHashMap<>();
                                }
                                this.f25403a.put(optString2, map2);
                                List<bys> list = map2.get(optString);
                                List<bys> list2 = list;
                                if (list == null) {
                                    list2 = new ArrayList<>();
                                }
                                list2.addAll(arrayList);
                                map2.put(optString, list2);
                            }
                        }
                    }
                } catch (JSONException e) {
                    zzd.zza("Malformed config loading JSON.", e);
                }
            }
        }
    }

    public final void a(String str) {
        if (!TextUtils.isEmpty(str) && !this.f25406d.containsKey(str)) {
            this.f25406d.put(str, new bys(str, "", new Bundle()));
        }
    }
}
