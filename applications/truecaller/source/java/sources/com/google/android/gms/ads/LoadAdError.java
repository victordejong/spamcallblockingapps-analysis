package com.google.android.gms.ads;

import androidx.annotation.RecentlyNonNull;
import androidx.annotation.RecentlyNullable;
import com.google.android.gms.internal.ads.zzbet;
import com.google.android.gms.internal.ads.zzbjl;
import com.razorpay.AnalyticsConstants;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/ads/LoadAdError.class */
public final class LoadAdError extends AdError {
    private final ResponseInfo zza;

    public LoadAdError(int i, @RecentlyNonNull String str, @RecentlyNonNull String str2, AdError adError, ResponseInfo responseInfo) {
        super(i, str, str2, adError);
        this.zza = responseInfo;
    }

    @RecentlyNullable
    public ResponseInfo getResponseInfo() {
        if (((Boolean) zzbet.zzc().zzc(zzbjl.zzfX)).booleanValue()) {
            return this.zza;
        }
        return null;
    }

    @Override // com.google.android.gms.ads.AdError
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

    @Override // com.google.android.gms.ads.AdError
    @RecentlyNonNull
    public final JSONObject zzb() throws JSONException {
        JSONObject zzb = super.zzb();
        ResponseInfo responseInfo = getResponseInfo();
        if (responseInfo == null) {
            zzb.put("Response Info", AnalyticsConstants.NULL);
        } else {
            zzb.put("Response Info", responseInfo.zza());
        }
        return zzb;
    }
}
