package com.google.android.gms.internal.ads;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONObject;
/* renamed from: com.google.android.gms.internal.ads.uy */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/uy.class */
public final class C1985uy {

    /* renamed from: a */
    private final Map<String, AbstractC2045xy> f8848a;

    /* renamed from: b */
    private final Map<String, AbstractC2027wy> f8849b;

    C1985uy(Map<String, AbstractC2045xy> map, Map<String, AbstractC2027wy> map2) {
        this.f8848a = map;
        this.f8849b = map2;
    }

    /* renamed from: a */
    public final void m5334a(ml1 ml1Var) {
        for (jl1 jl1Var : ml1Var.f7583b.f6993c) {
            if (this.f8848a.containsKey(jl1Var.f6903a)) {
                this.f8848a.get(jl1Var.f6903a).m4812v(jl1Var.f6904b);
            } else if (this.f8849b.containsKey(jl1Var.f6903a)) {
                AbstractC2027wy wyVar = this.f8849b.get(jl1Var.f6903a);
                JSONObject jSONObject = jl1Var.f6904b;
                HashMap hashMap = new HashMap();
                Iterator<String> keys = jSONObject.keys();
                while (keys.hasNext()) {
                    String next = keys.next();
                    String optString = jSONObject.optString(next);
                    if (optString != null) {
                        hashMap.put(next, optString);
                    }
                }
                wyVar.m4986a(hashMap);
            }
        }
    }
}
