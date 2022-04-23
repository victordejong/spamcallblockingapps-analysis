package com.mopub.common;

import android.text.TextUtils;
import com.mopub.common.logging.MoPubLog;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes4-dex2jar.jar:com/mopub/common/CallAppBidderManager.class */
public class CallAppBidderManager {

    /* renamed from: a  reason: collision with root package name */
    private static Map<String, AdRequestStatus> f33789a = new HashMap();

    /* loaded from: classes4-dex2jar.jar:com/mopub/common/CallAppBidderManager$AdRequestStatus.class */
    public static class AdRequestStatus {
        public double minPrice;
    }

    public static boolean shouldStopLoading(String str, double d2) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        AdRequestStatus adRequestStatus = f33789a.get(str);
        if (adRequestStatus == null) {
            return true;
        }
        boolean z = adRequestStatus.minPrice > 0.0d && d2 < adRequestStatus.minPrice;
        if (z) {
            MoPubLog.SdkLogEvent sdkLogEvent = MoPubLog.SdkLogEvent.CUSTOM;
            MoPubLog.log(sdkLogEvent, "RequestId: " + str + ", stopped - price: " + d2);
        }
        return z;
    }

    public static void startRequest(String str) {
        MoPubLog.SdkLogEvent sdkLogEvent = MoPubLog.SdkLogEvent.CUSTOM;
        MoPubLog.log(sdkLogEvent, "RequestId: " + str + ", starting request");
        f33789a.put(str, new AdRequestStatus());
    }

    public static void stopRequest(String str) {
        MoPubLog.SdkLogEvent sdkLogEvent = MoPubLog.SdkLogEvent.CUSTOM;
        MoPubLog.log(sdkLogEvent, "RequestId: " + str + ", stopping request");
        f33789a.remove(str);
    }

    public static void updatePriceIfNeeded(String str, double d2) {
        AdRequestStatus adRequestStatus = f33789a.get(str);
        if (adRequestStatus != null) {
            double d3 = adRequestStatus.minPrice;
            if (d2 > d3) {
                MoPubLog.SdkLogEvent sdkLogEvent = MoPubLog.SdkLogEvent.CUSTOM;
                MoPubLog.log(sdkLogEvent, "RequestId: " + str + ", updating price - old price: " + d3 + ", new price: " + d2);
                adRequestStatus.minPrice = d2;
            }
        }
    }
}
