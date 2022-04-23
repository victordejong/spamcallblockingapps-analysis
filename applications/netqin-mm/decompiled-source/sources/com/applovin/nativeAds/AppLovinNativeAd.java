package com.applovin.nativeAds;

import android.content.Context;
import com.applovin.sdk.AppLovinPostbackListener;
/* loaded from: classes-dex2jar.jar:com/applovin/nativeAds/AppLovinNativeAd.class */
public interface AppLovinNativeAd {
    long getAdId();

    String getCaptionText();

    String getCtaText();

    String getDescriptionText();

    String getIconUrl();

    String getImageUrl();

    float getStarRating();

    String getTitle();

    String getVideoEndTrackingUrl(int i, boolean z);

    String getVideoStartTrackingUrl();

    String getVideoUrl();

    @Deprecated
    String getZoneId();

    boolean isImagePrecached();

    boolean isVideoPrecached();

    void launchClickTarget(Context context);

    void trackImpression();

    void trackImpression(AppLovinPostbackListener appLovinPostbackListener);
}
