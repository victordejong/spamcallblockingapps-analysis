package com.mopub.common;

import com.mopub.common.logging.MoPubLog;
import com.razorpay.AnalyticsConstants;
import org.json.JSONException;
import org.json.JSONObject;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes3-dex2jar.jar:com/mopub/common/MoPubAdvancedBidderData.class */
public class MoPubAdvancedBidderData {

    /* renamed from: a */
    public final String f8532a;

    public MoPubAdvancedBidderData(String str, String str2) {
        Preconditions.checkNotNull(str);
        Preconditions.checkNotNull(str2);
        this.f8532a = str;
    }

    public JSONObject toJson() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(AnalyticsConstants.TOKEN, this.f8532a);
        } catch (JSONException e) {
            MoPubLog.SdkLogEvent sdkLogEvent = MoPubLog.SdkLogEvent.CUSTOM;
            StringBuilder m8728C = C22128a.m8728C("Invalid token format: ");
            m8728C.append(this.f8532a);
            MoPubLog.log(sdkLogEvent, m8728C.toString());
        }
        return jSONObject;
    }
}
