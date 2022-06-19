package com.google.android.gms.ads;

import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.internal.ads.zzbcz;
import com.google.android.gms.internal.ads.zzbdp;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.google.android.gms.ads.h */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/h.class */
public final class C5620h {

    /* renamed from: a */
    private final zzbdp f18271a;

    /* renamed from: b */
    private final C5592a f18272b;

    private C5620h(zzbdp zzbdpVar) {
        this.f18271a = zzbdpVar;
        zzbcz zzbczVar = zzbdpVar.f33703f;
        this.f18272b = zzbczVar == null ? null : zzbczVar.m8085k0();
    }

    /* renamed from: a */
    public static C5620h m18231a(zzbdp zzbdpVar) {
        if (zzbdpVar != null) {
            return new C5620h(zzbdpVar);
        }
        return null;
    }

    @RecentlyNonNull
    /* renamed from: b */
    public final JSONObject m18230b() {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("Adapter", this.f18271a.f33701d);
        jSONObject.put("Latency", this.f18271a.f33702e);
        JSONObject jSONObject2 = new JSONObject();
        for (String str : this.f18271a.f33704g.keySet()) {
            jSONObject2.put(str, this.f18271a.f33704g.get(str));
        }
        jSONObject.put("Credentials", jSONObject2);
        C5592a c5592a = this.f18272b;
        if (c5592a == null) {
            jSONObject.put("Ad Error", "null");
        } else {
            jSONObject.put("Ad Error", c5592a.mo17906e());
        }
        return jSONObject;
    }

    @RecentlyNonNull
    public String toString() {
        String str;
        try {
            str = m18230b().toString(2);
        } catch (JSONException e) {
            str = "Error forming toString output.";
        }
        return str;
    }
}
