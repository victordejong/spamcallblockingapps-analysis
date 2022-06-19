package com.facebook.ads;
/* renamed from: com.facebook.ads.Ad */
/* loaded from: classes-dex2jar.jar:com/facebook/ads/Ad.class */
public interface AbstractC0845Ad {

    /* renamed from: com.facebook.ads.Ad$LoadAdConfig */
    /* loaded from: classes-dex2jar.jar:com/facebook/ads/Ad$LoadAdConfig.class */
    public interface LoadAdConfig {
    }

    /* renamed from: com.facebook.ads.Ad$LoadConfigBuilder */
    /* loaded from: classes-dex2jar.jar:com/facebook/ads/Ad$LoadConfigBuilder.class */
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
