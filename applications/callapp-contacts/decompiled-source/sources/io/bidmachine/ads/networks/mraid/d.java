package io.bidmachine.ads.networks.mraid;

import com.explorestack.iab.mraid.MraidInterstitial;
import com.explorestack.iab.mraid.MraidInterstitialListener;
import com.explorestack.iab.utils.Utils;
import com.explorestack.iab.utils.c;
import io.bidmachine.ContextProvider;
import io.bidmachine.unified.UnifiedFullscreenAdCallback;
import io.bidmachine.utils.BMError;
/* loaded from: classes5-dex2jar.jar:io/bidmachine/ads/networks/mraid/d.class */
final class d implements MraidInterstitialListener {
    private final UnifiedFullscreenAdCallback callback;
    private final ContextProvider contextProvider;

    /* JADX INFO: Access modifiers changed from: package-private */
    public d(ContextProvider contextProvider, UnifiedFullscreenAdCallback unifiedFullscreenAdCallback) {
        this.contextProvider = contextProvider;
        this.callback = unifiedFullscreenAdCallback;
    }

    @Override // com.explorestack.iab.mraid.MraidInterstitialListener
    public final void onClose(MraidInterstitial mraidInterstitial) {
        this.callback.onAdFinished();
        this.callback.onAdClosed();
    }

    @Override // com.explorestack.iab.mraid.MraidInterstitialListener
    public final void onError(MraidInterstitial mraidInterstitial, int i) {
        if (i == 1) {
            this.callback.onAdShowFailed(BMError.Internal);
        } else {
            this.callback.onAdLoadFailed(BMError.noFillError(null));
        }
    }

    @Override // com.explorestack.iab.mraid.MraidInterstitialListener
    public final void onLoaded(MraidInterstitial mraidInterstitial) {
        this.callback.onAdLoaded();
    }

    @Override // com.explorestack.iab.mraid.MraidInterstitialListener
    public final void onOpenBrowser(MraidInterstitial mraidInterstitial, String str, final c cVar) {
        this.callback.onAdClicked();
        Utils.a(this.contextProvider.getContext(), str, new Runnable() { // from class: io.bidmachine.ads.networks.mraid.d.1
            @Override // java.lang.Runnable
            public final void run() {
                cVar.clickHandled();
            }
        });
    }

    @Override // com.explorestack.iab.mraid.MraidInterstitialListener
    public final void onPlayVideo(MraidInterstitial mraidInterstitial, String str) {
    }

    @Override // com.explorestack.iab.mraid.MraidInterstitialListener
    public final void onShown(MraidInterstitial mraidInterstitial) {
        this.callback.onAdShown();
    }
}
