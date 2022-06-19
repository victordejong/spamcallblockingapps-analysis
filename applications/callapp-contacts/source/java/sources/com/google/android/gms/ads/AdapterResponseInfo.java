package com.google.android.gms.ads;

import android.os.Bundle;
import com.google.android.gms.internal.ads.zzvx;
import kotlinx.serialization.json.internal.JsonReaderKt;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/ads/AdapterResponseInfo.class */
public final class AdapterResponseInfo {
    private final zzvx zzadn;
    private final AdError zzado;

    private AdapterResponseInfo(zzvx zzvxVar) {
        this.zzadn = zzvxVar;
        this.zzado = zzvxVar.zzcjc == null ? null : zzvxVar.zzcjc.zzqh();
    }

    public static AdapterResponseInfo zza(zzvx zzvxVar) {
        if (zzvxVar != null) {
            return new AdapterResponseInfo(zzvxVar);
        }
        return null;
    }

    public final AdError getAdError() {
        return this.zzado;
    }

    public final String getAdapterClassName() {
        return this.zzadn.zzcja;
    }

    public final Bundle getCredentials() {
        return this.zzadn.zzcjd;
    }

    public final long getLatencyMillis() {
        return this.zzadn.zzcjb;
    }

    public final String toString() {
        String str;
        try {
            str = zzds().toString(2);
        } catch (JSONException e) {
            str = "Error forming toString output.";
        }
        return str;
    }

    public final JSONObject zzds() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("Adapter", this.zzadn.zzcja);
        jSONObject.put("Latency", this.zzadn.zzcjb);
        JSONObject jSONObject2 = new JSONObject();
        for (String str : this.zzadn.zzcjd.keySet()) {
            jSONObject2.put(str, this.zzadn.zzcjd.get(str));
        }
        jSONObject.put("Credentials", jSONObject2);
        AdError adError = this.zzado;
        if (adError == null) {
            jSONObject.put("Ad Error", JsonReaderKt.NULL);
        } else {
            jSONObject.put("Ad Error", adError.zzds());
        }
        return jSONObject;
    }
}
