package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.C2341q;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executor;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/bsn.class */
public final class bsn {

    /* renamed from: a */
    private final Map<String, bsr> f12163a = new ConcurrentHashMap();

    /* renamed from: b */
    private final Map<String, Map<String, List<bsr>>> f12164b = new ConcurrentHashMap();

    /* renamed from: c */
    private final Executor f12165c;

    /* renamed from: d */
    private JSONObject f12166d;

    public bsn(Executor executor) {
        this.f12165c = executor;
    }

    /* renamed from: e */
    public final void m11668d() {
        JSONArray optJSONArray;
        synchronized (this) {
            JSONObject m7074f = C2341q.m14740g().m7084h().mo7019h().m7074f();
            if (m7074f != null) {
                try {
                    JSONArray optJSONArray2 = m7074f.optJSONArray("ad_unit_id_settings");
                    this.f12166d = m7074f.optJSONObject("ad_unit_patterns");
                    if (optJSONArray2 != null) {
                        for (int i = 0; i < optJSONArray2.length(); i++) {
                            JSONObject jSONObject = optJSONArray2.getJSONObject(i);
                            String optString = jSONObject.optString("ad_unit_id", "");
                            String optString2 = jSONObject.optString("format", "");
                            ArrayList arrayList = new ArrayList();
                            JSONObject optJSONObject = jSONObject.optJSONObject("mediation_config");
                            if (optJSONObject != null && (optJSONArray = optJSONObject.optJSONArray("ad_networks")) != null) {
                                for (int i2 = 0; i2 < optJSONArray.length(); i2++) {
                                    JSONObject jSONObject2 = optJSONArray.getJSONObject(i2);
                                    ArrayList arrayList2 = new ArrayList();
                                    if (jSONObject2 != null) {
                                        JSONObject optJSONObject2 = jSONObject2.optJSONObject("data");
                                        Bundle bundle = new Bundle();
                                        if (optJSONObject2 != null) {
                                            Iterator<String> keys = optJSONObject2.keys();
                                            while (keys.hasNext()) {
                                                String next = keys.next();
                                                bundle.putString(next, optJSONObject2.optString(next, ""));
                                            }
                                        }
                                        JSONArray optJSONArray3 = jSONObject2.optJSONArray("rtb_adapters");
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
                                            for (int i4 = 0; i4 < size; i4++) {
                                                String str = (String) arrayList4.get(i4);
                                                m11672a(str);
                                                if (this.f12163a.get(str) != null) {
                                                    arrayList2.add(new bsr(str, optString2, bundle));
                                                }
                                            }
                                        }
                                    }
                                    arrayList.addAll(arrayList2);
                                }
                            }
                            if (!TextUtils.isEmpty(optString2) && !TextUtils.isEmpty(optString)) {
                                Map<String, List<bsr>> map = this.f12164b.get(optString2);
                                if (map == null) {
                                    map = new ConcurrentHashMap<>();
                                }
                                this.f12164b.put(optString2, map);
                                List<bsr> list = map.get(optString);
                                List<bsr> list2 = list;
                                if (list == null) {
                                    list2 = new ArrayList<>();
                                }
                                list2.addAll(arrayList);
                                map.put(optString, list2);
                            }
                        }
                    }
                } catch (JSONException e) {
                    C3556uu.m7051a("Malformed config loading JSON.", e);
                }
            }
        }
    }

    /* renamed from: a */
    public final Map<String, List<Bundle>> m11671a(String str, String str2) {
        HashMap hashMap;
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            hashMap = Collections.emptyMap();
        } else {
            Map<String, List<bsr>> map = this.f12164b.get(str);
            if (map == null) {
                hashMap = Collections.emptyMap();
            } else {
                List<bsr> list = map.get(str2);
                List<bsr> list2 = list == null ? map.get(bfm.m11997a(this.f12166d, str2, str)) : list;
                if (list2 == null) {
                    hashMap = Collections.emptyMap();
                } else {
                    HashMap hashMap2 = new HashMap();
                    for (bsr bsrVar : list2) {
                        String str3 = bsrVar.f12170a;
                        if (!hashMap2.containsKey(str3)) {
                            hashMap2.put(str3, new ArrayList());
                        }
                        hashMap2.get(str3).add(bsrVar.f12171b);
                    }
                    hashMap = hashMap2;
                }
            }
        }
        return hashMap;
    }

    /* renamed from: a */
    public final void m11673a() {
        C2341q.m14740g().m7084h().mo7036a(new Runnable(this) { // from class: com.google.android.gms.internal.ads.bsm

            /* renamed from: a */
            private final bsn f12162a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f12162a = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f12162a.m11669c();
            }
        });
        this.f12165c.execute(new Runnable(this) { // from class: com.google.android.gms.internal.ads.bsq

            /* renamed from: a */
            private final bsn f12169a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f12169a = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f12169a.m11670b();
            }
        });
    }

    /* renamed from: a */
    public final void m11672a(String str) {
        if (!TextUtils.isEmpty(str) && !this.f12163a.containsKey(str)) {
            this.f12163a.put(str, new bsr(str, "", new Bundle()));
        }
    }

    /* renamed from: c */
    public final /* synthetic */ void m11669c() {
        this.f12165c.execute(new Runnable(this) { // from class: com.google.android.gms.internal.ads.bsp

            /* renamed from: a */
            private final bsn f12168a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f12168a = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f12168a.m11668d();
            }
        });
    }
}
