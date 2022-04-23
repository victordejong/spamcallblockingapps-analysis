package io.bidmachine;

import android.content.Context;
import io.bidmachine.AdObjectImpl;
import io.bidmachine.FullScreenAdRequest;
import io.bidmachine.core.Utils;
import io.bidmachine.models.AdObjectParams;
import io.bidmachine.unified.UnifiedFullscreenAd;
import io.bidmachine.unified.UnifiedFullscreenAdCallback;
import io.bidmachine.unified.UnifiedFullscreenAdRequestParams;
/* loaded from: classes5-dex2jar.jar:io/bidmachine/FullScreenAdObject.class */
public final class FullScreenAdObject<AdRequestType extends FullScreenAdRequest<AdRequestType>> extends AdObjectImpl<AdRequestType, AdObjectParams, UnifiedFullscreenAd, UnifiedFullscreenAdCallback, UnifiedFullscreenAdRequestParams> {
    private final FullScreenAdObject<AdRequestType>.a thresholdTask = new FullScreenAdObject<AdRequestType>.a() { // from class: io.bidmachine.FullScreenAdObject.1
        @Override // io.bidmachine.FullScreenAdObject.a
        final void onTracked() {
            FullScreenAdObject.this.getProcessCallback().processImpression();
        }
    };

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5-dex2jar.jar:io/bidmachine/FullScreenAdObject$a.class */
    public abstract class a implements Runnable {
        private a() {
        }

        void cancel() {
            Utils.cancelBackgroundThreadTask(this);
        }

        abstract void onTracked();

        @Override // java.lang.Runnable
        public void run() {
            onTracked();
        }

        void start(long j) {
            Utils.onBackgroundThread(this, j);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5-dex2jar.jar:io/bidmachine/FullScreenAdObject$b.class */
    public final class b extends AdObjectImpl.BaseUnifiedAdCallback implements UnifiedFullscreenAdCallback {
        b(AdProcessCallback adProcessCallback) {
            super(adProcessCallback);
        }

        @Override // io.bidmachine.unified.UnifiedFullscreenAdCallback
        public final void onAdClosed() {
            this.processCallback.processClosed();
        }

        @Override // io.bidmachine.unified.UnifiedFullscreenAdCallback
        public final void onAdFinished() {
            this.processCallback.processFinished();
        }

        @Override // io.bidmachine.unified.UnifiedFullscreenAdCallback
        public final void onAdLoaded() {
            this.processCallback.processLoadSuccess();
        }

        @Override // io.bidmachine.unified.UnifiedFullscreenAdCallback
        public final void onAdShown() {
            this.processCallback.processShown();
        }
    }

    public FullScreenAdObject(ContextProvider contextProvider, AdProcessCallback adProcessCallback, AdRequestType adrequesttype, AdObjectParams adObjectParams, UnifiedFullscreenAd unifiedFullscreenAd) {
        super(contextProvider, adProcessCallback, adrequesttype, adObjectParams, unifiedFullscreenAd);
    }

    private void cancelImpressionThresholdTask() {
        this.thresholdTask.cancel();
    }

    private void startImpressionThresholdTask() {
        this.thresholdTask.start(getParams().getViewabilityTimeThresholdMs());
    }

    @Override // io.bidmachine.models.AdObject
    public final UnifiedFullscreenAdCallback createUnifiedCallback(AdProcessCallback adProcessCallback) {
        return new b(adProcessCallback);
    }

    @Override // io.bidmachine.AdObjectImpl, io.bidmachine.models.AdObject
    public final void onClosed(boolean z) {
        super.onClosed(z);
        cancelImpressionThresholdTask();
    }

    @Override // io.bidmachine.AdObjectImpl, io.bidmachine.models.AdObject
    public final void onFinished() {
        super.onFinished();
        cancelImpressionThresholdTask();
    }

    @Override // io.bidmachine.AdObjectImpl, io.bidmachine.models.AdObject
    public final void onImpression() {
        super.onImpression();
        cancelImpressionThresholdTask();
    }

    @Override // io.bidmachine.AdObjectImpl, io.bidmachine.models.AdObject
    public final void onShown() {
        super.onShown();
        startImpressionThresholdTask();
    }

    public final void show(Context context) {
        getUnifiedAd().show(context, getUnifiedAdCallback());
    }
}
