package com.pubmatic.sdk.banner.p018ui;

import android.view.View;
import com.pubmatic.sdk.common.POBDataType;
import com.pubmatic.sdk.common.POBError;
import com.pubmatic.sdk.common.base.POBAdDescriptor;
import com.pubmatic.sdk.common.base.POBAdRendererListener;
import com.pubmatic.sdk.common.log.PMLog;
import com.pubmatic.sdk.common.p019ui.POBBannerRendering;
import com.pubmatic.sdk.video.POBLogConstants;
import com.pubmatic.sdk.video.renderer.POBVideoRenderingListener;
/* renamed from: com.pubmatic.sdk.banner.ui.POBBannerRenderer */
/* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/banner/ui/POBBannerRenderer.class */
public class POBBannerRenderer implements POBBannerRendering, POBAdRendererListener, POBVideoRenderingListener {

    /* renamed from: a */
    private POBBannerRendering f337a;

    /* renamed from: b */
    private POBAdRendererListener f338b;

    /* renamed from: c */
    private RendererBuilder f339c;

    /* renamed from: com.pubmatic.sdk.banner.ui.POBBannerRenderer$RendererBuilder */
    /* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/banner/ui/POBBannerRenderer$RendererBuilder.class */
    public interface RendererBuilder {
        POBBannerRendering build(POBAdDescriptor pOBAdDescriptor, int i);
    }

    public POBBannerRenderer(RendererBuilder rendererBuilder) {
        this.f339c = rendererBuilder;
    }

    @Override // com.pubmatic.sdk.common.p019ui.POBBannerRendering
    public void destroy() {
        POBBannerRendering pOBBannerRendering = this.f337a;
        if (pOBBannerRendering != null) {
            pOBBannerRendering.destroy();
        }
    }

    @Override // com.pubmatic.sdk.video.renderer.POBVideoRenderingListener
    public void enableBackPress() {
    }

    @Override // com.pubmatic.sdk.common.p019ui.POBBannerRendering
    public void invalidateExpiration() {
    }

    @Override // com.pubmatic.sdk.video.renderer.POBVideoRenderingListener
    public void notifyAdEvent(POBDataType.POBVideoAdEventType pOBVideoAdEventType) {
    }

    @Override // com.pubmatic.sdk.common.base.POBAdRendererListener
    public void onAdExpired() {
    }

    @Override // com.pubmatic.sdk.common.base.POBAdRendererListener
    public void onAdInteractionStarted() {
        POBAdRendererListener pOBAdRendererListener = this.f338b;
        if (pOBAdRendererListener != null) {
            pOBAdRendererListener.onAdInteractionStarted();
        }
    }

    @Override // com.pubmatic.sdk.common.base.POBAdRendererListener
    public void onAdInteractionStopped() {
        POBAdRendererListener pOBAdRendererListener = this.f338b;
        if (pOBAdRendererListener != null) {
            pOBAdRendererListener.onAdInteractionStopped();
        }
    }

    @Override // com.pubmatic.sdk.common.base.POBAdRendererListener
    public void onAdReadyToRefresh(int i) {
        POBAdRendererListener pOBAdRendererListener = this.f338b;
        if (pOBAdRendererListener != null) {
            pOBAdRendererListener.onAdReadyToRefresh(i);
        }
    }

    @Override // com.pubmatic.sdk.common.base.POBAdRendererListener
    public void onAdRender(View view, POBAdDescriptor pOBAdDescriptor) {
        POBAdRendererListener pOBAdRendererListener = this.f338b;
        if (pOBAdRendererListener != null) {
            pOBAdRendererListener.onAdRender(view, pOBAdDescriptor);
        }
    }

    @Override // com.pubmatic.sdk.common.base.POBAdRendererListener
    public void onAdRenderingFailed(POBError pOBError) {
        POBAdRendererListener pOBAdRendererListener = this.f338b;
        if (pOBAdRendererListener != null) {
            pOBAdRendererListener.onAdRenderingFailed(pOBError);
        }
    }

    @Override // com.pubmatic.sdk.common.base.POBAdRendererListener
    public void onAdUnload() {
        POBAdRendererListener pOBAdRendererListener = this.f338b;
        if (pOBAdRendererListener != null) {
            pOBAdRendererListener.onAdUnload();
        }
    }

    @Override // com.pubmatic.sdk.common.base.POBAdRendererListener
    public void onLeavingApplication() {
        POBAdRendererListener pOBAdRendererListener = this.f338b;
        if (pOBAdRendererListener != null) {
            pOBAdRendererListener.onLeavingApplication();
        }
    }

    @Override // com.pubmatic.sdk.common.base.POBAdRendererListener
    public void onReadyToExecuteTrackers() {
    }

    @Override // com.pubmatic.sdk.common.base.POBAdRendererListener
    public void onRenderAdClick() {
        POBAdRendererListener pOBAdRendererListener = this.f338b;
        if (pOBAdRendererListener != null) {
            pOBAdRendererListener.onRenderAdClick();
        }
    }

    @Override // com.pubmatic.sdk.common.p019ui.POBBannerRendering
    public void prepareToDetach() {
        POBBannerRendering pOBBannerRendering = this.f337a;
        if (pOBBannerRendering != null) {
            pOBBannerRendering.prepareToDetach();
        }
    }

    @Override // com.pubmatic.sdk.common.p019ui.POBBannerRendering
    public void renderAd(POBAdDescriptor pOBAdDescriptor) {
        PMLog.debug("POBBannerRenderer", "Rendering onStart in POBBannerRenderer", new Object[0]);
        if (pOBAdDescriptor.getRenderableContent() != null) {
            POBBannerRendering build = this.f339c.build(pOBAdDescriptor, hashCode());
            this.f337a = build;
            if (build != null) {
                build.setAdRendererListener(this);
                this.f337a.renderAd(pOBAdDescriptor);
                return;
            }
        }
        POBAdRendererListener pOBAdRendererListener = this.f338b;
        if (pOBAdRendererListener != null) {
            pOBAdRendererListener.onAdRenderingFailed(new POBError(1009, POBLogConstants.MSG_RENDERING_FAILED_ERROR + pOBAdDescriptor));
        }
    }

    @Override // com.pubmatic.sdk.common.p019ui.POBBannerRendering
    public void setAdRendererListener(POBAdRendererListener pOBAdRendererListener) {
        this.f338b = pOBAdRendererListener;
    }
}
