package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.C1407r;
import com.google.android.gms.ads.internal.util.y0;
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
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/c61.class */
public final class c61 {

    /* renamed from: a */
    private final Map<String, f61> f6252a = new ConcurrentHashMap();

    /* renamed from: b */
    private final Map<String, Map<String, List<f61>>> f6253b = new ConcurrentHashMap();

    /* renamed from: c */
    private final Executor f6254c;

    /* renamed from: d */
    private JSONObject f6255d;

    public c61(Executor executor) {
        this.f6254c = executor;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: g */
    public final void m7867f() {
        JSONArray optJSONArray;
        synchronized (this) {
            JSONObject g = C1407r.m8916h().m4585l().m8868p().m5203g();
            if (g != null) {
                try {
                    JSONArray optJSONArray2 = g.optJSONArray("ad_unit_id_settings");
                    this.f6255d = g.optJSONObject("ad_unit_patterns");
                    if (optJSONArray2 != null) {
                        for (int i = 0; i < optJSONArray2.length(); i++) {
                            JSONObject jSONObject = optJSONArray2.getJSONObject(i);
                            String optString = jSONObject.optString("ad_unit_id", "");
                            String optString2 = jSONObject.optString("format", "");
                            ArrayList arrayList = new ArrayList();
                            JSONObject optJSONObject = jSONObject.optJSONObject("mediation_config");
                            if (!(optJSONObject == null || (optJSONArray = optJSONObject.optJSONArray("ad_networks")) == null)) {
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
                                            int size = arrayList3.size();
                                            for (int i4 = 0; i4 < size; i4++) {
                                                String str = (String) arrayList3.get(i4);
                                                m7870c(str);
                                                if (this.f6252a.get(str) != null) {
                                                    arrayList2.add(new f61(str, optString2, bundle));
                                                }
                                            }
                                        }
                                    }
                                    arrayList.addAll(arrayList2);
                                }
                            }
                            if (!TextUtils.isEmpty(optString2) && !TextUtils.isEmpty(optString)) {
                                Map<String, List<f61>> map = this.f6253b.get(optString2);
                                Map<String, List<f61>> map2 = map;
                                if (map == null) {
                                    map2 = new ConcurrentHashMap<>();
                                }
                                this.f6253b.put(optString2, map2);
                                List<f61> list = map2.get(optString);
                                List<f61> list2 = list;
                                if (list == null) {
                                    list2 = new ArrayList<>();
                                }
                                list2.addAll(arrayList);
                                map2.put(optString, list2);
                            }
                        }
                    }
                } catch (JSONException e) {
                    y0.l("Malformed config loading JSON.", e);
                }
            }
        }
    }

    /* renamed from: a */
    public final void m7872a() {
        C1407r.m8916h().m4585l().m8885P0(new Runnable(this) { // from class: com.google.android.gms.internal.ads.z51

            /* renamed from: b */
            private final c61 f9317b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f9317b = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f9317b.m7868e();
            }
        });
        this.f6254c.execute(new Runnable(this) { // from class: com.google.android.gms.internal.ads.a61

            /* renamed from: b */
            private final c61 f5947b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f5947b = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f5947b.m7869d();
            }
        });
    }

    /* renamed from: b */
    public final Map<String, List<Bundle>> m7871b(String str, String str2) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            return Collections.emptyMap();
        }
        Map<String, List<f61>> map = this.f6253b.get(str);
        if (map == null) {
            return Collections.emptyMap();
        }
        List<f61> list = map.get(str2);
        List<f61> list2 = list;
        if (list == null) {
            list2 = map.get(mp0.m6526a(this.f6255d, str2, str));
        }
        if (list2 == null) {
            return Collections.emptyMap();
        }
        HashMap hashMap = new HashMap();
        for (f61 f61Var : list2) {
            String str3 = f61Var.f6478a;
            if (!hashMap.containsKey(str3)) {
                hashMap.put(str3, new ArrayList());
            }
            ((List) hashMap.get(str3)).add(f61Var.f6479b);
        }
        return hashMap;
    }

    /* renamed from: c */
    public final void m7870c(String str) {
        if (!TextUtils.isEmpty(str) && !this.f6252a.containsKey(str)) {
            this.f6252a.put(str, new f61(str, "", new Bundle()));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: e */
    public final /* synthetic */ void m7868e() {
        this.f6254c.execute(new Runnable(this) { // from class: com.google.android.gms.internal.ads.b61

            /* renamed from: b */
            private final c61 f6124b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f6124b = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f6124b.m7867f();
            }
        });
    }
}
