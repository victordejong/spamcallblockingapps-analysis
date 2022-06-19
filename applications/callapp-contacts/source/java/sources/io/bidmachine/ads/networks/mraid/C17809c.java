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
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: io.bidmachine.ads.networks.mraid.c */
/* loaded from: classes5-dex2jar.jar:io/bidmachine/ads/networks/mraid/c.class */
public final class C17809c extends UnifiedFullscreenAd {
    private MraidInterstitial mraidInterstitial;
    private final MraidActivity.MraidType mraidType;

    public C17809c(MraidActivity.MraidType mraidType) {
        this.mraidType = mraidType;
    }

    public final void load(final ContextProvider contextProvider, final UnifiedFullscreenAdCallback unifiedFullscreenAdCallback, UnifiedFullscreenAdRequestParams unifiedFullscreenAdRequestParams, UnifiedMediationParams unifiedMediationParams) throws Throwable {
        if (contextProvider.getActivity() == null) {
            unifiedFullscreenAdCallback.onAdLoadFailed(BMError.requestError("Activity not provided"));
            return;
        }
        final C17813e c17813e = new C17813e(unifiedMediationParams);
        if (!c17813e.isValid(unifiedFullscreenAdCallback)) {
            return;
        }
        Utils.onUiThread(new Runnable() { // from class: io.bidmachine.ads.networks.mraid.c.1
            @Override // java.lang.Runnable
            public final void run() {
                try {
                    C17809c.this.mraidInterstitial = MraidInterstitial.newBuilder().setPreload(true).setCloseTime(c17813e.skipOffset).forceUseNativeCloseButton(c17813e.useNativeClose).setListener(new C17811d(contextProvider, unifiedFullscreenAdCallback)).setR1(c17813e.f62631r1).setR2(c17813e.f62632r2).setDurationSec(c17813e.progressDuration).setProductLink(c17813e.storeUrl).setCloseStyle(c17813e.closeableViewStyle).setCountDownStyle(c17813e.countDownStyle).setProgressStyle(c17813e.progressStyle).build(contextProvider.getContext());
                    C17809c.this.mraidInterstitial.load(c17813e.creativeAdm);
                } catch (Throwable th) {
                    Logger.log(th);
                    unifiedFullscreenAdCallback.onAdLoadFailed(BMError.Internal);
                }
            }
        });
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
