package com.appsflyer.adrevenue.adnetworks;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.appsflyer.adrevenue.AFProxyManager;
import com.appsflyer.adrevenue.data.model.AppsFlyerAdEvent;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/appsflyer/adrevenue/adnetworks/AFWrapper.class */
public class AFWrapper {
    public static void event(AppsFlyerAdRevenueWrapperType appsFlyerAdRevenueWrapperType, @NonNull AppsFlyerAdNetworkEventType appsFlyerAdNetworkEventType, @NonNull Map<String, Object> map, @NonNull String str, @Nullable String str2) {
        AFProxyManager.send(new AppsFlyerAdEvent(appsFlyerAdRevenueWrapperType, str, appsFlyerAdNetworkEventType, map, str2));
    }
}
