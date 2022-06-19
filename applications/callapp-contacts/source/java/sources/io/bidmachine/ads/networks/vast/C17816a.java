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
/* renamed from: io.bidmachine.ads.networks.vast.a */
/* loaded from: classes5-dex2jar.jar:io/bidmachine/ads/networks/vast/a.class */
class C17816a extends UnifiedFullscreenAd {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private C17817b vastListener;
    private VastRequest vastRequest;
    private final VideoType videoType;

    public C17816a(VideoType videoType) {
        this.videoType = videoType;
    }

    public void load(ContextProvider contextProvider, UnifiedFullscreenAdCallback unifiedFullscreenAdCallback, UnifiedFullscreenAdRequestParams unifiedFullscreenAdRequestParams, UnifiedMediationParams unifiedMediationParams) throws Throwable {
        C17819c c17819c = new C17819c(unifiedMediationParams);
        if (!c17819c.isValid(unifiedFullscreenAdCallback)) {
            return;
        }
        this.vastListener = new C17817b(unifiedFullscreenAdCallback);
        VastRequest build = VastRequest.newBuilder().setPreCache(true).setVideoCloseTime(c17819c.skipOffset).setCompanionCloseTime(c17819c.companionSkipOffset).forceUseNativeCloseTime(c17819c.useNativeClose).build();
        this.vastRequest = build;
        build.loadVideoWithData(contextProvider.getContext(), c17819c.creativeAdm, this.vastListener);
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
