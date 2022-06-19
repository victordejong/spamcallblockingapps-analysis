package io.bidmachine.models;

import io.bidmachine.AdProcessCallback;
import io.bidmachine.ContextProvider;
import io.bidmachine.models.AdObjectParams;
import io.bidmachine.unified.UnifiedAdCallback;
import io.bidmachine.unified.UnifiedAdRequestParams;
/* loaded from: classes5-dex2jar.jar:io/bidmachine/models/AdObject.class */
public interface AdObject<AdObjectParamsType extends AdObjectParams, UnifiedAdRequestParamsType extends UnifiedAdRequestParams, UnifiedAdCallbackType extends UnifiedAdCallback> {
    UnifiedAdCallbackType createUnifiedCallback(AdProcessCallback adProcessCallback);

    AdObjectParamsType getParams();

    void load(ContextProvider contextProvider, UnifiedAdRequestParamsType unifiedadrequestparamstype) throws Throwable;

    void onClicked();

    void onClosed(boolean z);

    void onDestroy();

    void onExpired();

    void onFinished();

    void onImpression();

    void onShowFailed();

    void onShown();
}
