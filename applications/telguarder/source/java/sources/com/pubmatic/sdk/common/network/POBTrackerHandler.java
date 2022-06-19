package com.pubmatic.sdk.common.network;

import android.net.Uri;
import androidx.webkit.ProxyConfig;
import com.pubmatic.sdk.common.POBCommonConstants;
import com.pubmatic.sdk.common.POBError;
import com.pubmatic.sdk.common.log.PMLog;
import com.pubmatic.sdk.common.models.POBDeviceInfo;
import com.pubmatic.sdk.common.network.POBHttpRequest;
import com.pubmatic.sdk.common.network.POBNetworkHandler;
import com.pubmatic.sdk.common.utility.POBUtils;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/common/network/POBTrackerHandler.class */
public class POBTrackerHandler {

    /* renamed from: a */
    private final POBNetworkHandler f547a;

    /* renamed from: b */
    private POBDeviceInfo f548b;

    /* renamed from: com.pubmatic.sdk.common.network.POBTrackerHandler$a */
    /* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/common/network/POBTrackerHandler$a.class */
    public class C1880a implements POBNetworkHandler.POBNetworkListener<String> {

        /* renamed from: a */
        final /* synthetic */ String f549a;

        C1880a(POBTrackerHandler pOBTrackerHandler, String str) {
            this.f549a = str;
        }

        /* renamed from: a */
        public void onSuccess(String str) {
            PMLog.debug("PMTrackerHandler", "Successfully executed tracker url : " + this.f549a, new Object[0]);
        }

        @Override // com.pubmatic.sdk.common.network.POBNetworkHandler.POBNetworkListener
        public void onFailure(POBError pOBError) {
            PMLog.error("PMTrackerHandler", "Failed to execute tracker url : " + this.f549a, "\n Error : " + pOBError.getErrorMessage());
        }
    }

    public POBTrackerHandler(POBNetworkHandler pOBNetworkHandler) {
        this.f547a = pOBNetworkHandler;
    }

    public static String sanitizeURLScheme(String str, Boolean bool) {
        String str2;
        if (!POBUtils.isNullOrEmpty(str)) {
            Uri parse = Uri.parse(str);
            str2 = str;
            if (parse != null) {
                str2 = str;
                if (parse.getScheme() == null) {
                    str2 = parse.buildUpon().scheme(bool.booleanValue() ? ProxyConfig.MATCH_HTTPS : ProxyConfig.MATCH_HTTP).build().toString();
                }
            }
        } else {
            str2 = null;
        }
        return str2;
    }

    public static List<String> sanitizeURLScheme(List<String> list, Boolean bool) {
        ArrayList arrayList = new ArrayList();
        for (String str : list) {
            String sanitizeURLScheme = sanitizeURLScheme(str, bool);
            if (sanitizeURLScheme != null) {
                arrayList.add(sanitizeURLScheme);
            }
        }
        return arrayList;
    }

    public void sendTracker(String str) {
        if (str == null || str.isEmpty()) {
            PMLog.error("PMTrackerHandler", "Null argument found during sendTracker in PMTrackerHandler. Skipping tracker execution.", new Object[0]);
            return;
        }
        PMLog.debug("PMTrackerHandler", "Executing tracker for url: %s", str);
        POBHttpRequest pOBHttpRequest = new POBHttpRequest();
        pOBHttpRequest.setUrl(str);
        pOBHttpRequest.setRetryCount(3);
        pOBHttpRequest.setRequestMethod(POBHttpRequest.HTTP_METHOD.GET);
        pOBHttpRequest.setTimeout(10000);
        if (this.f548b != null) {
            HashMap hashMap = new HashMap();
            hashMap.put(POBCommonConstants.USER_AGENT, this.f548b.getUserAgent());
            pOBHttpRequest.setHeaders(hashMap);
        }
        this.f547a.sendRequest(pOBHttpRequest, new C1880a(this, str));
    }

    public void sendTracker(String str, String str2, String str3) {
        if (str.isEmpty()) {
            PMLog.error("PMTrackerHandler", "Empty tracker url.", new Object[0]);
            return;
        }
        String str4 = str;
        if (str2 != null) {
            str4 = str;
            if (str3 != null) {
                str4 = str.replace(str2, str3);
            }
        }
        sendTracker(str4);
    }

    public void sendTrackers(List<String> list) {
        if (list == null || list.isEmpty()) {
            PMLog.error("PMTrackerHandler", "Null argument found during sendTrackers in PMTrackerHandler. Skipping tracker execution.", new Object[0]);
            return;
        }
        for (String str : list) {
            sendTracker(str);
        }
    }

    public void sendTrackers(List<String> list, String str, String str2) {
        for (String str3 : list) {
            sendTracker(str3, str, str2);
        }
    }

    public void setDeviceInfo(POBDeviceInfo pOBDeviceInfo) {
        this.f548b = pOBDeviceInfo;
    }
}
