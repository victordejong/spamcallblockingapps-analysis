package com.google.android.gms.ads;

import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.internal.ads.zzym;
import com.google.android.gms.internal.ads.zzzb;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.google.android.gms.ads.h */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/h.class */
public final class C1374h {

    /* renamed from: a */
    private final zzzb f5486a;

    /* renamed from: b */
    private final C1347a f5487b;

    private C1374h(zzzb zzzbVar) {
        this.f5486a = zzzbVar;
        zzym zzymVar = zzzbVar.d;
        this.f5487b = zzymVar == null ? null : zzymVar.a();
    }

    /* renamed from: a */
    public static C1374h m8963a(zzzb zzzbVar) {
        if (zzzbVar != null) {
            return new C1374h(zzzbVar);
        }
        return null;
    }

    @RecentlyNonNull
    /* renamed from: b */
    public final JSONObject m8962b() {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("Adapter", this.f5486a.b);
        jSONObject.put("Latency", this.f5486a.c);
        JSONObject jSONObject2 = new JSONObject();
        for (String str : this.f5486a.e.keySet()) {
            jSONObject2.put(str, this.f5486a.e.get(str));
        }
        jSONObject.put("Credentials", jSONObject2);
        C1347a c1347a = this.f5487b;
        jSONObject.put("Ad Error", c1347a == null ? "null" : c1347a.m9058e());
        return jSONObject;
    }

    @RecentlyNonNull
    public String toString() {
        String str;
        try {
            str = m8962b().toString(2);
        } catch (JSONException e) {
            str = "Error forming toString output.";
        }
        return str;
    }
}
