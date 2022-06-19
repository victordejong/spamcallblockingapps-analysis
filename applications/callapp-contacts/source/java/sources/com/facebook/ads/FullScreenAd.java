package com.facebook.ads;

import com.facebook.ads.AbstractC9941Ad;
/* loaded from: classes3-dex2jar.jar:com/facebook/ads/FullScreenAd.class */
public interface FullScreenAd extends AbstractC9941Ad {

    /* loaded from: classes3-dex2jar.jar:com/facebook/ads/FullScreenAd$ShowAdConfig.class */
    public interface ShowAdConfig {
    }

    /* loaded from: classes3-dex2jar.jar:com/facebook/ads/FullScreenAd$ShowConfigBuilder.class */
    public interface ShowConfigBuilder {
        ShowAdConfig build();
    }

    AbstractC9941Ad.LoadConfigBuilder buildLoadAdConfig();

    ShowConfigBuilder buildShowAdConfig();

    boolean show();
}
