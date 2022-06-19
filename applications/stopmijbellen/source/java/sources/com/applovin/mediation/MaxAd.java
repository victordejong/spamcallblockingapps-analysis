package com.applovin.mediation;

import com.applovin.sdk.AppLovinSdkUtils;
/* loaded from: classes-dex2jar.jar:com/applovin/mediation/MaxAd.class */
public interface MaxAd {
    String getAdUnitId();

    String getAdValue(String str);

    String getAdValue(String str, String str2);

    String getCreativeId();

    MaxAdFormat getFormat();

    String getNetworkName();

    String getNetworkPlacement();

    String getPlacement();

    double getRevenue();

    String getRevenuePrecision();

    AppLovinSdkUtils.Size getSize();

    MaxAdWaterfallInfo getWaterfall();
}
