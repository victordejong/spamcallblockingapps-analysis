package com.google.android.gms.ads.query;

import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.internal.ads.zzcgt;
import org.json.JSONException;
import org.json.JSONObject;
@KeepForSdk
@Deprecated
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/ads/query/AdInfo.class */
public class AdInfo {
    private final QueryInfo zza;
    private final String zzb;

    @KeepForSdk
    public AdInfo(@RecentlyNonNull QueryInfo queryInfo, @RecentlyNonNull String str) {
        this.zza = queryInfo;
        this.zzb = str;
    }

    @RecentlyNonNull
    @KeepForSdk
    public static String getRequestId(@RecentlyNonNull String str) {
        if (str == null) {
            zzcgt.zzi("adString passed to AdInfo.getRequestId() cannot be null. Returning empty string.");
            return "";
        }
        try {
            return new JSONObject(str).optString("request_id", "");
        } catch (JSONException e) {
            zzcgt.zzi("Invalid adString passed to AdInfo.getRequestId(). Returning empty string.");
            return "";
        }
    }

    @RecentlyNonNull
    @KeepForSdk
    public String getAdString() {
        return this.zzb;
    }

    @RecentlyNonNull
    @KeepForSdk
    public QueryInfo getQueryInfo() {
        return this.zza;
    }
}
