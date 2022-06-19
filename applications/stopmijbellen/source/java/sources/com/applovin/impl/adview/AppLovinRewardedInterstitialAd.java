package com.applovin.impl.adview;

import android.content.Context;
import com.applovin.adview.AppLovinIncentivizedInterstitial;
import com.applovin.sdk.AppLovinAd;
import com.applovin.sdk.AppLovinAdClickListener;
import com.applovin.sdk.AppLovinAdDisplayListener;
import com.applovin.sdk.AppLovinAdRewardListener;
import com.applovin.sdk.AppLovinAdVideoPlaybackListener;
import com.applovin.sdk.AppLovinSdk;
/* loaded from: classes-dex2jar.jar:com/applovin/impl/adview/AppLovinRewardedInterstitialAd.class */
public class AppLovinRewardedInterstitialAd {

    /* renamed from: a */
    private final AppLovinIncentivizedInterstitial f3371a;

    /* renamed from: b */
    private AppLovinAdDisplayListener f3372b;

    /* renamed from: c */
    private AppLovinAdClickListener f3373c;

    /* renamed from: d */
    private AppLovinAdVideoPlaybackListener f3374d;

    public AppLovinRewardedInterstitialAd(AppLovinSdk appLovinSdk) {
        this.f3371a = new AppLovinIncentivizedInterstitial(appLovinSdk);
    }

    public void setAdClickListener(AppLovinAdClickListener appLovinAdClickListener) {
        this.f3373c = appLovinAdClickListener;
    }

    public void setAdDisplayListener(AppLovinAdDisplayListener appLovinAdDisplayListener) {
        this.f3372b = appLovinAdDisplayListener;
    }

    public void setAdVideoPlaybackListener(AppLovinAdVideoPlaybackListener appLovinAdVideoPlaybackListener) {
        this.f3374d = appLovinAdVideoPlaybackListener;
    }

    public void show(AppLovinAd appLovinAd, Context context, AppLovinAdRewardListener appLovinAdRewardListener) {
        this.f3371a.show(appLovinAd, context, appLovinAdRewardListener, this.f3374d, this.f3372b, this.f3373c);
    }

    public String toString() {
        return "AppLovinRewardedInterstitialAd{}";
    }
}
