package com.pubmatic.sdk.interstitial.p020ui;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.view.View;
import android.view.ViewGroup;
import com.pubmatic.sdk.common.POBDataType;
import com.pubmatic.sdk.common.POBError;
import com.pubmatic.sdk.common.POBInstanceProvider;
import com.pubmatic.sdk.common.base.POBAdDescriptor;
import com.pubmatic.sdk.common.base.POBAdRendererListener;
import com.pubmatic.sdk.common.cache.POBAdViewCacheService;
import com.pubmatic.sdk.common.log.PMLog;
import com.pubmatic.sdk.common.p019ui.POBBannerRendering;
import com.pubmatic.sdk.common.p019ui.POBFullScreenActivityListener;
import com.pubmatic.sdk.common.p019ui.POBInterstitialRendererListener;
import com.pubmatic.sdk.common.p019ui.POBInterstitialRendering;
import com.pubmatic.sdk.common.p019ui.POBVideoAdEventListener;
import com.pubmatic.sdk.video.POBLogConstants;
import com.pubmatic.sdk.video.renderer.POBVideoRenderingListener;
import com.pubmatic.sdk.webrendering.mraid.POBMraidRenderer;
import com.pubmatic.sdk.webrendering.p021ui.POBFullScreenActivity;
import com.pubmatic.sdk.webrendering.p021ui.POBMraidViewContainer;
import com.pubmatic.sdk.webrendering.p021ui.POBWebView;
/* renamed from: com.pubmatic.sdk.interstitial.ui.POBInterstitialRenderer */
/* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/interstitial/ui/POBInterstitialRenderer.class */
public class POBInterstitialRenderer implements POBInterstitialRendering, POBVideoRenderingListener, POBAdRendererListener {

    /* renamed from: a */
    private POBBannerRendering f589a;

    /* renamed from: b */
    private POBInterstitialRendererListener f590b;

    /* renamed from: c */
    private POBVideoAdEventListener f591c;

    /* renamed from: d */
    private int f592d;

    /* renamed from: e */
    private POBAdDescriptor f593e;

    /* renamed from: f */
    private Context f594f;

    /* renamed from: g */
    private View f595g;

    /* renamed from: h */
    private RendererBuilder f596h;

    /* renamed from: i */
    private POBFullScreenActivityListener f597i;

    /* renamed from: com.pubmatic.sdk.interstitial.ui.POBInterstitialRenderer$RendererBuilder */
    /* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/interstitial/ui/POBInterstitialRenderer$RendererBuilder.class */
    public interface RendererBuilder {
        POBBannerRendering build(POBAdDescriptor pOBAdDescriptor, int i);
    }

    /* renamed from: com.pubmatic.sdk.interstitial.ui.POBInterstitialRenderer$a */
    /* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/interstitial/ui/POBInterstitialRenderer$a.class */
    public class C1896a implements POBFullScreenActivityListener {

        /* renamed from: a */
        final /* synthetic */ View f598a;

        C1896a(View view) {
            POBInterstitialRenderer.this = r4;
            this.f598a = view;
        }

        @Override // com.pubmatic.sdk.common.p019ui.POBFullScreenActivityListener
        public void onCreate(Activity activity) {
            View view = this.f598a;
            if (view instanceof POBWebView) {
                ((POBWebView) view).setBaseContext(activity);
            }
        }

        @Override // com.pubmatic.sdk.common.p019ui.POBFullScreenActivityListener
        public void onDestroy() {
            View view = this.f598a;
            if (view instanceof POBWebView) {
                ((POBWebView) view).setBaseContext(POBInterstitialRenderer.this.f594f.getApplicationContext());
            }
            POBInterstitialRenderer.this.onAdInteractionStopped();
        }
    }

    public POBInterstitialRenderer(Context context, RendererBuilder rendererBuilder) {
        this.f594f = context;
        this.f596h = rendererBuilder;
    }

    /* renamed from: a */
    private void m973a() {
        POBBannerRendering pOBBannerRendering = this.f589a;
        if (pOBBannerRendering != null) {
            pOBBannerRendering.invalidateExpiration();
        }
    }

    /* renamed from: a */
    private void m972a(int i) {
        View view;
        PMLog.info("POBInterstitialRenderer", "showInterstitialAd", new Object[0]);
        POBAdDescriptor pOBAdDescriptor = this.f593e;
        if (pOBAdDescriptor == null || (view = this.f595g) == null) {
            String str = "Can not show interstitial for descriptor: " + this.f593e;
            PMLog.error("POBInterstitialRenderer", str, new Object[0]);
            POBInterstitialRendererListener pOBInterstitialRendererListener = this.f590b;
            if (pOBInterstitialRendererListener == null) {
                return;
            }
            pOBInterstitialRendererListener.onAdRenderingFailed(new POBError(1009, str));
            return;
        }
        m971a(pOBAdDescriptor, view);
        POBAdViewCacheService.AdViewConfig storedAdView = POBInstanceProvider.getAdViewCacheService().getStoredAdView(Integer.valueOf(hashCode()));
        if (storedAdView == null) {
            return;
        }
        POBBannerRendering pOBBannerRendering = this.f589a;
        if (pOBBannerRendering instanceof POBMraidRenderer) {
            POBMraidRenderer pOBMraidRenderer = (POBMraidRenderer) pOBBannerRendering;
            POBMraidViewContainer pOBMraidViewContainer = (POBMraidViewContainer) storedAdView.getAdView();
            if (pOBMraidViewContainer.getCloseBtn() != null) {
                pOBMraidRenderer.onObstructionAdded(pOBMraidViewContainer.getCloseBtn());
            }
            pOBMraidRenderer.signalImpressionEvent();
        }
        POBFullScreenActivity.startFullScreenActivity(this.f594f, i, this.f593e, hashCode());
        onAdInteractionStarted();
    }

    /* renamed from: a */
    private void m971a(POBAdDescriptor pOBAdDescriptor, View view) {
        this.f597i = new C1896a(view);
        POBInstanceProvider.getAdViewCacheService().storeAdView(Integer.valueOf(hashCode()), new POBAdViewCacheService.AdViewConfig(pOBAdDescriptor.isVideo() ? (ViewGroup) view : new POBMraidViewContainer(this.f594f.getApplicationContext(), (ViewGroup) view, hashCode()), this.f597i));
    }

    @Override // com.pubmatic.sdk.common.p019ui.POBInterstitialRendering
    public void destroy() {
        POBBannerRendering pOBBannerRendering = this.f589a;
        if (pOBBannerRendering != null) {
            pOBBannerRendering.destroy();
        }
        POBInstanceProvider.getAdViewCacheService().popStoredAdView(Integer.valueOf(hashCode()));
        this.f597i = null;
        Intent intent = new Intent(POBFullScreenActivity.ACTIONS.POB_CLOSE.name());
        intent.putExtra(POBFullScreenActivity.RENDERER_IDENTIFIER, hashCode());
        POBFullScreenActivity.sendBroadcast(this.f594f, intent);
    }

    @Override // com.pubmatic.sdk.video.renderer.POBVideoRenderingListener
    public void enableBackPress() {
        POBFullScreenActivity.enableBackPress(this.f594f, hashCode());
    }

    @Override // com.pubmatic.sdk.video.renderer.POBVideoRenderingListener
    public void notifyAdEvent(POBDataType.POBVideoAdEventType pOBVideoAdEventType) {
        POBVideoAdEventListener pOBVideoAdEventListener = this.f591c;
        if (pOBVideoAdEventListener != null) {
            pOBVideoAdEventListener.onVideoAdEvent(pOBVideoAdEventType);
        }
    }

    @Override // com.pubmatic.sdk.common.base.POBAdRendererListener
    public void onAdExpired() {
        POBInterstitialRendererListener pOBInterstitialRendererListener = this.f590b;
        if (pOBInterstitialRendererListener != null) {
            pOBInterstitialRendererListener.onAdExpired();
        }
    }

    @Override // com.pubmatic.sdk.common.base.POBAdRendererListener
    public void onAdInteractionStarted() {
        if (this.f590b != null && this.f592d == 0) {
            m973a();
            this.f590b.onAdInteractionStarted();
        }
        this.f592d++;
    }

    @Override // com.pubmatic.sdk.common.base.POBAdRendererListener
    public void onAdInteractionStopped() {
        int i = this.f592d - 1;
        this.f592d = i;
        if (this.f590b == null || i != 0) {
            return;
        }
        destroy();
        this.f590b.onAdInteractionStopped();
    }

    @Override // com.pubmatic.sdk.common.base.POBAdRendererListener
    public void onAdReadyToRefresh(int i) {
    }

    @Override // com.pubmatic.sdk.common.base.POBAdRendererListener
    public void onAdRender(View view, POBAdDescriptor pOBAdDescriptor) {
        this.f595g = view;
        POBInterstitialRendererListener pOBInterstitialRendererListener = this.f590b;
        if (pOBInterstitialRendererListener != null) {
            pOBInterstitialRendererListener.onAdRender(pOBAdDescriptor);
        }
    }

    @Override // com.pubmatic.sdk.common.base.POBAdRendererListener
    public void onAdRenderingFailed(POBError pOBError) {
        POBInterstitialRendererListener pOBInterstitialRendererListener = this.f590b;
        if (pOBInterstitialRendererListener != null) {
            pOBInterstitialRendererListener.onAdRenderingFailed(pOBError);
        }
    }

    @Override // com.pubmatic.sdk.common.base.POBAdRendererListener
    public void onAdUnload() {
        POBInterstitialRendererListener pOBInterstitialRendererListener = this.f590b;
        if (pOBInterstitialRendererListener != null) {
            pOBInterstitialRendererListener.onAdUnload();
        }
    }

    @Override // com.pubmatic.sdk.common.base.POBAdRendererListener
    public void onLeavingApplication() {
        POBInterstitialRendererListener pOBInterstitialRendererListener = this.f590b;
        if (pOBInterstitialRendererListener != null) {
            pOBInterstitialRendererListener.onLeavingApplication();
        }
    }

    @Override // com.pubmatic.sdk.common.base.POBAdRendererListener
    public void onReadyToExecuteTrackers() {
    }

    @Override // com.pubmatic.sdk.common.base.POBAdRendererListener
    public void onRenderAdClick() {
        POBInterstitialRendererListener pOBInterstitialRendererListener = this.f590b;
        if (pOBInterstitialRendererListener != null) {
            pOBInterstitialRendererListener.onAdClicked();
        }
    }

    @Override // com.pubmatic.sdk.common.p019ui.POBInterstitialRendering
    public void renderAd(POBAdDescriptor pOBAdDescriptor) {
        this.f593e = pOBAdDescriptor;
        PMLog.debug("POBInterstitialRenderer", POBLogConstants.MSG_RENDERING_ON_START, new Object[0]);
        if (pOBAdDescriptor.getRenderableContent() != null) {
            POBBannerRendering build = this.f596h.build(pOBAdDescriptor, hashCode());
            this.f589a = build;
            if (build != null) {
                build.setAdRendererListener(this);
                this.f589a.renderAd(pOBAdDescriptor);
                return;
            }
        }
        POBInterstitialRendererListener pOBInterstitialRendererListener = this.f590b;
        if (pOBInterstitialRendererListener != null) {
            pOBInterstitialRendererListener.onAdRenderingFailed(new POBError(1009, POBLogConstants.MSG_RENDERING_FAILED_ERROR + pOBAdDescriptor));
        }
    }

    @Override // com.pubmatic.sdk.common.p019ui.POBInterstitialRendering
    public void setAdRendererListener(POBInterstitialRendererListener pOBInterstitialRendererListener) {
        this.f590b = pOBInterstitialRendererListener;
    }

    @Override // com.pubmatic.sdk.common.p019ui.POBInterstitialRendering
    public void setVideoAdEventListener(POBVideoAdEventListener pOBVideoAdEventListener) {
        this.f591c = pOBVideoAdEventListener;
    }

    @Override // com.pubmatic.sdk.common.p019ui.POBInterstitialRendering
    public void show(int i) {
        m972a(i);
    }
}
