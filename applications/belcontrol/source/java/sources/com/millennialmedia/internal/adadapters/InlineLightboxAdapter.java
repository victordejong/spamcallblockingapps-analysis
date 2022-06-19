package com.millennialmedia.internal.adadapters;

import android.content.Context;
import android.widget.RelativeLayout;
import com.millennialmedia.InlineAd;
import com.millennialmedia.internal.AdPlacement;
import com.millennialmedia.internal.Handshake;
import com.millennialmedia.internal.adadapters.InlineAdapter;
import com.millennialmedia.internal.adcontrollers.LightboxController;
import com.millennialmedia.internal.utils.ViewUtils;
/* loaded from: classes3-dex2jar.jar:com/millennialmedia/internal/adadapters/InlineLightboxAdapter.class */
public class InlineLightboxAdapter extends InlineAdapter {
    private InlineAdapter.InlineAdapterListener inlineAdapterListener;
    private LightboxController lightboxController;
    private LightboxController.LightboxControllerListener lightboxControllerListener = new LightboxController.LightboxControllerListener() { // from class: com.millennialmedia.internal.adadapters.InlineLightboxAdapter.1
        @Override // com.millennialmedia.internal.adcontrollers.LightboxController.LightboxControllerListener
        public void attachFailed() {
            InlineLightboxAdapter.this.inlineAdapterListener.displayFailed();
        }

        @Override // com.millennialmedia.internal.adcontrollers.LightboxController.LightboxControllerListener
        public void attachSucceeded() {
            InlineLightboxAdapter.this.inlineAdapterListener.displaySucceeded();
        }

        @Override // com.millennialmedia.internal.adcontrollers.LightboxController.LightboxControllerListener
        public void initFailed() {
            InlineLightboxAdapter.this.inlineAdapterListener.initFailed();
        }

        @Override // com.millennialmedia.internal.adcontrollers.LightboxController.LightboxControllerListener
        public void initSucceeded() {
            InlineLightboxAdapter.this.inlineAdapterListener.initSucceeded();
        }

        @Override // com.millennialmedia.internal.adcontrollers.LightboxController.LightboxControllerListener
        public void onAdLeftApplication() {
            InlineLightboxAdapter.this.inlineAdapterListener.onAdLeftApplication();
        }

        @Override // com.millennialmedia.internal.adcontrollers.LightboxController.LightboxControllerListener
        public void onClicked() {
            InlineLightboxAdapter.this.inlineAdapterListener.onClicked();
        }

        @Override // com.millennialmedia.internal.adcontrollers.LightboxController.LightboxControllerListener
        public void onCollapsed() {
            InlineLightboxAdapter.this.inlineAdapterListener.onCollapsed();
        }

        @Override // com.millennialmedia.internal.adcontrollers.LightboxController.LightboxControllerListener
        public void onExpanded() {
            InlineLightboxAdapter.this.inlineAdapterListener.onExpanded();
        }
    };

    @Override // com.millennialmedia.internal.adadapters.InlineAdapter
    public void display(RelativeLayout relativeLayout, InlineAd.AdSize adSize) {
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(ViewUtils.convertDipsToPixels(adSize.width), ViewUtils.convertDipsToPixels(adSize.height));
        layoutParams.addRule(13);
        LightboxController lightboxController = this.lightboxController;
        if (lightboxController != null) {
            lightboxController.attach(relativeLayout, layoutParams);
        }
    }

    @Override // com.millennialmedia.internal.adadapters.AdAdapter
    public long getImpressionDelay() {
        return Handshake.getMinImpressionDuration();
    }

    @Override // com.millennialmedia.internal.adadapters.AdAdapter
    public int getMinImpressionViewabilityPercentage() {
        return Handshake.getMinImpressionViewabilityPercent();
    }

    @Override // com.millennialmedia.internal.adadapters.InlineAdapter
    public void init(Context context, InlineAdapter.InlineAdapterListener inlineAdapterListener, AdPlacement.DisplayOptions displayOptions) {
        this.inlineAdapterListener = inlineAdapterListener;
        LightboxController lightboxController = new LightboxController(this.lightboxControllerListener);
        this.lightboxController = lightboxController;
        lightboxController.init(context, this.adContent);
    }

    @Override // com.millennialmedia.internal.adadapters.AdAdapter
    public void release() {
        LightboxController lightboxController = this.lightboxController;
        if (lightboxController != null) {
            lightboxController.close();
            this.lightboxController.release();
            this.lightboxController = null;
        }
    }
}
