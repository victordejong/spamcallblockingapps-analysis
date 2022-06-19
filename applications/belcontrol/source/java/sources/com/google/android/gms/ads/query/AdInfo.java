package com.google.android.gms.ads.query;

import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.internal.ads.zzazk;
import org.json.JSONException;
import org.json.JSONObject;
@KeepForSdk
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/query/AdInfo.class */
public class AdInfo {
    private final QueryInfo zzhrz;
    private final String zzhsa;

    @KeepForSdk
    public AdInfo(QueryInfo queryInfo, String str) {
        this.zzhrz = queryInfo;
        this.zzhsa = str;
    }

    @KeepForSdk
    public static String getRequestId(String str) {
        String str2;
        if (str == null) {
            str2 = "adString passed to AdInfo.getRequestId() cannot be null. Returning empty string.";
        } else {
            try {
                return new JSONObject(str).optString("request_id", "");
            } catch (JSONException e) {
                str2 = "Invalid adString passed to AdInfo.getRequestId(). Returning empty string.";
            }
        }
        zzazk.zzex(str2);
        return "";
    }

    @KeepForSdk
    public String getAdString() {
        return this.zzhsa;
    }

    @KeepForSdk
    public QueryInfo getQueryInfo() {
        return this.zzhrz;
    }
}
