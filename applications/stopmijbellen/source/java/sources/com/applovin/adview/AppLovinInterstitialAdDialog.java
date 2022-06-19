package com.applovin.adview;

import android.view.ViewGroup;
import androidx.lifecycle.AbstractC0516f;
import com.applovin.sdk.AppLovinAd;
import com.applovin.sdk.AppLovinAdClickListener;
import com.applovin.sdk.AppLovinAdDisplayListener;
import com.applovin.sdk.AppLovinAdLoadListener;
import com.applovin.sdk.AppLovinAdVideoPlaybackListener;
/* loaded from: classes-dex2jar.jar:com/applovin/adview/AppLovinInterstitialAdDialog.class */
public interface AppLovinInterstitialAdDialog {
    void setAdClickListener(AppLovinAdClickListener appLovinAdClickListener);

    void setAdDisplayListener(AppLovinAdDisplayListener appLovinAdDisplayListener);

    void setAdLoadListener(AppLovinAdLoadListener appLovinAdLoadListener);

    void setAdVideoPlaybackListener(AppLovinAdVideoPlaybackListener appLovinAdVideoPlaybackListener);

    void show();

    void showAndRender(AppLovinAd appLovinAd);

    void showAndRender(AppLovinAd appLovinAd, ViewGroup viewGroup, AbstractC0516f abstractC0516f);
}
