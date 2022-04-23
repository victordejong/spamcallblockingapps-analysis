package com.facebook.ads.internal.api;

import androidx.annotation.Keep;
import androidx.annotation.UiThread;
@Keep
@UiThread
/* loaded from: classes-dex2jar.jar:com/facebook/ads/internal/api/AdComponentViewApi.class */
public interface AdComponentViewApi extends AdComponentViewParentApi {
    void onAttachedToView(AdComponentView adComponentView, AdComponentViewParentApi adComponentViewParentApi);
}
