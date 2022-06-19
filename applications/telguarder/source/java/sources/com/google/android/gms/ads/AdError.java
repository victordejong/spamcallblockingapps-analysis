package com.google.android.gms.ads;

import com.google.android.gms.internal.ads.zzvg;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/AdError.class */
public class AdError {
    public static final String UNDEFINED_DOMAIN = "undefined";
    private final int code;
    private final String zzacp;
    private final String zzacq;
    private final AdError zzacr;

    public AdError(int i, String str, String str2) {
        this.code = i;
        this.zzacp = str;
        this.zzacq = str2;
        this.zzacr = null;
    }

    public AdError(int i, String str, String str2, AdError adError) {
        this.code = i;
        this.zzacp = str;
        this.zzacq = str2;
        this.zzacr = adError;
    }

    public AdError getCause() {
        return this.zzacr;
    }

    public int getCode() {
        return this.code;
    }

    public String getDomain() {
        return this.zzacq;
    }

    public String getMessage() {
        return this.zzacp;
    }

    public String toString() {
        String str;
        try {
            str = zzdr().toString(2);
        } catch (JSONException e) {
            str = "Error forming toString output.";
        }
        return str;
    }

    public final zzvg zzdq() {
        zzvg zzvgVar;
        if (this.zzacr == null) {
            zzvgVar = null;
        } else {
            AdError adError = this.zzacr;
            zzvgVar = new zzvg(adError.code, adError.zzacp, adError.zzacq, null, null);
        }
        return new zzvg(this.code, this.zzacp, this.zzacq, zzvgVar, null);
    }

    public JSONObject zzdr() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("Code", this.code);
        jSONObject.put("Message", this.zzacp);
        jSONObject.put("Domain", this.zzacq);
        AdError adError = this.zzacr;
        if (adError == null) {
            jSONObject.put("Cause", "null");
        } else {
            jSONObject.put("Cause", adError.zzdr());
        }
        return jSONObject;
    }
}
