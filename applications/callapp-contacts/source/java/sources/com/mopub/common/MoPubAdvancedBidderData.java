package com.mopub.common;

import com.mopub.common.logging.MoPubLog;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes4-dex2jar.jar:com/mopub/common/MoPubAdvancedBidderData.class */
public class MoPubAdvancedBidderData {

    /* renamed from: a */
    final String f58765a;

    /* renamed from: b */
    final String f58766b;

    public MoPubAdvancedBidderData(String str, String str2) {
        Preconditions.checkNotNull(str);
        Preconditions.checkNotNull(str2);
        this.f58765a = str;
        this.f58766b = str2;
    }

    public JSONObject toJson() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("token", this.f58765a);
        } catch (JSONException e) {
            MoPubLog.SdkLogEvent sdkLogEvent = MoPubLog.SdkLogEvent.CUSTOM;
            MoPubLog.log(sdkLogEvent, "Invalid token format: " + this.f58765a);
        }
        return jSONObject;
    }
}
