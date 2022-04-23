package io.bidmachine.ads.networks.vast;

import android.content.Context;
import com.explorestack.iab.vast.VastRequest;
import com.explorestack.iab.vast.VideoType;
import io.bidmachine.ContextProvider;
import io.bidmachine.unified.UnifiedFullscreenAd;
import io.bidmachine.unified.UnifiedFullscreenAdCallback;
import io.bidmachine.unified.UnifiedFullscreenAdRequestParams;
import io.bidmachine.unified.UnifiedMediationParams;
import io.bidmachine.utils.BMError;
/* loaded from: classes5-dex2jar.jar:io/bidmachine/ads/networks/vast/a.class */
class a extends UnifiedFullscreenAd {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private b vastListener;
    private VastRequest vastRequest;
    private final VideoType videoType;

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(VideoType videoType) {
        this.videoType = videoType;
    }

    public void load(ContextProvider contextProvider, UnifiedFullscreenAdCallback unifiedFullscreenAdCallback, UnifiedFullscreenAdRequestParams unifiedFullscreenAdRequestParams, UnifiedMediationParams unifiedMediationParams) throws Throwable {
        c cVar = new c(unifiedMediationParams);
        if (cVar.isValid(unifiedFullscreenAdCallback)) {
            this.vastListener = new b(unifiedFullscreenAdCallback);
            VastRequest build = VastRequest.newBuilder().setPreCache(true).setVideoCloseTime(cVar.skipOffset).setCompanionCloseTime(cVar.companionSkipOffset).forceUseNativeCloseTime(cVar.useNativeClose).build();
            this.vastRequest = build;
            build.loadVideoWithData(contextProvider.getContext(), cVar.creativeAdm, this.vastListener);
        }
    }

    @Override // io.bidmachine.unified.UnifiedAd
    public void onDestroy() {
        if (this.vastRequest != null) {
            this.vastRequest = null;
        }
    }

    @Override // io.bidmachine.unified.UnifiedFullscreenAd
    public void show(Context context, UnifiedFullscreenAdCallback unifiedFullscreenAdCallback) {
        VastRequest vastRequest = this.vastRequest;
        if (vastRequest == null || !vastRequest.checkFile()) {
            unifiedFullscreenAdCallback.onAdShowFailed(BMError.NotLoaded);
        } else {
            this.vastRequest.display(context, this.videoType, this.vastListener);
        }
    }
}
