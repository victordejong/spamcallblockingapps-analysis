package com.mopub.common;

import com.mopub.common.logging.MoPubLog;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes4-dex2jar.jar:com/mopub/common/MoPubAdvancedBidderData.class */
public class MoPubAdvancedBidderData {

    /* renamed from: a  reason: collision with root package name */
    final String f33841a;

    /* renamed from: b  reason: collision with root package name */
    final String f33842b;

    public MoPubAdvancedBidderData(String str, String str2) {
        Preconditions.checkNotNull(str);
        Preconditions.checkNotNull(str2);
        this.f33841a = str;
        this.f33842b = str2;
    }

    public JSONObject toJson() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("token", this.f33841a);
        } catch (JSONException e) {
            MoPubLog.SdkLogEvent sdkLogEvent = MoPubLog.SdkLogEvent.CUSTOM;
            MoPubLog.log(sdkLogEvent, "Invalid token format: " + this.f33841a);
        }
        return jSONObject;
    }
}
