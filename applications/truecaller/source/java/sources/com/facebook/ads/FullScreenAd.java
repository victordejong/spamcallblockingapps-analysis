package com.facebook.ads;

import androidx.annotation.Keep;
import com.facebook.ads.AbstractC0929Ad;
/* loaded from: classes2-dex2jar.jar:com/facebook/ads/FullScreenAd.class */
public interface FullScreenAd extends AbstractC0929Ad {

    @Keep
    /* loaded from: classes2-dex2jar.jar:com/facebook/ads/FullScreenAd$ShowAdConfig.class */
    public interface ShowAdConfig {
    }

    @Keep
    /* loaded from: classes2-dex2jar.jar:com/facebook/ads/FullScreenAd$ShowConfigBuilder.class */
    public interface ShowConfigBuilder {
        ShowAdConfig build();
    }

    AbstractC0929Ad.LoadConfigBuilder buildLoadAdConfig();

    ShowConfigBuilder buildShowAdConfig();

    boolean show();
}
