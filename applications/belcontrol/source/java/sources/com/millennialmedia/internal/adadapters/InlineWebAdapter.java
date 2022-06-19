package com.millennialmedia.internal.adadapters;

import android.content.Context;
import android.widget.RelativeLayout;
import com.millennialmedia.InlineAd;
import com.millennialmedia.internal.AdMetadata;
import com.millennialmedia.internal.AdPlacement;
import com.millennialmedia.internal.Handshake;
import com.millennialmedia.internal.adadapters.InlineAdapter;
import com.millennialmedia.internal.adcontrollers.WebController;
import com.millennialmedia.internal.utils.ViewUtils;
/* loaded from: classes3-dex2jar.jar:com/millennialmedia/internal/adadapters/InlineWebAdapter.class */
public class InlineWebAdapter extends InlineAdapter {
    public InlineAdapter.InlineAdapterListener adapterListener;
    public WebController.WebControllerListener controllerListener = new WebController.WebControllerListener() { // from class: com.millennialmedia.internal.adadapters.InlineWebAdapter.1
        @Override // com.millennialmedia.internal.adcontrollers.WebController.WebControllerListener
        public void attachFailed() {
            InlineWebAdapter.this.adapterListener.displayFailed();
        }

        @Override // com.millennialmedia.internal.adcontrollers.WebController.WebControllerListener
        public void attachSucceeded() {
            InlineWebAdapter.this.adapterListener.displaySucceeded();
        }

        @Override // com.millennialmedia.internal.adcontrollers.WebController.WebControllerListener
        public void initFailed() {
            InlineWebAdapter.this.adapterListener.initFailed();
        }

        @Override // com.millennialmedia.internal.adcontrollers.WebController.WebControllerListener
        public void initSucceeded() {
            InlineWebAdapter.this.adapterListener.initSucceeded();
        }

        @Override // com.millennialmedia.internal.adcontrollers.WebController.WebControllerListener
        public void onAdLeftApplication() {
            InlineWebAdapter.this.adapterListener.onAdLeftApplication();
        }

        @Override // com.millennialmedia.internal.adcontrollers.WebController.WebControllerListener
        public void onClicked() {
            InlineWebAdapter.this.adapterListener.onClicked();
        }

        @Override // com.millennialmedia.internal.adcontrollers.WebController.WebControllerListener
        public void onCollapsed() {
            InlineWebAdapter.this.adapterListener.onCollapsed();
        }

        @Override // com.millennialmedia.internal.adcontrollers.WebController.WebControllerListener
        public void onExpanded() {
            InlineWebAdapter.this.adapterListener.onExpanded();
        }

        @Override // com.millennialmedia.internal.adcontrollers.WebController.WebControllerListener
        public void onResize(int i, int i2) {
            InlineWebAdapter.this.adapterListener.onResize(i, i2);
        }

        @Override // com.millennialmedia.internal.adcontrollers.WebController.WebControllerListener
        public void onResized(int i, int i2, boolean z) {
            InlineWebAdapter.this.adapterListener.onResized(i, i2, z);
        }
    };
    public WebController webController;

    private boolean isEnhancedAdControlEnabled() {
        return this.adMetadata.getBoolean(AdMetadata.ENHANCED_AD_CONTROL_ENABLED, false);
    }

    @Override // com.millennialmedia.internal.adadapters.InlineAdapter
    public void display(RelativeLayout relativeLayout, InlineAd.AdSize adSize) {
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(ViewUtils.convertDipsToPixels(adSize.width), ViewUtils.convertDipsToPixels(adSize.height));
        layoutParams.addRule(13);
        WebController webController = this.webController;
        if (webController != null) {
            webController.attach(relativeLayout, layoutParams);
        }
    }

    /* JADX WARN: Type inference failed for: r0v4, types: [long] */
    @Override // com.millennialmedia.internal.adadapters.AdAdapter
    public long getImpressionDelay() {
        return isEnhancedAdControlEnabled() ? (char) 0 : Handshake.getMinImpressionDuration();
    }

    @Override // com.millennialmedia.internal.adadapters.AdAdapter
    public int getMinImpressionViewabilityPercentage() {
        return isEnhancedAdControlEnabled() ? -1 : Handshake.getMinImpressionViewabilityPercent();
    }

    @Override // com.millennialmedia.internal.adadapters.InlineAdapter
    public void init(Context context, InlineAdapter.InlineAdapterListener inlineAdapterListener, AdPlacement.DisplayOptions displayOptions) {
        this.adapterListener = inlineAdapterListener;
        WebController.WebControllerOptions webControllerOptions = new WebController.WebControllerOptions(false, Handshake.isMoatEnabled(), isEnhancedAdControlEnabled(), false, displayOptions.isImmersive());
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
}
