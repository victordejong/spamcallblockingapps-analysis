package com.applovin.mediation.adapter.listeners;

import android.os.Bundle;
import com.applovin.mediation.adapter.MaxAdapterError;
import com.applovin.mediation.nativeAds.MaxNativeAd;
/* loaded from: classes-dex2jar.jar:com/applovin/mediation/adapter/listeners/MaxNativeAdAdapterListener.class */
public interface MaxNativeAdAdapterListener extends MaxAdapterListener {
    void onNativeAdClicked();

    void onNativeAdDisplayed(Bundle bundle);

    void onNativeAdLoadFailed(MaxAdapterError maxAdapterError);

    void onNativeAdLoaded(MaxNativeAd maxNativeAd, Bundle bundle);
}
