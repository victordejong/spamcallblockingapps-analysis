package com.appsflyer.adrevenue.adnetworks.applovin;

import android.content.Context;
import com.applovin.adview.AppLovinAdView;
import com.applovin.adview.AppLovinAdViewEventListener;
import com.applovin.adview.AppLovinIncentivizedInterstitial;
import com.applovin.adview.AppLovinInterstitialAdDialog;
import com.applovin.nativeAds.AppLovinNativeAdLoadListener;
import com.applovin.nativeAds.AppLovinNativeAdPrecacheListener;
import com.applovin.sdk.AppLovinAdClickListener;
import com.applovin.sdk.AppLovinAdDisplayListener;
import com.applovin.sdk.AppLovinAdLoadListener;
import com.applovin.sdk.AppLovinAdRewardListener;
import com.applovin.sdk.AppLovinAdVideoPlaybackListener;
import com.applovin.sdk.AppLovinPostbackListener;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/appsflyer/adrevenue/adnetworks/applovin/AppsFlyerAppLovinListener.class */
public interface AppsFlyerAppLovinListener extends AppLovinAdLoadListener, AppLovinAdDisplayListener, AppLovinAdClickListener, AppLovinAdVideoPlaybackListener, AppLovinAdViewEventListener, AppLovinNativeAdLoadListener, AppLovinPostbackListener, AppLovinNativeAdPrecacheListener, AppLovinAdRewardListener {
    void registerAppLovinAdView(AppLovinAdView appLovinAdView);

    void registerAppLovinIncentivizedInterstitial(Context context, AppLovinIncentivizedInterstitial appLovinIncentivizedInterstitial);

    void registerInterstitialAdDialog(AppLovinInterstitialAdDialog appLovinInterstitialAdDialog);

    void trackEvent(String str, Map<String, String> map);
}
