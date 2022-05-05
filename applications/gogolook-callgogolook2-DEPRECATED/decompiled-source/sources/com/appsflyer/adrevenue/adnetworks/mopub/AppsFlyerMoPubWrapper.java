package com.appsflyer.adrevenue.adnetworks.mopub;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.appsflyer.adrevenue.adnetworks.AFPayload;
import com.appsflyer.adrevenue.adnetworks.AFWrapper;
import com.appsflyer.adrevenue.adnetworks.AppsFlyerAdNetworkEventType;
import com.appsflyer.adrevenue.adnetworks.AppsFlyerAdRevenueWrapperType;
import com.appsflyer.adrevenue.internal.AFChainMap;
import com.mopub.network.ImpressionData;
import com.mopub.network.ImpressionListener;
import com.mopub.network.ImpressionsEmitter;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/appsflyer/adrevenue/adnetworks/mopub/AppsFlyerMoPubWrapper.class */
public class AppsFlyerMoPubWrapper extends AFWrapper implements ImpressionListener {
    public static AppsFlyerMoPubWrapper instance;

    public static AppsFlyerMoPubWrapper instance() {
        if (instance == null) {
            instance = new AppsFlyerMoPubWrapper();
        }
        return instance;
    }

    private void trackEvent(AppsFlyerAdNetworkEventType appsFlyerAdNetworkEventType, AppsFlyerMoPubEventActionNames appsFlyerMoPubEventActionNames, Map<AFPayload, Object> map, @Nullable String str) {
        HashMap hashMap = new HashMap();
        for (Map.Entry<AFPayload, Object> entry : map.entrySet()) {
            hashMap.put(entry.getKey().toString(), entry.getValue());
        }
        AFWrapper.event(AppsFlyerAdRevenueWrapperType.MOPUB, appsFlyerAdNetworkEventType, hashMap, appsFlyerMoPubEventActionNames.toString(), String.valueOf(str));
    }

    private void trackImpressionLevelData(@NonNull String str, @Nullable ImpressionData impressionData) {
        AFChainMap place = new AFChainMap().place(AFPayload.AdUnitId, str);
        if (impressionData != null) {
            place.place(AFPayload.impressionLevelData, impressionData.getJsonRepresentation());
        }
        trackEvent(AppsFlyerAdNetworkEventType.IMPRESSION_LEVEL_DATA, AppsFlyerMoPubEventActionNames.ImpressionLevelData, place, null);
    }

    @Override // com.mopub.network.ImpressionListener
    public void onImpression(@NonNull String str, @Nullable ImpressionData impressionData) {
        trackImpressionLevelData(str, impressionData);
    }

    public void recordImpressionData() {
        ImpressionsEmitter.addListener(this);
    }
}
