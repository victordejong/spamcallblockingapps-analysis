package com.google.android.gms.ads;

import android.os.Bundle;
import androidx.annotation.RecentlyNonNull;
import androidx.annotation.RecentlyNullable;
import com.google.android.gms.internal.ads.zzbew;
import com.google.android.gms.internal.ads.zzbfm;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/AdapterResponseInfo.class */
public final class AdapterResponseInfo {
    private final zzbfm zza;
    private final AdError zzb;

    private AdapterResponseInfo(zzbfm zzbfmVar) {
        this.zza = zzbfmVar;
        zzbew zzbewVar = zzbfmVar.zzc;
        this.zzb = zzbewVar == null ? null : zzbewVar.zza();
    }

    public static AdapterResponseInfo zza(zzbfm zzbfmVar) {
        if (zzbfmVar != null) {
            return new AdapterResponseInfo(zzbfmVar);
        }
        return null;
    }

    @RecentlyNullable
    public AdError getAdError() {
        return this.zzb;
    }

    @RecentlyNonNull
    public String getAdapterClassName() {
        return this.zza.zza;
    }

    @RecentlyNonNull
    public Bundle getCredentials() {
        return this.zza.zzd;
    }

    public long getLatencyMillis() {
        return this.zza.zzb;
    }

    @RecentlyNonNull
    public String toString() {
        String str;
        try {
            str = zzb().toString(2);
        } catch (JSONException e) {
            str = "Error forming toString output.";
        }
        return str;
    }

    @RecentlyNonNull
    public final JSONObject zzb() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("Adapter", this.zza.zza);
        jSONObject.put("Latency", this.zza.zzb);
        JSONObject jSONObject2 = new JSONObject();
        for (String str : this.zza.zzd.keySet()) {
            jSONObject2.put(str, this.zza.zzd.get(str));
        }
        jSONObject.put("Credentials", jSONObject2);
        AdError adError = this.zzb;
        if (adError == null) {
            jSONObject.put("Ad Error", "null");
        } else {
            jSONObject.put("Ad Error", adError.zzb());
        }
        return jSONObject;
    }
}
