package com.google.android.gms.ads;

import com.google.android.gms.internal.ads.aq;
import com.google.android.gms.internal.ads.ekb;
import kotlinx.serialization.json.internal.JsonReaderKt;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/ads/LoadAdError.class */
public final class LoadAdError extends AdError {
    private final ResponseInfo zzads;

    public LoadAdError(int i, String str, String str2, AdError adError, ResponseInfo responseInfo) {
        super(i, str, str2, adError);
        this.zzads = responseInfo;
    }

    public final ResponseInfo getResponseInfo() {
        if (((Boolean) ekb.e().a(aq.eU)).booleanValue()) {
            return this.zzads;
        }
        return null;
    }

    @Override // com.google.android.gms.ads.AdError
    public final String toString() {
        String str;
        try {
            str = zzds().toString(2);
        } catch (JSONException e) {
            str = "Error forming toString output.";
        }
        return str;
    }

    @Override // com.google.android.gms.ads.AdError
    public final JSONObject zzds() throws JSONException {
        JSONObject zzds = super.zzds();
        ResponseInfo responseInfo = getResponseInfo();
        if (responseInfo == null) {
            zzds.put("Response Info", JsonReaderKt.NULL);
        } else {
            zzds.put("Response Info", responseInfo.zzds());
        }
        return zzds;
    }
}
