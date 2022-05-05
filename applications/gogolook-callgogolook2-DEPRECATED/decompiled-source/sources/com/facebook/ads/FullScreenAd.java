package com.facebook.ads;

import androidx.annotation.Keep;
import com.facebook.ads.AbstractC2237Ad;
/* loaded from: classes-dex2jar.jar:com/facebook/ads/FullScreenAd.class */
public interface FullScreenAd extends AbstractC2237Ad {

    @Keep
    /* loaded from: classes-dex2jar.jar:com/facebook/ads/FullScreenAd$ShowAdConfig.class */
    public interface ShowAdConfig {
    }

    @Keep
    /* loaded from: classes-dex2jar.jar:com/facebook/ads/FullScreenAd$ShowConfigBuilder.class */
    public interface ShowConfigBuilder {
        ShowAdConfig build();
    }

    AbstractC2237Ad.LoadConfigBuilder buildLoadAdConfig();

    ShowConfigBuilder buildShowAdConfig();

    boolean show();
}
