package com.millennialmedia.internal.adadapters;

import android.content.Context;
import com.millennialmedia.InterstitialAd;
import com.millennialmedia.MMLog;
import com.millennialmedia.internal.AdMetadata;
import com.millennialmedia.internal.AdPlacement;
import com.millennialmedia.internal.Handshake;
import com.millennialmedia.internal.MMActivity;
import com.millennialmedia.internal.adadapters.InterstitialAdapter;
import com.millennialmedia.internal.adcontrollers.WebController;
/* loaded from: classes3-dex2jar.jar:com/millennialmedia/internal/adadapters/InterstitialWebAdapter.class */
public class InterstitialWebAdapter extends InterstitialAdapter {
    private static final String TAG = "InterstitialWebAdapter";
    public WebController.WebControllerListener controllerListener = new WebController.WebControllerListener() { // from class: com.millennialmedia.internal.adadapters.InterstitialWebAdapter.1
        @Override // com.millennialmedia.internal.adcontrollers.WebController.WebControllerListener
        public void attachFailed() {
            InterstitialWebAdapter.this.adapterListener.showFailed(new InterstitialAd.InterstitialErrorStatus(7, "Unable to start interstitial activity"));
        }

        @Override // com.millennialmedia.internal.adcontrollers.WebController.WebControllerListener
        public void attachSucceeded() {
        }

        @Override // com.millennialmedia.internal.adcontrollers.WebController.WebControllerListener
        public void initFailed() {
            InterstitialWebAdapter.this.adapterListener.initFailed();
        }

        @Override // com.millennialmedia.internal.adcontrollers.WebController.WebControllerListener
        public void initSucceeded() {
            InterstitialWebAdapter.this.adapterListener.initSucceeded();
        }

        @Override // com.millennialmedia.internal.adcontrollers.WebController.WebControllerListener
        public void onAdLeftApplication() {
            InterstitialWebAdapter.this.adapterListener.onAdLeftApplication();
        }

        @Override // com.millennialmedia.internal.adcontrollers.WebController.WebControllerListener
        public void onClicked() {
            InterstitialWebAdapter.this.adapterListener.onClicked();
        }

        @Override // com.millennialmedia.internal.adcontrollers.WebController.WebControllerListener
        public void onCollapsed() {
            InterstitialWebAdapter.this.adapterListener.onClosed();
        }

        @Override // com.millennialmedia.internal.adcontrollers.WebController.WebControllerListener
        public void onExpanded() {
            InterstitialWebAdapter.this.adapterListener.shown();
        }

        @Override // com.millennialmedia.internal.adcontrollers.WebController.WebControllerListener
        public void onResize(int i, int i2) {
        }

        @Override // com.millennialmedia.internal.adcontrollers.WebController.WebControllerListener
        public void onResized(int i, int i2, boolean z) {
            if (z) {
                InterstitialWebAdapter.this.adapterListener.onClosed();
            }
        }
    };
    public WebController webController;

    private boolean isEnhancedAdControlEnabled() {
        return this.adMetadata.getBoolean(AdMetadata.ENHANCED_AD_CONTROL_ENABLED, false);
    }

    @Override // com.millennialmedia.internal.adadapters.AdAdapter
    public long getImpressionDelay() {
        return isEnhancedAdControlEnabled() ? (char) 0 : (char) 1000;
    }

    @Override // com.millennialmedia.internal.adadapters.AdAdapter
    public int getMinImpressionViewabilityPercentage() {
        return isEnhancedAdControlEnabled() ? -1 : 50;
    }

    @Override // com.millennialmedia.internal.adadapters.InterstitialAdapter
    public void init(Context context, InterstitialAdapter.InterstitialAdapterListener interstitialAdapterListener) {
        this.adapterListener = interstitialAdapterListener;
        WebController.WebControllerOptions webControllerOptions = new WebController.WebControllerOptions(true, Handshake.isMoatEnabled(), isEnhancedAdControlEnabled());
        WebController webController = new WebController(this.controllerListener);
        this.webController = webController;
        webController.init(context, this.adContent, this.adMetadata, webControllerOptions);
    }

    @Override // com.millennialmedia.internal.adadapters.AdAdapter
    public void release() {
        WebController webController = this.webController;
        if (webController != null) {
            webController.close();
            this.webController.release();
            this.webController = null;
        }
    }

    @Override // com.millennialmedia.internal.adadapters.InterstitialAdapter
    public void show(Context context, AdPlacement.DisplayOptions displayOptions) {
        if (this.webController == null) {
            return;
        }
        AdPlacement.DisplayOptions displayOptions2 = displayOptions;
        if (displayOptions == null) {
            if (MMLog.isDebugEnabled()) {
                MMLog.m4070d(TAG, "Display options not specified, using defaults.");
            }
            displayOptions2 = new AdPlacement.DisplayOptions();
        }
        MMActivity.MMActivityConfig transitionAnimation = new MMActivity.MMActivityConfig().setImmersive(displayOptions2.isImmersive()).setTransitionAnimation(displayOptions2.getEnterAnimationId(), displayOptions2.getExitAnimationId());
        AdMetadata adMetadata = this.adMetadata;
        this.webController.showExpanded(transitionAnimation.setTransparent(adMetadata != null && adMetadata.isTransparent()));
    }
}
