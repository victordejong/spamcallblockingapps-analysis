package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.zzp;
import com.google.android.gms.internal.ads.zzcza;
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
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcza.class */
public final class zzcza {

    /* renamed from: a */
    public final Map<String, zzczd> f26778a = new ConcurrentHashMap();

    /* renamed from: b */
    public final Map<String, Map<String, List<zzczd>>> f26779b = new ConcurrentHashMap();

    /* renamed from: c */
    public final Executor f26780c;

    /* renamed from: d */
    public JSONObject f26781d;

    public zzcza(Executor executor) {
        this.f26780c = executor;
    }

    /* renamed from: a */
    public final Map<String, List<Bundle>> m13755a(String str, String str2) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            return Collections.emptyMap();
        }
        Map<String, List<zzczd>> map = this.f26779b.get(str);
        if (map == null) {
            return Collections.emptyMap();
        }
        List<zzczd> list = map.get(str2);
        List<zzczd> list2 = list;
        if (list == null) {
            list2 = map.get(zzckz.m14093a(this.f26781d, str2, str));
        }
        if (list2 == null) {
            return Collections.emptyMap();
        }
        HashMap hashMap = new HashMap();
        for (zzczd zzczdVar : list2) {
            String str3 = zzczdVar.f26782a;
            if (!hashMap.containsKey(str3)) {
                hashMap.put(str3, new ArrayList());
            }
            ((List) hashMap.get(str3)).add(zzczdVar.f26783b);
        }
        return hashMap;
    }

    /* renamed from: a */
    public final void m13757a() {
        zzp.m17965g().m16176i().mo16072a(new Runnable(this) { // from class: c.d.b.d.g.a.yq

            /* renamed from: a */
            public final zzcza f16231a;

            {
                this.f16231a = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f16231a.m13752d();
            }
        });
        this.f26780c.execute(new Runnable(this) { // from class: c.d.b.d.g.a.br

            /* renamed from: a */
            public final zzcza f12495a;

            {
                this.f12495a = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f12495a.m13753c();
            }
        });
    }

    /* renamed from: a */
    public final void m13756a(String str) {
        if (!TextUtils.isEmpty(str) && !this.f26778a.containsKey(str)) {
            this.f26778a.put(str, new zzczd(str, "", new Bundle()));
        }
    }

    /* renamed from: b */
    public final void m13751e() {
        JSONArray optJSONArray;
        synchronized (this) {
            JSONObject f = zzp.m17965g().m16176i().mo16075a().m16194f();
            if (f != null) {
                try {
                    JSONArray optJSONArray2 = f.optJSONArray("ad_unit_id_settings");
                    this.f26781d = f.optJSONObject("ad_unit_patterns");
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
                                            int i4 = 0;
                                            while (i4 < size) {
                                                Object obj = arrayList3.get(i4);
                                                int i5 = i4 + 1;
                                                String str = (String) obj;
                                                m13756a(str);
                                                i4 = i5;
                                                if (this.f26778a.get(str) != null) {
                                                    arrayList2.add(new zzczd(str, optString2, bundle));
                                                    i4 = i5;
                                                }
                                            }
                                        }
                                    }
                                    arrayList.addAll(arrayList2);
                                }
                            }
                            if (!TextUtils.isEmpty(optString2) && !TextUtils.isEmpty(optString)) {
                                Map<String, List<zzczd>> map = this.f26779b.get(optString2);
                                Map<String, List<zzczd>> map2 = map;
                                if (map == null) {
                                    map2 = new ConcurrentHashMap<>();
                                }
                                this.f26779b.put(optString2, map2);
                                List<zzczd> list = map2.get(optString);
                                List<zzczd> list2 = list;
                                if (list == null) {
                                    list2 = new ArrayList<>();
                                }
                                list2.addAll(arrayList);
                                map2.put(optString, list2);
                            }
                        }
                    }
                } catch (JSONException e) {
                    zzayp.m16154e("Malformed config loading JSON.", e);
                }
            }
        }
    }

    /* renamed from: d */
    public final /* synthetic */ void m13752d() {
        this.f26780c.execute(new Runnable(this) { // from class: c.d.b.d.g.a.ar

            /* renamed from: a */
            public final zzcza f12311a;

            {
                this.f12311a = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f12311a.m13751e();
            }
        });
    }
}
