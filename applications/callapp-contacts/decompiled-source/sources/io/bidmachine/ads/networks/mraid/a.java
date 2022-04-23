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
/* loaded from: classes5-dex2jar.jar:io/bidmachine/ads/networks/mraid/a.class */
final class a extends UnifiedBannerAd {
    private MraidView mraidView;

    public final void load(final ContextProvider contextProvider, final UnifiedBannerAdCallback unifiedBannerAdCallback, UnifiedBannerAdRequestParams unifiedBannerAdRequestParams, UnifiedMediationParams unifiedMediationParams) throws Throwable {
        if (contextProvider.getActivity() == null) {
            unifiedBannerAdCallback.onAdLoadFailed(BMError.requestError("Activity not provided"));
            return;
        }
        final e eVar = new e(unifiedMediationParams);
        if (eVar.isValid(unifiedBannerAdCallback)) {
            Utils.onUiThread(new Runnable() { // from class: io.bidmachine.ads.networks.mraid.a.1
                @Override // java.lang.Runnable
                public final void run() {
                    try {
                        a aVar = a.this;
                        MraidView.a aVar2 = new MraidView.a();
                        aVar2.m = true;
                        aVar2.e = new b(contextProvider, unifiedBannerAdCallback);
                        aVar.mraidView = aVar2.a(contextProvider.getContext());
                        a.this.mraidView.load(eVar.creativeAdm);
                    } catch (Throwable th) {
                        Logger.log(th);
                        unifiedBannerAdCallback.onAdLoadFailed(BMError.Internal);
                    }
                }
            });
        }
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
