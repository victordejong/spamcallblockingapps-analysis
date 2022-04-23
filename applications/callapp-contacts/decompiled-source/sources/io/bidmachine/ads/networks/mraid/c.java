package io.bidmachine.ads.networks.mraid;

import android.content.Context;
import com.explorestack.iab.mraid.MraidActivity;
import com.explorestack.iab.mraid.MraidInterstitial;
import io.bidmachine.ContextProvider;
import io.bidmachine.core.Logger;
import io.bidmachine.core.Utils;
import io.bidmachine.unified.UnifiedFullscreenAd;
import io.bidmachine.unified.UnifiedFullscreenAdCallback;
import io.bidmachine.unified.UnifiedFullscreenAdRequestParams;
import io.bidmachine.unified.UnifiedMediationParams;
import io.bidmachine.utils.BMError;
/* loaded from: classes5-dex2jar.jar:io/bidmachine/ads/networks/mraid/c.class */
final class c extends UnifiedFullscreenAd {
    private MraidInterstitial mraidInterstitial;
    private final MraidActivity.MraidType mraidType;

    /* JADX INFO: Access modifiers changed from: package-private */
    public c(MraidActivity.MraidType mraidType) {
        this.mraidType = mraidType;
    }

    public final void load(final ContextProvider contextProvider, final UnifiedFullscreenAdCallback unifiedFullscreenAdCallback, UnifiedFullscreenAdRequestParams unifiedFullscreenAdRequestParams, UnifiedMediationParams unifiedMediationParams) throws Throwable {
        if (contextProvider.getActivity() == null) {
            unifiedFullscreenAdCallback.onAdLoadFailed(BMError.requestError("Activity not provided"));
            return;
        }
        final e eVar = new e(unifiedMediationParams);
        if (eVar.isValid(unifiedFullscreenAdCallback)) {
            Utils.onUiThread(new Runnable() { // from class: io.bidmachine.ads.networks.mraid.c.1
                @Override // java.lang.Runnable
                public final void run() {
                    try {
                        c.this.mraidInterstitial = MraidInterstitial.newBuilder().setPreload(true).setCloseTime(eVar.skipOffset).forceUseNativeCloseButton(eVar.useNativeClose).setListener(new d(contextProvider, unifiedFullscreenAdCallback)).setR1(eVar.r1).setR2(eVar.r2).setDurationSec(eVar.progressDuration).setProductLink(eVar.storeUrl).setCloseStyle(eVar.closeableViewStyle).setCountDownStyle(eVar.countDownStyle).setProgressStyle(eVar.progressStyle).build(contextProvider.getContext());
                        c.this.mraidInterstitial.load(eVar.creativeAdm);
                    } catch (Throwable th) {
                        Logger.log(th);
                        unifiedFullscreenAdCallback.onAdLoadFailed(BMError.Internal);
                    }
                }
            });
        }
    }

    @Override // io.bidmachine.unified.UnifiedAd
    public final void onDestroy() {
        MraidInterstitial mraidInterstitial = this.mraidInterstitial;
        if (mraidInterstitial != null) {
            mraidInterstitial.destroy();
            this.mraidInterstitial = null;
        }
    }

    @Override // io.bidmachine.unified.UnifiedFullscreenAd
    public final void show(Context context, UnifiedFullscreenAdCallback unifiedFullscreenAdCallback) {
        MraidInterstitial mraidInterstitial = this.mraidInterstitial;
        if (mraidInterstitial == null || !mraidInterstitial.isReady()) {
            unifiedFullscreenAdCallback.onAdShowFailed(BMError.NotLoaded);
        } else {
            MraidActivity.show(context, this.mraidInterstitial, this.mraidType);
        }
    }
}
