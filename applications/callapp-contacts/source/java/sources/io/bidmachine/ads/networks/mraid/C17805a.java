package io.bidmachine.ads.networks.mraid;

import com.explorestack.iab.mraid.MraidView;
import io.bidmachine.ContextProvider;
import io.bidmachine.core.Logger;
import io.bidmachine.core.Utils;
import io.bidmachine.unified.UnifiedBannerAd;
import io.bidmachine.unified.UnifiedBannerAdCallback;
import io.bidmachine.unified.UnifiedBannerAdRequestParams;
import io.bidmachine.unified.UnifiedMediationParams;
import io.bidmachine.utils.BMError;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: io.bidmachine.ads.networks.mraid.a */
/* loaded from: classes5-dex2jar.jar:io/bidmachine/ads/networks/mraid/a.class */
public final class C17805a extends UnifiedBannerAd {
    private MraidView mraidView;

    public final void load(final ContextProvider contextProvider, final UnifiedBannerAdCallback unifiedBannerAdCallback, UnifiedBannerAdRequestParams unifiedBannerAdRequestParams, UnifiedMediationParams unifiedMediationParams) throws Throwable {
        if (contextProvider.getActivity() == null) {
            unifiedBannerAdCallback.onAdLoadFailed(BMError.requestError("Activity not provided"));
            return;
        }
        final C17813e c17813e = new C17813e(unifiedMediationParams);
        if (!c17813e.isValid(unifiedBannerAdCallback)) {
            return;
        }
        Utils.onUiThread(new Runnable() { // from class: io.bidmachine.ads.networks.mraid.a.1
            @Override // java.lang.Runnable
            public final void run() {
                try {
                    C17805a c17805a = C17805a.this;
                    MraidView.C9555a c9555a = new MraidView.C9555a();
                    c9555a.f32482m = true;
                    c9555a.f32474e = new C17807b(contextProvider, unifiedBannerAdCallback);
                    c17805a.mraidView = c9555a.m24184a(contextProvider.getContext());
                    C17805a.this.mraidView.load(c17813e.creativeAdm);
                } catch (Throwable th) {
                    Logger.log(th);
                    unifiedBannerAdCallback.onAdLoadFailed(BMError.Internal);
                }
            }
        });
    }

    @Override // io.bidmachine.unified.UnifiedAd
    public final void onDestroy() {
        MraidView mraidView = this.mraidView;
        if (mraidView != null) {
            mraidView.destroy();
            this.mraidView = null;
        }
    }
}
