package com.mopub.common;

import com.mopub.common.logging.MoPubLog;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3-dex2jar.jar:com/mopub/common/MoPubAdvancedBidderData.class */
public class MoPubAdvancedBidderData {

    /* renamed from: a */
    public final String f4272a;

    public MoPubAdvancedBidderData(String str, String str2) {
        Preconditions.checkNotNull(str);
        Preconditions.checkNotNull(str2);
        this.f4272a = str;
    }

    public JSONObject toJson() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("token", this.f4272a);
        } catch (JSONException e) {
            MoPubLog.SdkLogEvent sdkLogEvent = MoPubLog.SdkLogEvent.CUSTOM;
            MoPubLog.log(sdkLogEvent, "Invalid token format: " + this.f4272a);
        }
        return jSONObject;
    }
}
