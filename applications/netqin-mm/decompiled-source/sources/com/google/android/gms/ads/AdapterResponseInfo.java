package com.google.android.gms.ads;

import com.google.android.gms.internal.ads.zzva;
import com.google.android.gms.internal.ads.zzvr;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/AdapterResponseInfo.class */
public final class AdapterResponseInfo {

    /* renamed from: a */
    public final zzvr f22664a;

    /* renamed from: b */
    public final AdError f22665b;

    public AdapterResponseInfo(zzvr zzvrVar) {
        this.f22664a = zzvrVar;
        zzva zzvaVar = zzvrVar.f29055c;
        this.f22665b = zzvaVar == null ? null : zzvaVar.m11207f();
    }

    /* renamed from: a */
    public static AdapterResponseInfo m18125a(zzvr zzvrVar) {
        if (zzvrVar != null) {
            return new AdapterResponseInfo(zzvrVar);
        }
        return null;
    }

    /* renamed from: a */
    public final JSONObject m18126a() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("Adapter", this.f22664a.f29053a);
        jSONObject.put("Latency", this.f22664a.f29054b);
        JSONObject jSONObject2 = new JSONObject();
        for (String str : this.f22664a.f29056d.keySet()) {
            jSONObject2.put(str, this.f22664a.f29056d.get(str));
        }
        jSONObject.put("Credentials", jSONObject2);
        AdError adError = this.f22665b;
        if (adError == null) {
            jSONObject.put("Ad Error", "null");
        } else {
            jSONObject.put("Ad Error", adError.mo18106e());
        }
        return jSONObject;
    }

    public final String toString() {
        String str;
        try {
            str = m18126a().toString(2);
        } catch (JSONException e) {
            str = "Error forming toString output.";
        }
        return str;
    }
}
