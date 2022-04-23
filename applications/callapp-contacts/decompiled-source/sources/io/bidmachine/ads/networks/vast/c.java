package io.bidmachine.ads.networks.vast;

import android.text.TextUtils;
import io.bidmachine.unified.UnifiedAdCallback;
import io.bidmachine.unified.UnifiedMediationParams;
import io.bidmachine.unified.UnifiedParams;
import io.bidmachine.utils.BMError;
import io.bidmachine.utils.IabUtils;
/* loaded from: classes5-dex2jar.jar:io/bidmachine/ads/networks/vast/c.class */
final class c extends UnifiedParams {
    final int companionSkipOffset;
    final String creativeAdm;
    final int loadSkipOffset;
    final int skipOffset;
    final boolean useNativeClose;

    /* JADX INFO: Access modifiers changed from: package-private */
    public c(UnifiedMediationParams unifiedMediationParams) {
        super(unifiedMediationParams);
        this.creativeAdm = unifiedMediationParams.getString(IabUtils.KEY_CREATIVE_ADM);
        this.loadSkipOffset = unifiedMediationParams.getInt(IabUtils.KEY_LOAD_SKIP_OFFSET);
        this.skipOffset = unifiedMediationParams.getInt(IabUtils.KEY_SKIP_OFFSET);
        this.companionSkipOffset = unifiedMediationParams.getInt(IabUtils.KEY_COMPANION_SKIP_OFFSET);
        this.useNativeClose = unifiedMediationParams.getBool(IabUtils.KEY_USE_NATIVE_CLOSE);
    }

    @Override // io.bidmachine.unified.UnifiedParams
    public final boolean isValid(UnifiedAdCallback unifiedAdCallback) {
        if (!TextUtils.isEmpty(this.creativeAdm)) {
            return true;
        }
        unifiedAdCallback.onAdLoadFailed(BMError.IncorrectAdUnit);
        return false;
    }
}
