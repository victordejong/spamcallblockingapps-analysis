package com.google.android.gms.ads.query;

import com.facebook.gamingservices.cloudgaming.internal.SDKAnalyticsEvents;
import com.google.android.gms.internal.ads.zzazk;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/query/AdInfo.class */
public class AdInfo {
    private final QueryInfo zzhrz;
    private final String zzhsa;

    public AdInfo(QueryInfo queryInfo, String str) {
        this.zzhrz = queryInfo;
        this.zzhsa = str;
    }

    public static String getRequestId(String str) {
        if (str == null) {
            zzazk.zzex("adString passed to AdInfo.getRequestId() cannot be null. Returning empty string.");
            return "";
        }
        try {
            return new JSONObject(str).optString(SDKAnalyticsEvents.PARAMETER_REQUEST_ID, "");
        } catch (JSONException e) {
            zzazk.zzex("Invalid adString passed to AdInfo.getRequestId(). Returning empty string.");
            return "";
        }
    }

    public String getAdString() {
        return this.zzhsa;
    }

    public QueryInfo getQueryInfo() {
        return this.zzhrz;
    }
}
