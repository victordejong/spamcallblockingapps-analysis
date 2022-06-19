package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.C5667s;
import com.google.android.gms.ads.internal.util.C5722o1;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Executor;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/v22.class */
public final class v22 {

    /* renamed from: a */
    private final Map<String, x22> f31057a = new HashMap();

    /* renamed from: b */
    private final Map<String, z22> f31058b = new HashMap();

    /* renamed from: c */
    private final Map<String, Map<String, List<x22>>> f31059c = new HashMap();

    /* renamed from: d */
    private final Executor f31060d;

    /* renamed from: e */
    private JSONObject f31061e;

    public v22(Executor executor) {
        this.f31060d = executor;
    }

    /* renamed from: g */
    public final void m10096f() {
        synchronized (this) {
            this.f31058b.clear();
            this.f31057a.clear();
            m10093i();
            m10094h();
        }
    }

    /* renamed from: h */
    private final void m10094h() {
        synchronized (this) {
            if (!C6420dy.f21926e.m12799e().booleanValue()) {
                if (((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25704h1)).booleanValue()) {
                    JSONObject m14120g = C5667s.m18156h().m12230p().mo17954m().m14120g();
                    if (m14120g == null) {
                        return;
                    }
                    try {
                        JSONArray jSONArray = m14120g.getJSONArray("signal_adapters");
                        for (int i = 0; i < jSONArray.length(); i++) {
                            JSONObject jSONObject = jSONArray.getJSONObject(i);
                            Bundle m10090l = m10090l(jSONObject.optJSONObject("data"));
                            String optString = jSONObject.optString("adapter_class_name");
                            boolean optBoolean = jSONObject.optBoolean("render", false);
                            boolean optBoolean2 = jSONObject.optBoolean("collect_signals", false);
                            if (!TextUtils.isEmpty(optString)) {
                                this.f31058b.put(optString, new z22(optString, optBoolean2, optBoolean, m10090l));
                            }
                        }
                    } catch (JSONException e) {
                        C5722o1.m17989l("Malformed config loading JSON.", e);
                    }
                }
            }
        }
    }

    /* renamed from: i */
    private final void m10093i() {
        JSONArray optJSONArray;
        synchronized (this) {
            JSONObject m14120g = C5667s.m18156h().m12230p().mo17954m().m14120g();
            if (m14120g != null) {
                try {
                    JSONArray optJSONArray2 = m14120g.optJSONArray("ad_unit_id_settings");
                    this.f31061e = m14120g.optJSONObject("ad_unit_patterns");
                    if (optJSONArray2 != null) {
                        for (int i = 0; i < optJSONArray2.length(); i++) {
                            JSONObject jSONObject = optJSONArray2.getJSONObject(i);
                            String optString = jSONObject.optString("ad_unit_id", "");
                            String optString2 = jSONObject.optString("format", "");
                            ArrayList arrayList = new ArrayList();
                            JSONObject optJSONObject = jSONObject.optJSONObject("mediation_config");
                            if (optJSONObject != null && (optJSONArray = optJSONObject.optJSONArray("ad_networks")) != null) {
                                for (int i2 = 0; i2 < optJSONArray.length(); i2++) {
                                    arrayList.addAll(m10092j(optJSONArray.getJSONObject(i2), optString2));
                                }
                            }
                            m10091k(optString2, optString, arrayList);
                        }
                    }
                } catch (JSONException e) {
                    C5722o1.m17989l("Malformed config loading JSON.", e);
                }
            }
        }
    }

    /* renamed from: j */
    private final List<x22> m10092j(JSONObject jSONObject, String str) {
        synchronized (this) {
            ArrayList arrayList = new ArrayList();
            if (jSONObject == null) {
                return arrayList;
            }
            Bundle m10090l = m10090l(jSONObject.optJSONObject("data"));
            JSONArray optJSONArray = jSONObject.optJSONArray("rtb_adapters");
            if (optJSONArray == null) {
                return arrayList;
            }
            ArrayList arrayList2 = new ArrayList();
            for (int i = 0; i < optJSONArray.length(); i++) {
                String optString = optJSONArray.optString(i, "");
                if (!TextUtils.isEmpty(optString)) {
                    arrayList2.add(optString);
                }
            }
            int size = arrayList2.size();
            for (int i2 = 0; i2 < size; i2++) {
                String str2 = (String) arrayList2.get(i2);
                m10098d(str2);
                if (this.f31057a.get(str2) != null) {
                    arrayList.add(new x22(str2, str, m10090l));
                }
            }
            return arrayList;
        }
    }

    /* renamed from: k */
    private final void m10091k(String str, String str2, List<x22> list) {
        synchronized (this) {
            if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
                return;
            }
            Map<String, List<x22>> map = this.f31059c.get(str);
            Map<String, List<x22>> map2 = map;
            if (map == null) {
                map2 = new HashMap<>();
            }
            this.f31059c.put(str, map2);
            List<x22> list2 = map2.get(str2);
            List<x22> list3 = list2;
            if (list2 == null) {
                list3 = new ArrayList<>();
            }
            list3.addAll(list);
            map2.put(str2, list3);
        }
    }

    /* renamed from: l */
    private static final Bundle m10090l(JSONObject jSONObject) {
        Bundle bundle = new Bundle();
        if (jSONObject != null) {
            Iterator<String> keys = jSONObject.keys();
            while (keys.hasNext()) {
                String next = keys.next();
                bundle.putString(next, jSONObject.optString(next, ""));
            }
        }
        return bundle;
    }

    /* renamed from: a */
    public final void m10101a() {
        C5667s.m18156h().m12230p().mo17977L0(new Runnable(this) { // from class: com.google.android.gms.internal.ads.s22

            /* renamed from: d */
            private final v22 f29370d;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f29370d = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f29370d.m10097e();
            }
        });
        this.f31060d.execute(new Runnable(this) { // from class: com.google.android.gms.internal.ads.t22

            /* renamed from: d */
            private final v22 f29796d;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f29796d = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f29796d.m10096f();
            }
        });
    }

    /* renamed from: b */
    public final Map<String, z22> m10100b() {
        zzfon zzb;
        synchronized (this) {
            zzb = zzfon.zzb(this.f31058b);
        }
        return zzb;
    }

    /* renamed from: c */
    public final Map<String, List<Bundle>> m10099c(String str, String str2) {
        synchronized (this) {
            if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2)) {
                Map<String, List<x22>> map = this.f31059c.get(str);
                if (map == null) {
                    return zzfon.zza();
                }
                List<x22> list = map.get(str2);
                List<x22> list2 = list;
                if (list == null) {
                    list2 = map.get(vl1.m9938a(this.f31061e, str2, str));
                }
                if (list2 == null) {
                    return zzfon.zza();
                }
                HashMap hashMap = new HashMap();
                for (x22 x22Var : list2) {
                    String str3 = x22Var.f31895a;
                    if (!hashMap.containsKey(str3)) {
                        hashMap.put(str3, new ArrayList());
                    }
                    ((List) hashMap.get(str3)).add(x22Var.f31897c);
                }
                return zzfon.zzb(hashMap);
            }
            return zzfon.zza();
        }
    }

    /* renamed from: d */
    public final void m10098d(String str) {
        synchronized (this) {
            if (TextUtils.isEmpty(str)) {
                return;
            }
            if (this.f31057a.containsKey(str)) {
                return;
            }
            this.f31057a.put(str, new x22(str, "", new Bundle()));
        }
    }

    /* renamed from: e */
    public final /* synthetic */ void m10097e() {
        this.f31060d.execute(new Runnable(this) { // from class: com.google.android.gms.internal.ads.u22

            /* renamed from: d */
            private final v22 f30483d;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f30483d = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f30483d.m10096f();
            }
        });
    }
}
