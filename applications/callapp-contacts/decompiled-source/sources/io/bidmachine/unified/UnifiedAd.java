package io.bidmachine.unified;

import io.bidmachine.ContextProvider;
import io.bidmachine.unified.UnifiedAdCallback;
import io.bidmachine.unified.UnifiedAdRequestParams;
/* loaded from: classes5-dex2jar.jar:io/bidmachine/unified/UnifiedAd.class */
public abstract class UnifiedAd<UnifiedAdCallbackType extends UnifiedAdCallback, UnifiedAdRequestParamsType extends UnifiedAdRequestParams> {
    public abstract void load(ContextProvider contextProvider, UnifiedAdCallbackType unifiedadcallbacktype, UnifiedAdRequestParamsType unifiedadrequestparamstype, UnifiedMediationParams unifiedMediationParams) throws Throwable;

    public void onClicked() {
    }

    public void onDestroy() {
    }

    public void onExpired() {
    }

    public void onImpression() {
    }

    public void onShowFailed() {
    }

    public void onShown() {
    }
}
