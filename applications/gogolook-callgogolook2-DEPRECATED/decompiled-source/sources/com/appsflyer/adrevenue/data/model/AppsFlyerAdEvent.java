package com.appsflyer.adrevenue.data.model;

import android.text.TextUtils;
import com.aotter.net.trek.model.AdFetch;
import com.appsflyer.adrevenue.AppsFlyerAdRevenue;
import com.appsflyer.adrevenue.adnetworks.AppsFlyerAdNetworkEventType;
import com.appsflyer.adrevenue.adnetworks.AppsFlyerAdRevenueWrapperType;
import com.mopub.network.ImpressionData;
import java.util.HashMap;
import java.util.Map;
import java.util.logging.Logger;
import p459j.p460a.p582w0.p590x4.C14247d;
/* loaded from: classes-dex2jar.jar:com/appsflyer/adrevenue/data/model/AppsFlyerAdEvent.class */
public class AppsFlyerAdEvent {
    public String adNetworkActionName;
    public AppsFlyerAdNetworkEventType adNetworkEventType;
    public AppsFlyerAdRevenueWrapperType adNetworkName;
    public String error;
    public Map<String, Object> payload;

    public AppsFlyerAdEvent(AppsFlyerAdRevenueWrapperType appsFlyerAdRevenueWrapperType, String str, AppsFlyerAdNetworkEventType appsFlyerAdNetworkEventType, Map<String, Object> map, String str2) {
        this.adNetworkName = appsFlyerAdRevenueWrapperType;
        this.payload = map;
        this.adNetworkActionName = str;
        this.adNetworkEventType = appsFlyerAdNetworkEventType;
        this.error = str2;
    }

    public String getAdNetworkActionName() {
        return this.adNetworkActionName;
    }

    public AppsFlyerAdNetworkEventType getAdNetworkEventType() {
        return this.adNetworkEventType;
    }

    public AppsFlyerAdRevenueWrapperType getAdNetworkName() {
        return this.adNetworkName;
    }

    public Map<String, Object> getAdNetworkPayload() {
        return this.payload;
    }

    public String getError() {
        return this.error;
    }

    public boolean hasError() {
        return !TextUtils.isEmpty(this.error) && !this.error.equals(C14247d.f31851f);
    }

    public Map<String, Object> toHashMap() {
        HashMap hashMap = new HashMap();
        hashMap.put("name", this.adNetworkName.toString());
        hashMap.put("event_type", this.adNetworkEventType.toString());
        hashMap.put("action_name", this.adNetworkActionName);
        hashMap.put(AdFetch.AD_PAYLOAD_KEY, this.payload);
        if (hasError()) {
            hashMap.put("error", this.error);
        }
        if (this.adNetworkName == AppsFlyerAdRevenueWrapperType.MOPUB && (!this.payload.containsKey(ImpressionData.NETWORK_NAME) || !this.payload.containsKey(ImpressionData.PUBLISHER_REVENUE))) {
            Logger.getLogger(AppsFlyerAdRevenue.class.getName()).warning("No network name or revenue in payload");
        }
        return hashMap;
    }
}
