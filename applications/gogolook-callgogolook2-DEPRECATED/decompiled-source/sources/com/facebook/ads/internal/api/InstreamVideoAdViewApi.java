package com.facebook.ads.internal.api;

import android.os.Bundle;
import androidx.annotation.Keep;
import androidx.annotation.Nullable;
import com.facebook.ads.AbstractC2237Ad;
import com.facebook.ads.ExtraHints;
import com.facebook.ads.InstreamVideoAdListener;
import com.facebook.ads.InstreamVideoAdView;
@Keep
/* loaded from: classes-dex2jar.jar:com/facebook/ads/internal/api/InstreamVideoAdViewApi.class */
public interface InstreamVideoAdViewApi extends AbstractC2237Ad {
    InstreamVideoAdView.InstreamVideoLoadConfigBuilder buildLoadAdConfig();

    @Override // com.facebook.ads.AbstractC2237Ad
    void destroy();

    @Override // com.facebook.ads.AbstractC2237Ad
    String getPlacementId();

    @Nullable
    Bundle getSaveInstanceState();

    @Override // com.facebook.ads.AbstractC2237Ad
    boolean isAdInvalidated();

    boolean isAdLoaded();

    @Override // com.facebook.ads.AbstractC2237Ad
    void loadAd();

    void loadAd(InstreamVideoAdView.InstreamVideoLoadAdConfig instreamVideoLoadAdConfig);

    @Override // com.facebook.ads.AbstractC2237Ad
    void loadAdFromBid(String str);

    void setAdListener(@Nullable InstreamVideoAdListener instreamVideoAdListener);

    @Override // com.facebook.ads.AbstractC2237Ad
    void setExtraHints(ExtraHints extraHints);

    void setIsAdLoaded(boolean z);

    boolean show();
}
