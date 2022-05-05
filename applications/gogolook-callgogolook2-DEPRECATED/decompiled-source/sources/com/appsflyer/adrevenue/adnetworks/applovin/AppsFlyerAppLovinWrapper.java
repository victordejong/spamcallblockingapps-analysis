package com.appsflyer.adrevenue.adnetworks.applovin;

import android.content.Context;
import androidx.annotation.Nullable;
import com.aotter.net.trek.model.AdFetch;
import com.applovin.adview.AppLovinAdView;
import com.applovin.adview.AppLovinAdViewDisplayErrorCode;
import com.applovin.adview.AppLovinIncentivizedInterstitial;
import com.applovin.adview.AppLovinInterstitialAdDialog;
import com.applovin.nativeAds.AppLovinNativeAd;
import com.applovin.sdk.AppLovinAd;
import com.appsflyer.adrevenue.adnetworks.AFWrapper;
import com.appsflyer.adrevenue.adnetworks.AppsFlyerAdNetworkEventType;
import com.appsflyer.adrevenue.adnetworks.AppsFlyerAdRevenueWrapperType;
import com.appsflyer.internal.referrer.Payload;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/appsflyer/adrevenue/adnetworks/applovin/AppsFlyerAppLovinWrapper.class */
public class AppsFlyerAppLovinWrapper extends AFWrapper implements AppsFlyerAppLovinListener {
    public static AppsFlyerAppLovinWrapper instance;

    private Map<String, Object> getObjectFromAppLovinNativeAd(AppLovinNativeAd appLovinNativeAd) {
        HashMap hashMap = new HashMap();
        hashMap.put("adId", Long.valueOf(appLovinNativeAd.getAdId()));
        hashMap.put("captionText", appLovinNativeAd.getCaptionText());
        hashMap.put("ctaText", appLovinNativeAd.getCtaText());
        hashMap.put("descriptionText", appLovinNativeAd.getDescriptionText());
        hashMap.put("iconUrl", appLovinNativeAd.getIconUrl());
        hashMap.put("imageUrl", appLovinNativeAd.getImageUrl());
        hashMap.put("ImpressionTracking", appLovinNativeAd.getImpressionTrackingUrl());
        hashMap.put("starRating", Float.valueOf(appLovinNativeAd.getStarRating()));
        hashMap.put("title", appLovinNativeAd.getTitle());
        hashMap.put("videoStartTracking", appLovinNativeAd.getVideoStartTrackingUrl());
        hashMap.put("videoUrl", appLovinNativeAd.getVideoUrl());
        hashMap.put("zoneId", appLovinNativeAd.getZoneId());
        return hashMap;
    }

    public static AppsFlyerAppLovinWrapper instance() {
        if (instance == null) {
            instance = new AppsFlyerAppLovinWrapper();
        }
        return instance;
    }

    private void trackEvent(@Nullable AppLovinNativeAd appLovinNativeAd, AppsFlyerAdNetworkEventType appsFlyerAdNetworkEventType, AppsFlyerAppLovinEventActionNames appsFlyerAppLovinEventActionNames) {
        trackEvent(appLovinNativeAd, appsFlyerAdNetworkEventType, appsFlyerAppLovinEventActionNames, new HashMap());
    }

    private void trackEvent(@Nullable AppLovinNativeAd appLovinNativeAd, AppsFlyerAdNetworkEventType appsFlyerAdNetworkEventType, AppsFlyerAppLovinEventActionNames appsFlyerAppLovinEventActionNames, Map<String, Object> map) {
        if (appLovinNativeAd != null) {
            map.put("adId", Long.valueOf(appLovinNativeAd.getAdId()));
            map.put("captionText", appLovinNativeAd.getCaptionText());
            map.put("ctaText", appLovinNativeAd.getCtaText());
            map.put("videoStartTracking", appLovinNativeAd.getVideoStartTrackingUrl());
            map.put("videoUrl", appLovinNativeAd.getVideoUrl());
            map.put("zoneId", appLovinNativeAd.getZoneId());
        }
        trackEvent(appsFlyerAdNetworkEventType, appsFlyerAppLovinEventActionNames, map);
    }

    private void trackEvent(AppLovinAd appLovinAd, AppsFlyerAdNetworkEventType appsFlyerAdNetworkEventType, AppsFlyerAppLovinEventActionNames appsFlyerAppLovinEventActionNames) {
        trackEvent(appLovinAd, appsFlyerAdNetworkEventType, appsFlyerAppLovinEventActionNames, new HashMap());
    }

    private void trackEvent(AppLovinAd appLovinAd, AppsFlyerAdNetworkEventType appsFlyerAdNetworkEventType, AppsFlyerAppLovinEventActionNames appsFlyerAppLovinEventActionNames, Map<String, Object> map) {
        if (appLovinAd != null) {
            map.put("zoneId", appLovinAd.getZoneId());
            map.put("adIdNumber", String.valueOf(appLovinAd.getAdIdNumber()));
            map.put(AdFetch.AD_ADTYPE_KEY, appLovinAd.getType().toString());
        }
        trackEvent(appsFlyerAdNetworkEventType, appsFlyerAppLovinEventActionNames, map);
    }

    private void trackEvent(AppsFlyerAdNetworkEventType appsFlyerAdNetworkEventType, AppsFlyerAppLovinEventActionNames appsFlyerAppLovinEventActionNames) {
        trackEvent(appsFlyerAdNetworkEventType, appsFlyerAppLovinEventActionNames, new HashMap());
    }

    private void trackEvent(AppsFlyerAdNetworkEventType appsFlyerAdNetworkEventType, AppsFlyerAppLovinEventActionNames appsFlyerAppLovinEventActionNames, String str) {
        AFWrapper.event(AppsFlyerAdRevenueWrapperType.APPLOVIN, appsFlyerAdNetworkEventType, new HashMap(), appsFlyerAppLovinEventActionNames.toString(), str);
    }

    private void trackEvent(AppsFlyerAdNetworkEventType appsFlyerAdNetworkEventType, AppsFlyerAppLovinEventActionNames appsFlyerAppLovinEventActionNames, Map<String, Object> map) {
        trackEvent(appsFlyerAdNetworkEventType, appsFlyerAppLovinEventActionNames, map, (String) null);
    }

    private void trackEvent(AppsFlyerAdNetworkEventType appsFlyerAdNetworkEventType, AppsFlyerAppLovinEventActionNames appsFlyerAppLovinEventActionNames, Map<String, Object> map, String str) {
        AFWrapper.event(AppsFlyerAdRevenueWrapperType.APPLOVIN, appsFlyerAdNetworkEventType, map, appsFlyerAppLovinEventActionNames.toString(), str);
    }

    public void adClicked(AppLovinAd appLovinAd) {
        trackEvent(appLovinAd, AppsFlyerAdNetworkEventType.AD_CLICK, AppsFlyerAppLovinEventActionNames.AdClicked);
    }

    public void adClosedFullscreen(AppLovinAd appLovinAd, AppLovinAdView appLovinAdView) {
        trackEvent(appLovinAd, AppsFlyerAdNetworkEventType.AD_VIEW_EVENT, AppsFlyerAppLovinEventActionNames.AdClosedFullscreen);
    }

    public void adDisplayed(AppLovinAd appLovinAd) {
        trackEvent(appLovinAd, AppsFlyerAdNetworkEventType.AD_DISPLAY, AppsFlyerAppLovinEventActionNames.AdDisplayed);
    }

    public void adFailedToDisplay(AppLovinAd appLovinAd, AppLovinAdView appLovinAdView, AppLovinAdViewDisplayErrorCode appLovinAdViewDisplayErrorCode) {
        trackEvent(appLovinAd, AppsFlyerAdNetworkEventType.AD_VIEW_EVENT, AppsFlyerAppLovinEventActionNames.AdFailedToDisplay);
    }

    public void adHidden(AppLovinAd appLovinAd) {
        trackEvent(appLovinAd, AppsFlyerAdNetworkEventType.AD_DISPLAY, AppsFlyerAppLovinEventActionNames.AdHidden);
    }

    public void adLeftApplication(AppLovinAd appLovinAd, AppLovinAdView appLovinAdView) {
        trackEvent(appLovinAd, AppsFlyerAdNetworkEventType.AD_VIEW_EVENT, AppsFlyerAppLovinEventActionNames.AdLeftApplication);
    }

    public void adOpenedFullscreen(AppLovinAd appLovinAd, AppLovinAdView appLovinAdView) {
        trackEvent(appLovinAd, AppsFlyerAdNetworkEventType.AD_VIEW_EVENT, AppsFlyerAppLovinEventActionNames.AdOpenedFullscreen);
    }

    public void adReceived(AppLovinAd appLovinAd) {
        trackEvent(appLovinAd, AppsFlyerAdNetworkEventType.AD_LOAD, AppsFlyerAppLovinEventActionNames.AdReceived);
    }

    public void failedToReceiveAd(int i) {
        trackEvent(AppsFlyerAdNetworkEventType.AD_LOAD, AppsFlyerAppLovinEventActionNames.FailedToReceiveAd, String.valueOf(i));
    }

    public void onNativeAdImagePrecachingFailed(AppLovinNativeAd appLovinNativeAd, int i) {
        HashMap hashMap = new HashMap();
        hashMap.put("errorCode", String.valueOf(i));
        trackEvent(appLovinNativeAd, AppsFlyerAdNetworkEventType.NATIVE_AD_PRECACHE, AppsFlyerAppLovinEventActionNames.OnNativeAdImagePrecachingFailed, hashMap);
    }

    public void onNativeAdImagesPrecached(AppLovinNativeAd appLovinNativeAd) {
        trackEvent(appLovinNativeAd, AppsFlyerAdNetworkEventType.NATIVE_AD_PRECACHE, AppsFlyerAppLovinEventActionNames.OnNativeAdImagesPrecached);
    }

    public void onNativeAdVideoPrecachingFailed(AppLovinNativeAd appLovinNativeAd, int i) {
        HashMap hashMap = new HashMap();
        hashMap.put("errorCode", String.valueOf(i));
        trackEvent(appLovinNativeAd, AppsFlyerAdNetworkEventType.NATIVE_AD_PRECACHE, AppsFlyerAppLovinEventActionNames.OnNativeAdVideoPrecachingFailed, hashMap);
    }

    public void onNativeAdVideoPreceached(AppLovinNativeAd appLovinNativeAd) {
        trackEvent(appLovinNativeAd, AppsFlyerAdNetworkEventType.NATIVE_AD_PRECACHE, AppsFlyerAppLovinEventActionNames.OnNativeAdVideoPrecached);
    }

    public void onNativeAdsFailedToLoad(int i) {
        HashMap hashMap = new HashMap();
        hashMap.put("errorCode", String.valueOf(i));
        trackEvent(AppsFlyerAdNetworkEventType.NATIVE_AD_LOAD, AppsFlyerAppLovinEventActionNames.OnNativeAdsFailedToLoad, hashMap);
    }

    public void onNativeAdsLoaded(List<AppLovinNativeAd> list) {
        Map<String, Object> hashMap = new HashMap<>();
        ArrayList arrayList = new ArrayList();
        for (AppLovinNativeAd appLovinNativeAd : list) {
            arrayList.add(getObjectFromAppLovinNativeAd(appLovinNativeAd));
        }
        hashMap.put("nativeAds", arrayList);
        trackEvent(AppsFlyerAdNetworkEventType.NATIVE_AD_LOAD, AppsFlyerAppLovinEventActionNames.OnNativeAdsLoaded, hashMap);
    }

    public void onPostbackFailure(String str, int i) {
        HashMap hashMap = new HashMap();
        hashMap.put("url", str);
        hashMap.put("errorCode", Integer.valueOf(i));
        trackEvent(AppsFlyerAdNetworkEventType.POSTBACK, AppsFlyerAppLovinEventActionNames.OnPostbackFailure, hashMap);
    }

    public void onPostbackSuccess(String str) {
        HashMap hashMap = new HashMap();
        hashMap.put("url", str);
        trackEvent(AppsFlyerAdNetworkEventType.POSTBACK, AppsFlyerAppLovinEventActionNames.OnPostbackSuccess, hashMap);
    }

    @Override // com.appsflyer.adrevenue.adnetworks.applovin.AppsFlyerAppLovinListener
    public void registerAppLovinAdView(AppLovinAdView appLovinAdView) {
        appLovinAdView.setAdLoadListener(this);
        appLovinAdView.setAdDisplayListener(this);
        appLovinAdView.setAdClickListener(this);
    }

    @Override // com.appsflyer.adrevenue.adnetworks.applovin.AppsFlyerAppLovinListener
    public void registerAppLovinIncentivizedInterstitial(Context context, AppLovinIncentivizedInterstitial appLovinIncentivizedInterstitial) {
        appLovinIncentivizedInterstitial.show(context, this, this, this, this);
    }

    @Override // com.appsflyer.adrevenue.adnetworks.applovin.AppsFlyerAppLovinListener
    public void registerInterstitialAdDialog(AppLovinInterstitialAdDialog appLovinInterstitialAdDialog) {
        appLovinInterstitialAdDialog.setAdLoadListener(this);
        appLovinInterstitialAdDialog.setAdDisplayListener(this);
        appLovinInterstitialAdDialog.setAdClickListener(this);
        appLovinInterstitialAdDialog.setAdVideoPlaybackListener(this);
    }

    @Override // com.appsflyer.adrevenue.adnetworks.applovin.AppsFlyerAppLovinListener
    public void trackEvent(String str, Map<String, String> map) {
        HashMap hashMap = new HashMap();
        hashMap.put("eventType", str);
        hashMap.put("parameters", map);
        trackEvent(AppsFlyerAdNetworkEventType.NONE, AppsFlyerAppLovinEventActionNames.TrackEvent);
    }

    public void userDeclinedToViewAd(AppLovinAd appLovinAd) {
        trackEvent(appLovinAd, AppsFlyerAdNetworkEventType.AD_REWARD, AppsFlyerAppLovinEventActionNames.UserDeclinedToViewAd);
    }

    public void userOverQuota(AppLovinAd appLovinAd, Map<String, String> map) {
        HashMap hashMap = new HashMap();
        hashMap.put(Payload.RESPONSE, map);
        trackEvent(appLovinAd, AppsFlyerAdNetworkEventType.AD_REWARD, AppsFlyerAppLovinEventActionNames.UserOverQuota, hashMap);
    }

    public void userRewardRejected(AppLovinAd appLovinAd, Map<String, String> map) {
        HashMap hashMap = new HashMap();
        hashMap.put(Payload.RESPONSE, map);
        trackEvent(appLovinAd, AppsFlyerAdNetworkEventType.AD_REWARD, AppsFlyerAppLovinEventActionNames.UserRewardRejected, hashMap);
    }

    public void userRewardVerified(AppLovinAd appLovinAd, Map<String, String> map) {
        HashMap hashMap = new HashMap();
        hashMap.put(Payload.RESPONSE, map);
        trackEvent(appLovinAd, AppsFlyerAdNetworkEventType.AD_REWARD, AppsFlyerAppLovinEventActionNames.UserRewardVerified, hashMap);
    }

    public void validationRequestFailed(AppLovinAd appLovinAd, int i) {
        HashMap hashMap = new HashMap();
        hashMap.put("errorCode", Integer.valueOf(i));
        trackEvent(appLovinAd, AppsFlyerAdNetworkEventType.AD_REWARD, AppsFlyerAppLovinEventActionNames.ValidationRequestFailed, hashMap);
    }

    public void videoPlaybackBegan(AppLovinAd appLovinAd) {
        trackEvent(appLovinAd, AppsFlyerAdNetworkEventType.VIDEO_PLAYBACK, AppsFlyerAppLovinEventActionNames.VideoPlaybackBegan);
    }

    public void videoPlaybackEnded(AppLovinAd appLovinAd, double d, boolean z) {
        HashMap hashMap = new HashMap();
        hashMap.put("percentViewed", String.valueOf(d));
        hashMap.put("fullyWatched", String.valueOf(z));
        trackEvent(appLovinAd, AppsFlyerAdNetworkEventType.VIDEO_PLAYBACK, AppsFlyerAppLovinEventActionNames.VideoPlaybackEnded, hashMap);
    }
}
