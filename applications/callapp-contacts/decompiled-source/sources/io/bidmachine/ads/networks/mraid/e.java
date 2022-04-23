package io.bidmachine.ads.networks.mraid;

import android.text.TextUtils;
import com.explorestack.iab.utils.h;
import io.bidmachine.unified.UnifiedAdCallback;
import io.bidmachine.unified.UnifiedMediationParams;
import io.bidmachine.unified.UnifiedParams;
import io.bidmachine.utils.BMError;
import io.bidmachine.utils.IabUtils;
/* loaded from: classes5-dex2jar.jar:io/bidmachine/ads/networks/mraid/e.class */
final class e extends UnifiedParams {
    final boolean canPreload;
    final h closeableViewStyle;
    final int companionSkipOffset;
    final h countDownStyle;
    final String creativeAdm;
    final int height;
    final boolean ignoresSafeAreaLayoutGuide;
    final int loadSkipOffset;
    final int progressDuration;
    final h progressStyle;
    final boolean r1;
    final boolean r2;
    final int skipOffset;
    final String storeUrl;
    final boolean useNativeClose;
    final int width;

    /* JADX INFO: Access modifiers changed from: package-private */
    public e(UnifiedMediationParams unifiedMediationParams) {
        super(unifiedMediationParams);
        this.creativeAdm = unifiedMediationParams.getString(IabUtils.KEY_CREATIVE_ADM);
        this.width = unifiedMediationParams.getInt("width");
        this.height = unifiedMediationParams.getInt("height");
        this.canPreload = unifiedMediationParams.getBool(IabUtils.KEY_PRELOAD);
        this.loadSkipOffset = unifiedMediationParams.getInt(IabUtils.KEY_LOAD_SKIP_OFFSET);
        this.skipOffset = unifiedMediationParams.getInt(IabUtils.KEY_SKIP_OFFSET);
        this.companionSkipOffset = unifiedMediationParams.getInt(IabUtils.KEY_COMPANION_SKIP_OFFSET);
        this.useNativeClose = unifiedMediationParams.getBool(IabUtils.KEY_USE_NATIVE_CLOSE);
        this.r1 = unifiedMediationParams.getBool(IabUtils.KEY_R1);
        this.r2 = unifiedMediationParams.getBool(IabUtils.KEY_R2);
        this.ignoresSafeAreaLayoutGuide = unifiedMediationParams.getBool(IabUtils.KEY_IGNORE_SAFE_AREA_LAYOUT_GUIDE);
        this.storeUrl = unifiedMediationParams.getString(IabUtils.KEY_STORE_URL);
        this.progressDuration = unifiedMediationParams.getInt(IabUtils.KEY_PROGRESS_DURATION);
        this.closeableViewStyle = (h) unifiedMediationParams.getObject(IabUtils.KEY_CLOSABLE_VIEW_STYLE);
        this.countDownStyle = (h) unifiedMediationParams.getObject(IabUtils.KEY_COUNTDOWN_STYLE);
        this.progressStyle = (h) unifiedMediationParams.getObject(IabUtils.KEY_PROGRESS_STYLE);
    }

    @Override // io.bidmachine.unified.UnifiedParams
    public final boolean isValid(UnifiedAdCallback unifiedAdCallback) {
        if (!TextUtils.isEmpty(this.creativeAdm) && this.width != 0 && this.height != 0) {
            return true;
        }
        unifiedAdCallback.onAdLoadFailed(BMError.IncorrectAdUnit);
        return false;
    }
}
