package io.bidmachine.ads.networks.mraid;

import com.explorestack.iab.mraid.MraidView;
import com.explorestack.iab.mraid.MraidViewListener;
import com.explorestack.iab.utils.AbstractC9588c;
import com.explorestack.iab.utils.Utils;
import io.bidmachine.ContextProvider;
import io.bidmachine.unified.UnifiedBannerAdCallback;
import io.bidmachine.utils.BMError;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: io.bidmachine.ads.networks.mraid.b */
/* loaded from: classes5-dex2jar.jar:io/bidmachine/ads/networks/mraid/b.class */
public final class C17807b implements MraidViewListener {
    private final UnifiedBannerAdCallback callback;
    private final ContextProvider contextProvider;

    public C17807b(ContextProvider contextProvider, UnifiedBannerAdCallback unifiedBannerAdCallback) {
        this.contextProvider = contextProvider;
        this.callback = unifiedBannerAdCallback;
    }

    @Override // com.explorestack.iab.mraid.MraidViewListener
    public final void onClose(MraidView mraidView) {
    }

    @Override // com.explorestack.iab.mraid.MraidViewListener
    public final void onError(MraidView mraidView, int i) {
        if (i == 1) {
            this.callback.onAdShowFailed(BMError.Internal);
        } else {
            this.callback.onAdLoadFailed(BMError.noFillError(null));
        }
    }

    @Override // com.explorestack.iab.mraid.MraidViewListener
    public final void onExpand(MraidView mraidView) {
    }

    @Override // com.explorestack.iab.mraid.MraidViewListener
    public final void onLoaded(MraidView mraidView) {
        if (this.contextProvider.getActivity() == null || mraidView.getParent() != null) {
            this.callback.onAdLoadFailed(BMError.Internal);
            return;
        }
        mraidView.show(this.contextProvider.getActivity());
        this.callback.onAdLoaded(mraidView);
    }

    @Override // com.explorestack.iab.mraid.MraidViewListener
    public final void onOpenBrowser(MraidView mraidView, String str, final AbstractC9588c abstractC9588c) {
        this.callback.onAdClicked();
        Utils.m24114a(mraidView.getContext(), str, new Runnable() { // from class: io.bidmachine.ads.networks.mraid.b.1
            @Override // java.lang.Runnable
            public final void run() {
                abstractC9588c.clickHandled();
            }
        });
    }

    @Override // com.explorestack.iab.mraid.MraidViewListener
    public final void onPlayVideo(MraidView mraidView, String str) {
    }

    @Override // com.explorestack.iab.mraid.MraidViewListener
    public final void onShown(MraidView mraidView) {
    }
}
