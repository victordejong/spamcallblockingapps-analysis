package com.facebook.ads;

import androidx.annotation.Keep;
import com.facebook.ads.AbstractC1609Ad;
/* loaded from: classes-dex2jar.jar:com/facebook/ads/FullScreenAd.class */
public interface FullScreenAd extends AbstractC1609Ad {

    @Keep
    /* loaded from: classes-dex2jar.jar:com/facebook/ads/FullScreenAd$ShowAdConfig.class */
    public interface ShowAdConfig {
    }

    @Keep
    /* loaded from: classes-dex2jar.jar:com/facebook/ads/FullScreenAd$ShowConfigBuilder.class */
    public interface ShowConfigBuilder {
        ShowAdConfig build();
    }

    AbstractC1609Ad.LoadConfigBuilder buildLoadAdConfig();

    ShowConfigBuilder buildShowAdConfig();

    boolean show();
}
