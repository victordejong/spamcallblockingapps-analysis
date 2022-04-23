package com.facebook.ads;
/* loaded from: classes3-dex2jar.jar:com/facebook/ads/Ad.class */
public interface Ad {

    /* loaded from: classes3-dex2jar.jar:com/facebook/ads/Ad$LoadAdConfig.class */
    public interface LoadAdConfig {
    }

    /* loaded from: classes3-dex2jar.jar:com/facebook/ads/Ad$LoadConfigBuilder.class */
    public interface LoadConfigBuilder {
        LoadAdConfig build();

        LoadConfigBuilder withBid(String str);
    }

    void destroy();

    String getPlacementId();

    boolean isAdInvalidated();

    void loadAd();

    @Deprecated
    void setExtraHints(ExtraHints extraHints);
}
