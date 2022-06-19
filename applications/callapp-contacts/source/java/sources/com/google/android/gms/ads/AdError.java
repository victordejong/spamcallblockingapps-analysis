package com.google.android.gms.ads;

import com.google.android.gms.internal.ads.zzvh;
import kotlinx.serialization.json.internal.JsonReaderKt;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/ads/AdError.class */
public class AdError {
    public static final String UNDEFINED_DOMAIN = "undefined";
    private final int code;
    private final String zzacu;
    private final String zzacv;
    private final AdError zzacw;

    public AdError(int i, String str, String str2) {
        this.code = i;
        this.zzacu = str;
        this.zzacv = str2;
        this.zzacw = null;
    }

    public AdError(int i, String str, String str2, AdError adError) {
        this.code = i;
        this.zzacu = str;
        this.zzacv = str2;
        this.zzacw = adError;
    }

    public AdError getCause() {
        return this.zzacw;
    }

    public int getCode() {
        return this.code;
    }

    public String getDomain() {
        return this.zzacv;
    }

    public String getMessage() {
        return this.zzacu;
    }

    public String toString() {
        String str;
        try {
            str = zzds().toString(2);
        } catch (JSONException e) {
            str = "Error forming toString output.";
        }
        return str;
    }

    public final zzvh zzdr() {
        AdError adError = this.zzacw;
        return new zzvh(this.code, this.zzacu, this.zzacv, adError == null ? null : new zzvh(adError.code, adError.zzacu, adError.zzacv, null, null), null);
    }

    public JSONObject zzds() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("Code", this.code);
        jSONObject.put("Message", this.zzacu);
        jSONObject.put("Domain", this.zzacv);
        AdError adError = this.zzacw;
        if (adError == null) {
            jSONObject.put("Cause", JsonReaderKt.NULL);
        } else {
            jSONObject.put("Cause", adError.zzds());
        }
        return jSONObject;
    }
}
