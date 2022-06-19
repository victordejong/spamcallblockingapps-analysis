package com.google.android.gms.ads;

import com.google.android.gms.internal.ads.zzabp;
import com.google.android.gms.internal.ads.zzwr;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/LoadAdError.class */
public final class LoadAdError extends AdError {
    private final ResponseInfo zzadl;

    public LoadAdError(int i, String str, String str2, AdError adError, ResponseInfo responseInfo) {
        super(i, str, str2, adError);
        this.zzadl = responseInfo;
    }

    public final ResponseInfo getResponseInfo() {
        if (((Boolean) zzwr.zzqr().zzd(zzabp.zzdab)).booleanValue()) {
            return this.zzadl;
        }
        return null;
    }

    @Override // com.google.android.gms.ads.AdError
    public final String toString() {
        String str;
        try {
            str = zzdr().toString(2);
        } catch (JSONException e) {
            str = "Error forming toString output.";
        }
        return str;
    }

    @Override // com.google.android.gms.ads.AdError
    public final JSONObject zzdr() throws JSONException {
        JSONObject zzdr = super.zzdr();
        ResponseInfo responseInfo = getResponseInfo();
        if (responseInfo == null) {
            zzdr.put("Response Info", "null");
        } else {
            zzdr.put("Response Info", responseInfo.zzdr());
        }
        return zzdr;
    }
}
