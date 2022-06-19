package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.text.TextUtils;
import com.facebook.gamingservices.cloudgaming.internal.SDKAnalyticsEvents;
import com.google.android.gms.ads.query.QueryInfo;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzzx.class */
public final class zzzx {
    private final String zzbrb;
    private final Bundle zzcli;

    public zzzx(String str, Bundle bundle) {
        this.zzbrb = str;
        this.zzcli = bundle;
    }

    public static String zza(QueryInfo queryInfo) {
        String str = zzwr.zzqv().get(queryInfo);
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        try {
            return new JSONObject(str).optString(SDKAnalyticsEvents.PARAMETER_REQUEST_ID, "");
        } catch (JSONException e) {
            return "";
        }
    }

    public final String getQuery() {
        return this.zzbrb;
    }

    public final Bundle getQueryBundle() {
        return this.zzcli;
    }
}
