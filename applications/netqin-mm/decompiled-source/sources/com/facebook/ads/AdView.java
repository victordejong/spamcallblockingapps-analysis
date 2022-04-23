package com.facebook.ads;

import android.content.Context;
import android.content.res.Configuration;
import android.widget.RelativeLayout;
import androidx.annotation.Keep;
import com.facebook.ads.internal.api.AdViewApi;
import com.facebook.ads.internal.api.AdViewParentApi;
import com.facebook.ads.internal.dynamicloading.DynamicLoaderFactory;
@Keep
/* loaded from: classes-dex2jar.jar:com/facebook/ads/AdView.class */
public class AdView extends RelativeLayout implements AbstractC7079Ad {
    public final AdViewApi mAdViewApi;
    public final AdViewParentApi mAdViewParentApi = new AdViewParentApi() { // from class: com.facebook.ads.AdView.1
        @Override // com.facebook.ads.internal.api.AdViewParentApi
        public void onConfigurationChanged(Configuration configuration) {
            AdView.super.onConfigurationChanged(configuration);
        }
    };

    public AdView(Context context, String str, AdSize adSize) {
        super(context);
        this.mAdViewApi = DynamicLoaderFactory.makeLoader(context).createAdViewApi(context, str, adSize, this.mAdViewParentApi, this);
    }

    public AdView(Context context, String str, String str2) throws Exception {
        super(context);
        this.mAdViewApi = DynamicLoaderFactory.makeLoader(context).createAdViewApi(context, str, str2, this.mAdViewParentApi, this);
    }

    @Override // com.facebook.ads.AbstractC7079Ad
    public void destroy() {
        this.mAdViewApi.destroy();
    }

    @Deprecated
    public void disableAutoRefresh() {
    }

    @Override // com.facebook.ads.AbstractC7079Ad
    public String getPlacementId() {
        return this.mAdViewApi.getPlacementId();
    }

    @Override // com.facebook.ads.AbstractC7079Ad
    public boolean isAdInvalidated() {
        return this.mAdViewApi.isAdInvalidated();
    }

    @Override // com.facebook.ads.AbstractC7079Ad
    public void loadAd() {
        this.mAdViewApi.loadAd();
    }

    @Override // com.facebook.ads.AbstractC7079Ad
    public void loadAdFromBid(String str) {
        this.mAdViewApi.loadAdFromBid(str);
    }

    @Override // android.view.View
    public void onConfigurationChanged(Configuration configuration) {
        this.mAdViewApi.onConfigurationChanged(configuration);
    }

    public void setAdListener(AdListener adListener) {
        this.mAdViewApi.setAdListener(adListener);
    }

    @Override // com.facebook.ads.AbstractC7079Ad
    public void setExtraHints(ExtraHints extraHints) {
        this.mAdViewApi.setExtraHints(extraHints);
    }
}
