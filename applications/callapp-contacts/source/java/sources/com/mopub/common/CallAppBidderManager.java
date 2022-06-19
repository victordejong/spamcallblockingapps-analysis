package com.mopub.common;

import android.text.TextUtils;
import com.mopub.common.logging.MoPubLog;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes4-dex2jar.jar:com/mopub/common/CallAppBidderManager.class */
public class CallAppBidderManager {

    /* renamed from: a */
    private static Map<String, AdRequestStatus> f58664a = new HashMap();

    /* loaded from: classes4-dex2jar.jar:com/mopub/common/CallAppBidderManager$AdRequestStatus.class */
    public static class AdRequestStatus {
        public double minPrice;
    }

    public static boolean shouldStopLoading(String str, double d) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        AdRequestStatus adRequestStatus = f58664a.get(str);
        if (adRequestStatus == null) {
            return true;
        }
        boolean z = adRequestStatus.minPrice > 0.0d && d < adRequestStatus.minPrice;
        if (z) {
            MoPubLog.SdkLogEvent sdkLogEvent = MoPubLog.SdkLogEvent.CUSTOM;
            MoPubLog.log(sdkLogEvent, "RequestId: " + str + ", stopped - price: " + d);
        }
        return z;
    }

    public static void startRequest(String str) {
        MoPubLog.SdkLogEvent sdkLogEvent = MoPubLog.SdkLogEvent.CUSTOM;
        MoPubLog.log(sdkLogEvent, "RequestId: " + str + ", starting request");
        f58664a.put(str, new AdRequestStatus());
    }

    public static void stopRequest(String str) {
        MoPubLog.SdkLogEvent sdkLogEvent = MoPubLog.SdkLogEvent.CUSTOM;
        MoPubLog.log(sdkLogEvent, "RequestId: " + str + ", stopping request");
        f58664a.remove(str);
    }

    public static void updatePriceIfNeeded(String str, double d) {
        AdRequestStatus adRequestStatus = f58664a.get(str);
        if (adRequestStatus != null) {
            double d2 = adRequestStatus.minPrice;
            if (d <= d2) {
                return;
            }
            MoPubLog.SdkLogEvent sdkLogEvent = MoPubLog.SdkLogEvent.CUSTOM;
            MoPubLog.log(sdkLogEvent, "RequestId: " + str + ", updating price - old price: " + d2 + ", new price: " + d);
            adRequestStatus.minPrice = d;
        }
    }
}
