package com.google.android.gms.ads.query;

import com.google.android.gms.internal.ads.za;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/ads/query/AdInfo.class */
public class AdInfo {
    private final QueryInfo zzhvb;
    private final String zzhvc;

    public AdInfo(QueryInfo queryInfo, String str) {
        this.zzhvb = queryInfo;
        this.zzhvc = str;
    }

    public static String getRequestId(String str) {
        if (str == null) {
            za.zzez("adString passed to AdInfo.getRequestId() cannot be null. Returning empty string.");
            return "";
        }
        try {
            return new JSONObject(str).optString("request_id", "");
        } catch (JSONException e) {
            za.zzez("Invalid adString passed to AdInfo.getRequestId(). Returning empty string.");
            return "";
        }
    }

    public String getAdString() {
        return this.zzhvc;
    }

    public QueryInfo getQueryInfo() {
        return this.zzhvb;
    }
}
