package com.facebook.ads.internal.api;

import android.content.res.Configuration;
import androidx.annotation.Keep;
import com.facebook.ads.AbstractC0929Ad;
import com.facebook.ads.AdView;
import com.facebook.ads.ExtraHints;
@Keep
/* loaded from: classes2-dex2jar.jar:com/facebook/ads/internal/api/AdViewApi.class */
public interface AdViewApi extends AdViewParentApi, AbstractC0929Ad {
    AdView.AdViewLoadConfigBuilder buildLoadAdConfig();

    void loadAd(AdView.AdViewLoadConfig adViewLoadConfig);

    @Override // com.facebook.ads.internal.api.AdViewParentApi
    void onConfigurationChanged(Configuration configuration);

    @Override // com.facebook.ads.AbstractC0929Ad
    @Deprecated
    void setExtraHints(ExtraHints extraHints);
}
