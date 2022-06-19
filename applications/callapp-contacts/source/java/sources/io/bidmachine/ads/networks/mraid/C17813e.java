package io.bidmachine.ads.networks.mraid;

import android.text.TextUtils;
import com.explorestack.iab.utils.C9593h;
import io.bidmachine.unified.UnifiedAdCallback;
import io.bidmachine.unified.UnifiedMediationParams;
import io.bidmachine.unified.UnifiedParams;
import io.bidmachine.utils.BMError;
import io.bidmachine.utils.IabUtils;
/* renamed from: io.bidmachine.ads.networks.mraid.e */
/* loaded from: classes5-dex2jar.jar:io/bidmachine/ads/networks/mraid/e.class */
final class C17813e extends UnifiedParams {
    final boolean canPreload;
    final C9593h closeableViewStyle;
    final int companionSkipOffset;
    final C9593h countDownStyle;
    final String creativeAdm;
    final int height;
    final boolean ignoresSafeAreaLayoutGuide;
    final int loadSkipOffset;
    final int progressDuration;
    final C9593h progressStyle;

    /* renamed from: r1 */
    final boolean f62631r1;

    /* renamed from: r2 */
    final boolean f62632r2;
    final int skipOffset;
    final String storeUrl;
    final boolean useNativeClose;
    final int width;

    public C17813e(UnifiedMediationParams unifiedMediationParams) {
        super(unifiedMediationParams);
        this.creativeAdm = unifiedMediationParams.getString(IabUtils.KEY_CREATIVE_ADM);
        this.width = unifiedMediationParams.getInt("width");
        this.height = unifiedMediationParams.getInt("height");
        this.canPreload = unifiedMediationParams.getBool(IabUtils.KEY_PRELOAD);
        this.loadSkipOffset = unifiedMediationParams.getInt(IabUtils.KEY_LOAD_SKIP_OFFSET);
        this.skipOffset = unifiedMediationParams.getInt(IabUtils.KEY_SKIP_OFFSET);
        this.companionSkipOffset = unifiedMediationParams.getInt(IabUtils.KEY_COMPANION_SKIP_OFFSET);
        this.useNativeClose = unifiedMediationParams.getBool(IabUtils.KEY_USE_NATIVE_CLOSE);
        this.f62631r1 = unifiedMediationParams.getBool(IabUtils.KEY_R1);
        this.f62632r2 = unifiedMediationParams.getBool(IabUtils.KEY_R2);
        this.ignoresSafeAreaLayoutGuide = unifiedMediationParams.getBool(IabUtils.KEY_IGNORE_SAFE_AREA_LAYOUT_GUIDE);
        this.storeUrl = unifiedMediationParams.getString(IabUtils.KEY_STORE_URL);
        this.progressDuration = unifiedMediationParams.getInt(IabUtils.KEY_PROGRESS_DURATION);
        this.closeableViewStyle = (C9593h) unifiedMediationParams.getObject(IabUtils.KEY_CLOSABLE_VIEW_STYLE);
        this.countDownStyle = (C9593h) unifiedMediationParams.getObject(IabUtils.KEY_COUNTDOWN_STYLE);
        this.progressStyle = (C9593h) unifiedMediationParams.getObject(IabUtils.KEY_PROGRESS_STYLE);
    }

    @Override // io.bidmachine.unified.UnifiedParams
    public final boolean isValid(UnifiedAdCallback unifiedAdCallback) {
        if (TextUtils.isEmpty(this.creativeAdm) || this.width == 0 || this.height == 0) {
            unifiedAdCallback.onAdLoadFailed(BMError.IncorrectAdUnit);
            return false;
        }
        return true;
    }
}
