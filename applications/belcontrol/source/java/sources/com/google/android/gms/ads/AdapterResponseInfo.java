package com.google.android.gms.ads;

import android.os.Bundle;
import com.google.android.gms.internal.ads.zzvg;
import com.google.android.gms.internal.ads.zzvw;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/AdapterResponseInfo.class */
public final class AdapterResponseInfo {
    private final zzvw zzadg;
    private final AdError zzadh;

    private AdapterResponseInfo(zzvw zzvwVar) {
        this.zzadg = zzvwVar;
        zzvg zzvgVar = zzvwVar.zzciq;
        this.zzadh = zzvgVar == null ? null : zzvgVar.zzqb();
    }

    public static AdapterResponseInfo zza(zzvw zzvwVar) {
        if (zzvwVar != null) {
            return new AdapterResponseInfo(zzvwVar);
        }
        return null;
    }

    public final AdError getAdError() {
        return this.zzadh;
    }

    public final String getAdapterClassName() {
        return this.zzadg.zzcio;
    }

    public final Bundle getCredentials() {
        return this.zzadg.zzcir;
    }

    public final long getLatencyMillis() {
        return this.zzadg.zzcip;
    }

    public final String toString() {
        String str;
        try {
            str = zzdr().toString(2);
        } catch (JSONException e) {
            str = "Error forming toString output.";
        }
        return str;
    }

    public final JSONObject zzdr() {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("Adapter", this.zzadg.zzcio);
        jSONObject.put("Latency", this.zzadg.zzcip);
        JSONObject jSONObject2 = new JSONObject();
        for (String str : this.zzadg.zzcir.keySet()) {
            jSONObject2.put(str, this.zzadg.zzcir.get(str));
        }
        jSONObject.put("Credentials", jSONObject2);
        AdError adError = this.zzadh;
        jSONObject.put("Ad Error", adError == null ? "null" : adError.zzdr());
        return jSONObject;
    }
}
