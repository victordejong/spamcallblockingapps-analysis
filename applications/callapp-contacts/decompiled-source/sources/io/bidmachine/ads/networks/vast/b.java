package io.bidmachine.ads.networks.vast;

import android.content.Context;
import com.explorestack.iab.utils.Utils;
import com.explorestack.iab.utils.c;
import com.explorestack.iab.vast.VastActivityListener;
import com.explorestack.iab.vast.VastRequest;
import com.explorestack.iab.vast.VastRequestListener;
import com.explorestack.iab.vast.activity.VastActivity;
import io.bidmachine.unified.UnifiedFullscreenAdCallback;
import io.bidmachine.utils.BMError;
/* loaded from: classes5-dex2jar.jar:io/bidmachine/ads/networks/vast/b.class */
final class b implements VastActivityListener, VastRequestListener {
    private final UnifiedFullscreenAdCallback callback;

    /* JADX INFO: Access modifiers changed from: package-private */
    public b(UnifiedFullscreenAdCallback unifiedFullscreenAdCallback) {
        this.callback = unifiedFullscreenAdCallback;
    }

    @Override // com.explorestack.iab.vast.VastActivityListener
    public final void onVastClick(VastActivity vastActivity, VastRequest vastRequest, final c cVar, String str) {
        this.callback.onAdClicked();
        if (str != null) {
            Utils.a(vastActivity, str, new Runnable() { // from class: io.bidmachine.ads.networks.vast.b.1
                @Override // java.lang.Runnable
                public final void run() {
                    cVar.clickHandled();
                }
            });
        } else {
            cVar.clickHandleCanceled();
        }
    }

    @Override // com.explorestack.iab.vast.VastActivityListener
    public final void onVastComplete(VastActivity vastActivity, VastRequest vastRequest) {
        this.callback.onAdFinished();
    }

    @Override // com.explorestack.iab.vast.VastActivityListener
    public final void onVastDismiss(VastActivity vastActivity, VastRequest vastRequest, boolean z) {
        this.callback.onAdClosed();
    }

    @Override // com.explorestack.iab.vast.VastErrorListener
    public final void onVastError(Context context, VastRequest vastRequest, int i) {
        if (i != 1) {
            this.callback.onAdLoadFailed(BMError.noFillError(null));
        } else {
            this.callback.onAdLoadFailed(BMError.noFillError(BMError.Connection));
        }
    }

    @Override // com.explorestack.iab.vast.VastRequestListener
    public final void onVastLoaded(VastRequest vastRequest) {
        this.callback.onAdLoaded();
    }

    @Override // com.explorestack.iab.vast.VastActivityListener
    public final void onVastShown(VastActivity vastActivity, VastRequest vastRequest) {
        this.callback.onAdShown();
    }
}
