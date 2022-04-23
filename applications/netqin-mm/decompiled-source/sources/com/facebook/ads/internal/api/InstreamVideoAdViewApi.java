package com.facebook.ads.internal.api;

import android.os.Bundle;
import androidx.annotation.Keep;
import com.facebook.ads.AbstractC7079Ad;
import com.facebook.ads.ExtraHints;
import com.facebook.ads.InstreamVideoAdListener;
@Keep
/* loaded from: classes-dex2jar.jar:com/facebook/ads/internal/api/InstreamVideoAdViewApi.class */
public interface InstreamVideoAdViewApi extends AbstractC7079Ad {
    @Override // com.facebook.ads.AbstractC7079Ad
    void destroy();

    @Override // com.facebook.ads.AbstractC7079Ad
    String getPlacementId();

    Bundle getSaveInstanceState();

    @Override // com.facebook.ads.AbstractC7079Ad
    boolean isAdInvalidated();

    boolean isAdLoaded();

    @Override // com.facebook.ads.AbstractC7079Ad
    void loadAd();

    @Override // com.facebook.ads.AbstractC7079Ad
    void loadAdFromBid(String str);

    void setAdListener(InstreamVideoAdListener instreamVideoAdListener);

    @Override // com.facebook.ads.AbstractC7079Ad
    void setExtraHints(ExtraHints extraHints);

    boolean show();
}
