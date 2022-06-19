package io.bidmachine.ads.networks.mraid;

import com.explorestack.iab.mraid.MraidInterstitial;
import com.explorestack.iab.mraid.MraidInterstitialListener;
import com.explorestack.iab.utils.AbstractC9588c;
import com.explorestack.iab.utils.Utils;
import io.bidmachine.ContextProvider;
import io.bidmachine.unified.UnifiedFullscreenAdCallback;
import io.bidmachine.utils.BMError;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: io.bidmachine.ads.networks.mraid.d */
/* loaded from: classes5-dex2jar.jar:io/bidmachine/ads/networks/mraid/d.class */
public final class C17811d implements MraidInterstitialListener {
    private final UnifiedFullscreenAdCallback callback;
    private final ContextProvider contextProvider;

    public C17811d(ContextProvider contextProvider, UnifiedFullscreenAdCallback unifiedFullscreenAdCallback) {
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
    public final void onOpenBrowser(MraidInterstitial mraidInterstitial, String str, final AbstractC9588c abstractC9588c) {
        this.callback.onAdClicked();
        Utils.m24114a(this.contextProvider.getContext(), str, new Runnable() { // from class: io.bidmachine.ads.networks.mraid.d.1
            @Override // java.lang.Runnable
            public final void run() {
                abstractC9588c.clickHandled();
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
