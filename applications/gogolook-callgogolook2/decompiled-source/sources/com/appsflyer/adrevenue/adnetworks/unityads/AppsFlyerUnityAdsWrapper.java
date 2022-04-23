package com.appsflyer.adrevenue.adnetworks.unityads;

import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.appsflyer.AFLogger;
import com.appsflyer.adrevenue.adnetworks.AFPayload;
import com.appsflyer.adrevenue.adnetworks.AFWrapper;
import com.appsflyer.adrevenue.adnetworks.AppsFlyerAdNetworkEventType;
import com.appsflyer.adrevenue.adnetworks.AppsFlyerAdRevenueWrapperType;
import com.appsflyer.adrevenue.internal.AFChainMap;
import com.unity3d.ads.UnityAds;
import com.unity3d.services.UnityServices;
import com.unity3d.services.monetization.UnityMonetization;
import com.unity3d.services.monetization.placementcontent.core.PlacementContent;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/appsflyer/adrevenue/adnetworks/unityads/AppsFlyerUnityAdsWrapper.class */
public class AppsFlyerUnityAdsWrapper extends AFWrapper implements AppsFlyerUnityAdsListener {
    public static AppsFlyerUnityAdsWrapper instance;

    static {
        AFLogger.afInfoLog("AppsFlyerUnityAdsWrapper is initialized");
    }

    private void event(@Nullable String str, @NonNull AppsFlyerAdNetworkEventType appsFlyerAdNetworkEventType, @NonNull AppsFlyerUnityAdsEventActionNames appsFlyerUnityAdsEventActionNames, @Nullable String str2, @Nullable Map<AFPayload, String> map) {
        Map<AFPayload, String> map2 = map;
        if (map == null) {
            map2 = new HashMap<>();
        }
        map2.put(AFPayload.AdId, str);
        HashMap hashMap = new HashMap();
        for (Map.Entry<AFPayload, String> entry : map2.entrySet()) {
            hashMap.put(entry.getKey().toString(), entry.getValue());
        }
        AFWrapper.event(AppsFlyerAdRevenueWrapperType.UNITY_ADS, appsFlyerAdNetworkEventType, hashMap, appsFlyerUnityAdsEventActionNames.toString(), str2);
    }

    public static AppsFlyerUnityAdsWrapper instance() {
        if (instance == null) {
            instance = new AppsFlyerUnityAdsWrapper();
        }
        return instance;
    }

    public void onAdFinished(String str, UnityAds.FinishState finishState) {
        event(str, AppsFlyerAdNetworkEventType.SHOW_AD, AppsFlyerUnityAdsEventActionNames.OnAdFinished, (String) null, new AFChainMap().place(AFPayload.FinishState, finishState.toString()));
    }

    public void onAdStarted(String str) {
        event(str, AppsFlyerAdNetworkEventType.SHOW_AD, AppsFlyerUnityAdsEventActionNames.OnAdStarted, (String) null, (Map<AFPayload, String>) null);
    }

    public void onPlacementContentReady(String str, PlacementContent placementContent) {
        event(str, AppsFlyerAdNetworkEventType.MONETIZATION, AppsFlyerUnityAdsEventActionNames.OnPlacementContentReady, (String) null, new AFChainMap().place(AFPayload.PlacementContentType, placementContent.getType()));
    }

    public void onPlacementContentStateChange(String str, PlacementContent placementContent, UnityMonetization.PlacementContentState placementContentState, UnityMonetization.PlacementContentState placementContentState2) {
        event(str, AppsFlyerAdNetworkEventType.MONETIZATION, AppsFlyerUnityAdsEventActionNames.OnPlacementContentState, (String) null, new AFChainMap().place(AFPayload.PlacementContentType, placementContent.getType()).place(AFPayload.PlacementPreviousState, placementContentState.toString()).place(AFPayload.PlacementNewState, placementContentState2.toString()));
    }

    public void onUnityAdsClick(String str) {
        event(str, AppsFlyerAdNetworkEventType.AD_EXTENDED, AppsFlyerUnityAdsEventActionNames.OnUnityAdsClick, (String) null, (Map<AFPayload, String>) null);
    }

    public void onUnityAdsError(UnityAds.UnityAdsError unityAdsError, String str) {
        event((String) null, AppsFlyerAdNetworkEventType.AD, AppsFlyerUnityAdsEventActionNames.OnUnityAdsError, str, new AFChainMap().place(AFPayload.ErrorType, unityAdsError.toString()));
    }

    public void onUnityAdsFinish(String str, UnityAds.FinishState finishState) {
        event(str, AppsFlyerAdNetworkEventType.AD, AppsFlyerUnityAdsEventActionNames.OnUnityAdsFinish, (String) null, new AFChainMap().place(AFPayload.FinishState, finishState.toString()));
    }

    public void onUnityAdsPlacementStateChanged(String str, UnityAds.PlacementState placementState, UnityAds.PlacementState placementState2) {
        event(str, AppsFlyerAdNetworkEventType.AD_EXTENDED, AppsFlyerUnityAdsEventActionNames.OnUnityAdsPlacementStateChanged, (String) null, new AFChainMap().place(AFPayload.PlacementPreviousState, placementState.toString()).place(AFPayload.PlacementNewState, placementState2.toString()));
    }

    public void onUnityAdsReady(String str) {
        event(str, AppsFlyerAdNetworkEventType.AD, AppsFlyerUnityAdsEventActionNames.OnUnityAdsReady, (String) null, (Map<AFPayload, String>) null);
    }

    public void onUnityAdsStart(String str) {
        event(str, AppsFlyerAdNetworkEventType.AD, AppsFlyerUnityAdsEventActionNames.OnUnityAdsStart, (String) null, (Map<AFPayload, String>) null);
    }

    public void onUnityBannerClick(String str) {
        event(str, AppsFlyerAdNetworkEventType.BANNER, AppsFlyerUnityAdsEventActionNames.OnUnityBannerClick, (String) null, (Map<AFPayload, String>) null);
    }

    public void onUnityBannerError(String str) {
        event((String) null, AppsFlyerAdNetworkEventType.BANNER, AppsFlyerUnityAdsEventActionNames.OnUnityBannerError, str, (Map<AFPayload, String>) null);
    }

    public void onUnityBannerHide(String str) {
        event(str, AppsFlyerAdNetworkEventType.BANNER, AppsFlyerUnityAdsEventActionNames.OnUnityBannerHide, (String) null, (Map<AFPayload, String>) null);
    }

    public void onUnityBannerLoaded(String str, View view) {
        event(str, AppsFlyerAdNetworkEventType.BANNER, AppsFlyerUnityAdsEventActionNames.OnUnityBannerLoaded, (String) null, (Map<AFPayload, String>) null);
    }

    public void onUnityBannerShow(String str) {
        event(str, AppsFlyerAdNetworkEventType.BANNER, AppsFlyerUnityAdsEventActionNames.OnUnityBannerShow, (String) null, (Map<AFPayload, String>) null);
    }

    public void onUnityBannerUnloaded(String str) {
        event(str, AppsFlyerAdNetworkEventType.BANNER, AppsFlyerUnityAdsEventActionNames.OnUnityBannerUnloaded, (String) null, (Map<AFPayload, String>) null);
    }

    public void onUnityServicesError(UnityServices.UnityServicesError unityServicesError, String str) {
        event((String) null, AppsFlyerAdNetworkEventType.SERVICE, AppsFlyerUnityAdsEventActionNames.OnUnityServicesError, str, new AFChainMap().place(AFPayload.ErrorType, unityServicesError.toString()));
    }
}
