package com.applovin.adview;

import android.content.Context;
import android.graphics.PointF;
import android.util.AttributeSet;
import com.applovin.sdk.AppLovinAd;
import com.applovin.sdk.AppLovinAdClickListener;
import com.applovin.sdk.AppLovinAdDisplayListener;
import com.applovin.sdk.AppLovinAdLoadListener;
import com.applovin.sdk.AppLovinAdSize;
import com.applovin.sdk.AppLovinSdk;
@Deprecated
/* loaded from: classes-dex2jar.jar:com/applovin/adview/AdViewController.class */
public interface AdViewController {
    void contractAd();

    void destroy();

    void expandAd(PointF pointF);

    AppLovinAdSize getSize();

    String getZoneId();

    void initializeAdView(AppLovinAdView appLovinAdView, Context context, AppLovinAdSize appLovinAdSize, String str, AppLovinSdk appLovinSdk, AttributeSet attributeSet);

    boolean isAdReadyToDisplay();

    void loadNextAd();

    void onAttachedToWindow();

    void onDetachedFromWindow();

    void pause();

    void renderAd(AppLovinAd appLovinAd);

    @Deprecated
    void renderAd(AppLovinAd appLovinAd, String str);

    void resume();

    void setAdClickListener(AppLovinAdClickListener appLovinAdClickListener);

    void setAdDisplayListener(AppLovinAdDisplayListener appLovinAdDisplayListener);

    void setAdLoadListener(AppLovinAdLoadListener appLovinAdLoadListener);

    void setAdViewEventListener(AppLovinAdViewEventListener appLovinAdViewEventListener);
}
