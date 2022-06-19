package com.facebook.ads;

import com.facebook.ads.AbstractC0845Ad;
/* loaded from: classes-dex2jar.jar:com/facebook/ads/FullScreenAd.class */
public interface FullScreenAd extends AbstractC0845Ad {

    /* loaded from: classes-dex2jar.jar:com/facebook/ads/FullScreenAd$ShowAdConfig.class */
    public interface ShowAdConfig {
    }

    /* loaded from: classes-dex2jar.jar:com/facebook/ads/FullScreenAd$ShowConfigBuilder.class */
    public interface ShowConfigBuilder {
        ShowAdConfig build();
    }

    AbstractC0845Ad.LoadConfigBuilder buildLoadAdConfig();

    ShowConfigBuilder buildShowAdConfig();

    boolean show();
}
