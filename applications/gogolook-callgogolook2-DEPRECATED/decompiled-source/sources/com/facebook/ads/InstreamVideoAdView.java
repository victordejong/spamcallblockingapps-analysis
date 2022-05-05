package com.facebook.ads;

import android.content.Context;
import android.os.Bundle;
import android.widget.RelativeLayout;
import androidx.annotation.Keep;
import androidx.annotation.Nullable;
import com.facebook.ads.AbstractC2237Ad;
import com.facebook.ads.internal.api.InstreamVideoAdViewApi;
import com.facebook.ads.internal.dynamicloading.DynamicLoaderFactory;
@Keep
/* loaded from: classes-dex2jar.jar:com/facebook/ads/InstreamVideoAdView.class */
public class InstreamVideoAdView extends RelativeLayout implements AbstractC2237Ad {
    public final InstreamVideoAdViewApi mInstreamVideoAdViewApi;

    @Keep
    /* loaded from: classes-dex2jar.jar:com/facebook/ads/InstreamVideoAdView$InstreamVideoLoadAdConfig.class */
    public interface InstreamVideoLoadAdConfig extends AbstractC2237Ad.LoadAdConfig {
    }

    @Keep
    /* loaded from: classes-dex2jar.jar:com/facebook/ads/InstreamVideoAdView$InstreamVideoLoadConfigBuilder.class */
    public interface InstreamVideoLoadConfigBuilder extends AbstractC2237Ad.LoadConfigBuilder {
        @Override // com.facebook.ads.AbstractC2237Ad.LoadConfigBuilder
        InstreamVideoLoadAdConfig build();

        InstreamVideoLoadConfigBuilder withAdListener(InstreamVideoAdListener instreamVideoAdListener);

        @Override // com.facebook.ads.AbstractC2237Ad.LoadConfigBuilder
        InstreamVideoLoadConfigBuilder withBid(String str);
    }

    public InstreamVideoAdView(Context context, Bundle bundle) {
        super(context);
        this.mInstreamVideoAdViewApi = DynamicLoaderFactory.makeLoader(context).createInstreamVideoAdViewApi(this, context, bundle);
    }

    public InstreamVideoAdView(Context context, String str, AdSize adSize) {
        super(context);
        this.mInstreamVideoAdViewApi = DynamicLoaderFactory.makeLoader(context).createInstreamVideoAdViewApi(this, context, str, adSize);
    }

    public InstreamVideoLoadConfigBuilder buildLoadAdConfig() {
        return this.mInstreamVideoAdViewApi.buildLoadAdConfig();
    }

    @Override // com.facebook.ads.AbstractC2237Ad
    public void destroy() {
        this.mInstreamVideoAdViewApi.destroy();
    }

    @Override // com.facebook.ads.AbstractC2237Ad
    public String getPlacementId() {
        return this.mInstreamVideoAdViewApi.getPlacementId();
    }

    @Nullable
    public Bundle getSaveInstanceState() {
        return this.mInstreamVideoAdViewApi.getSaveInstanceState();
    }

    @Override // com.facebook.ads.AbstractC2237Ad
    public boolean isAdInvalidated() {
        return this.mInstreamVideoAdViewApi.isAdInvalidated();
    }

    public boolean isAdLoaded() {
        return this.mInstreamVideoAdViewApi.isAdLoaded();
    }

    @Override // com.facebook.ads.AbstractC2237Ad
    public void loadAd() {
        this.mInstreamVideoAdViewApi.loadAd();
    }

    public void loadAd(InstreamVideoLoadAdConfig instreamVideoLoadAdConfig) {
        this.mInstreamVideoAdViewApi.loadAd(instreamVideoLoadAdConfig);
    }

    @Override // com.facebook.ads.AbstractC2237Ad
    public void loadAdFromBid(String str) {
        this.mInstreamVideoAdViewApi.loadAdFromBid(str);
    }

    @Deprecated
    public void setAdListener(InstreamVideoAdListener instreamVideoAdListener) {
        this.mInstreamVideoAdViewApi.setAdListener(instreamVideoAdListener);
    }

    @Override // com.facebook.ads.AbstractC2237Ad
    public void setExtraHints(ExtraHints extraHints) {
        this.mInstreamVideoAdViewApi.setExtraHints(extraHints);
    }

    public boolean show() {
        return this.mInstreamVideoAdViewApi.show();
    }
}
