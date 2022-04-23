package com.facebook.ads;

import android.content.Context;
import android.os.Bundle;
import android.widget.RelativeLayout;
import androidx.annotation.Keep;
import com.facebook.ads.internal.api.InstreamVideoAdViewApi;
import com.facebook.ads.internal.dynamicloading.DynamicLoaderFactory;
@Keep
/* loaded from: classes-dex2jar.jar:com/facebook/ads/InstreamVideoAdView.class */
public class InstreamVideoAdView extends RelativeLayout implements AbstractC7079Ad {
    public final InstreamVideoAdViewApi mInstreamVideoAdViewApi;

    public InstreamVideoAdView(Context context, Bundle bundle) {
        super(context);
        this.mInstreamVideoAdViewApi = DynamicLoaderFactory.makeLoader(context).createInstreamVideoAdViewApi(this, context, bundle);
    }

    public InstreamVideoAdView(Context context, String str, AdSize adSize) {
        super(context);
        this.mInstreamVideoAdViewApi = DynamicLoaderFactory.makeLoader(context).createInstreamVideoAdViewApi(this, context, str, adSize);
    }

    @Override // com.facebook.ads.AbstractC7079Ad
    public void destroy() {
        this.mInstreamVideoAdViewApi.destroy();
    }

    @Override // com.facebook.ads.AbstractC7079Ad
    public String getPlacementId() {
        return this.mInstreamVideoAdViewApi.getPlacementId();
    }

    public Bundle getSaveInstanceState() {
        return this.mInstreamVideoAdViewApi.getSaveInstanceState();
    }

    @Override // com.facebook.ads.AbstractC7079Ad
    public boolean isAdInvalidated() {
        return this.mInstreamVideoAdViewApi.isAdInvalidated();
    }

    public boolean isAdLoaded() {
        return this.mInstreamVideoAdViewApi.isAdLoaded();
    }

    @Override // com.facebook.ads.AbstractC7079Ad
    public void loadAd() {
        this.mInstreamVideoAdViewApi.loadAd();
    }

    @Override // com.facebook.ads.AbstractC7079Ad
    public void loadAdFromBid(String str) {
        this.mInstreamVideoAdViewApi.loadAdFromBid(str);
    }

    public void setAdListener(InstreamVideoAdListener instreamVideoAdListener) {
        this.mInstreamVideoAdViewApi.setAdListener(instreamVideoAdListener);
    }

    @Override // com.facebook.ads.AbstractC7079Ad
    public void setExtraHints(ExtraHints extraHints) {
        this.mInstreamVideoAdViewApi.setExtraHints(extraHints);
    }

    public boolean show() {
        return this.mInstreamVideoAdViewApi.show();
    }
}
