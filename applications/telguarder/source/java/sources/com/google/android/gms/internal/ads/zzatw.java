package com.google.android.gms.internal.ads;

import com.facebook.gamingservices.cloudgaming.internal.SDKAnalyticsEvents;
import com.facebook.internal.ServerProtocol;
import java.util.Arrays;
import java.util.List;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzatw.class */
public final class zzatw {
    private final int errorCode;
    private final String type;
    private String url;
    private final String zzdun;
    private final String zzdwy;
    private final boolean zzdwz;
    private final String zzdxl;
    private final List<String> zzdxn;
    private final String zzdxo;
    private final String zzdxp;
    private final boolean zzdxq;
    private final boolean zzdxr;
    private final String zzdxs;
    private final boolean zzdxt;
    private final JSONObject zzdxu;

    public zzatw(JSONObject jSONObject) {
        this.url = jSONObject.optString("url");
        this.zzdxo = jSONObject.optString("base_uri");
        this.zzdxp = jSONObject.optString("post_parameters");
        this.zzdxq = parseBoolean(jSONObject.optString("drt_include"));
        this.zzdxr = parseBoolean(jSONObject.optString("cookies_include", ServerProtocol.DIALOG_RETURN_SCOPES_TRUE));
        this.zzdun = jSONObject.optString(SDKAnalyticsEvents.PARAMETER_REQUEST_ID);
        this.type = jSONObject.optString("type");
        String optString = jSONObject.optString("errors");
        this.zzdxn = optString == null ? null : Arrays.asList(optString.split(","));
        this.errorCode = jSONObject.optInt("valid", 0) == 1 ? -2 : 1;
        this.zzdxs = jSONObject.optString("fetched_ad");
        this.zzdxt = jSONObject.optBoolean("render_test_ad_label");
        JSONObject optJSONObject = jSONObject.optJSONObject("preprocessor_flags");
        this.zzdxu = optJSONObject == null ? new JSONObject() : optJSONObject;
        this.zzdwy = jSONObject.optString("analytics_query_ad_event_id");
        this.zzdwz = jSONObject.optBoolean("is_analytics_logging_enabled");
        this.zzdxl = jSONObject.optString("pool_key");
    }

    private static boolean parseBoolean(String str) {
        if (str != null) {
            return str.equals("1") || str.equals(ServerProtocol.DIALOG_RETURN_SCOPES_TRUE);
        }
        return false;
    }

    public final int getErrorCode() {
        return this.errorCode;
    }

    public final String getUrl() {
        return this.url;
    }

    public final List<String> zzwl() {
        return this.zzdxn;
    }

    public final String zzwm() {
        return this.zzdxo;
    }

    public final String zzwn() {
        return this.zzdxp;
    }

    public final boolean zzwo() {
        return this.zzdxq;
    }

    public final boolean zzwp() {
        return this.zzdxr;
    }

    public final JSONObject zzwq() {
        return this.zzdxu;
    }

    public final String zzwr() {
        return this.zzdxl;
    }
}
