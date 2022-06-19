package com.google.android.gms.internal.ads;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/nt0.class */
public final class nt0 {

    /* renamed from: a */
    private final Map<String, qt0> f27286a;

    /* renamed from: b */
    private final Map<String, pt0> f27287b;

    public nt0(Map<String, qt0> map, Map<String, pt0> map2) {
        this.f27286a = map;
        this.f27287b = map2;
    }

    /* renamed from: a */
    public final void m12821a(rj2 rj2Var) {
        for (pj2 pj2Var : rj2Var.f28999b.f28520c) {
            if (this.f27286a.containsKey(pj2Var.f28030a)) {
                this.f27286a.get(pj2Var.f28030a).mo11799s(pj2Var.f28031b);
            } else if (this.f27287b.containsKey(pj2Var.f28030a)) {
                pt0 pt0Var = this.f27287b.get(pj2Var.f28030a);
                JSONObject jSONObject = pj2Var.f28031b;
                HashMap hashMap = new HashMap();
                Iterator<String> keys = jSONObject.keys();
                while (keys.hasNext()) {
                    String next = keys.next();
                    String optString = jSONObject.optString(next);
                    if (optString != null) {
                        hashMap.put(next, optString);
                    }
                }
                pt0Var.mo8187a(hashMap);
            }
        }
    }
}
