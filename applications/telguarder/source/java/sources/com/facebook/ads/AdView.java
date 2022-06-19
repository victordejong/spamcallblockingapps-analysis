package com.facebook.ads;

import android.content.Context;
import android.content.res.Configuration;
import android.widget.RelativeLayout;
import com.facebook.ads.AbstractC0845Ad;
import com.facebook.ads.internal.api.AdViewApi;
import com.facebook.ads.internal.api.AdViewParentApi;
import com.facebook.ads.internal.dynamicloading.DynamicLoaderFactory;
/* loaded from: classes-dex2jar.jar:com/facebook/ads/AdView.class */
public class AdView extends RelativeLayout implements AbstractC0845Ad {
    private final AdViewApi mAdViewApi;
    private final AdViewParentApi mAdViewParentApi;

    /* loaded from: classes-dex2jar.jar:com/facebook/ads/AdView$AdViewLoadConfig.class */
    public interface AdViewLoadConfig extends AbstractC0845Ad.LoadAdConfig {
    }

    /* loaded from: classes-dex2jar.jar:com/facebook/ads/AdView$AdViewLoadConfigBuilder.class */
    public interface AdViewLoadConfigBuilder extends AbstractC0845Ad.LoadConfigBuilder {
        @Override // com.facebook.ads.AbstractC0845Ad.LoadConfigBuilder
        AdViewLoadConfig build();

        AdViewLoadConfigBuilder withAdListener(AdListener adListener);

        @Override // com.facebook.ads.AbstractC0845Ad.LoadConfigBuilder
        AdViewLoadConfigBuilder withBid(String str);
    }

    public AdView(Context context, String str, AdSize adSize) {
        super(context);
        AdViewParentApi adViewParentApi = new AdViewParentApi() { // from class: com.facebook.ads.AdView.1
            @Override // com.facebook.ads.internal.api.AdViewParentApi
            public void onConfigurationChanged(Configuration configuration) {
                AdView.super.onConfigurationChanged(configuration);
            }
        };
        this.mAdViewParentApi = adViewParentApi;
        this.mAdViewApi = DynamicLoaderFactory.makeLoader(context).createAdViewApi(context, str, adSize, adViewParentApi, this);
    }

    public AdView(Context context, String str, String str2) throws Exception {
        super(context);
        AdViewParentApi adViewParentApi = new AdViewParentApi() { // from class: com.facebook.ads.AdView.1
            @Override // com.facebook.ads.internal.api.AdViewParentApi
            public void onConfigurationChanged(Configuration configuration) {
                AdView.super.onConfigurationChanged(configuration);
            }
        };
        this.mAdViewParentApi = adViewParentApi;
        this.mAdViewApi = DynamicLoaderFactory.makeLoader(context).createAdViewApi(context, str, str2, adViewParentApi, this);
    }

    public AdViewLoadConfigBuilder buildLoadAdConfig() {
        return this.mAdViewApi.buildLoadAdConfig();
    }

    @Override // com.facebook.ads.AbstractC0845Ad
    public void destroy() {
        this.mAdViewApi.destroy();
    }

    @Override // com.facebook.ads.AbstractC0845Ad
    public String getPlacementId() {
        return this.mAdViewApi.getPlacementId();
    }

    @Override // com.facebook.ads.AbstractC0845Ad
    public boolean isAdInvalidated() {
        return this.mAdViewApi.isAdInvalidated();
    }

    @Override // com.facebook.ads.AbstractC0845Ad
    public void loadAd() {
        this.mAdViewApi.loadAd();
    }

    public void loadAd(AdViewLoadConfig adViewLoadConfig) {
        this.mAdViewApi.loadAd(adViewLoadConfig);
    }

    @Override // android.view.View
    protected void onConfigurationChanged(Configuration configuration) {
        this.mAdViewApi.onConfigurationChanged(configuration);
    }

    @Override // com.facebook.ads.AbstractC0845Ad
    @Deprecated
    public void setExtraHints(ExtraHints extraHints) {
        this.mAdViewApi.setExtraHints(extraHints);
    }
}
