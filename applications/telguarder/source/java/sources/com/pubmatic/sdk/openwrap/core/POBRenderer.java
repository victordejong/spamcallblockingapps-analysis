package com.pubmatic.sdk.openwrap.core;

import android.content.Context;
import com.pubmatic.sdk.banner.p018ui.POBBannerRenderer;
import com.pubmatic.sdk.common.POBAdSize;
import com.pubmatic.sdk.common.POBCommonConstants;
import com.pubmatic.sdk.common.POBInstanceProvider;
import com.pubmatic.sdk.common.base.POBAdDescriptor;
import com.pubmatic.sdk.common.p019ui.POBBannerRendering;
import com.pubmatic.sdk.common.p019ui.POBInterstitialRendering;
import com.pubmatic.sdk.common.utility.POBUtils;
import com.pubmatic.sdk.interstitial.p020ui.POBInterstitialRenderer;
import com.pubmatic.sdk.video.POBVastPlayerConfig;
import com.pubmatic.sdk.video.player.POBVastPlayer;
import com.pubmatic.sdk.video.renderer.POBVideoRenderer;
import com.pubmatic.sdk.webrendering.mraid.POBMraidRenderer;
import com.pubmatic.sdk.webrendering.p021ui.POBViewabilityTracker;
/* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/openwrap/core/POBRenderer.class */
public class POBRenderer {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.pubmatic.sdk.openwrap.core.POBRenderer$a */
    /* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/openwrap/core/POBRenderer$a.class */
    public static final class C1937a implements POBBannerRenderer.RendererBuilder {

        /* renamed from: a */
        final /* synthetic */ Context f735a;

        /* renamed from: b */
        final /* synthetic */ int f736b;

        C1937a(Context context, int i) {
            this.f735a = context;
            this.f736b = i;
        }

        @Override // com.pubmatic.sdk.banner.p018ui.POBBannerRenderer.RendererBuilder
        public POBBannerRendering build(POBAdDescriptor pOBAdDescriptor, int i) {
            if (pOBAdDescriptor.isVideo()) {
                return POBRenderer.m841b(this.f735a, pOBAdDescriptor, POBCommonConstants.BANNER_PLACEMENT_TYPE, this.f736b);
            }
            return POBRenderer.m840b(this.f735a, POBCommonConstants.BANNER_PLACEMENT_TYPE, Math.max(pOBAdDescriptor.getRefreshInterval(), 15), i);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.pubmatic.sdk.openwrap.core.POBRenderer$b */
    /* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/openwrap/core/POBRenderer$b.class */
    public static final class C1938b implements POBInterstitialRenderer.RendererBuilder {

        /* renamed from: a */
        final /* synthetic */ Context f737a;

        /* renamed from: b */
        final /* synthetic */ int f738b;

        C1938b(Context context, int i) {
            this.f737a = context;
            this.f738b = i;
        }

        @Override // com.pubmatic.sdk.interstitial.p020ui.POBInterstitialRenderer.RendererBuilder
        public POBBannerRendering build(POBAdDescriptor pOBAdDescriptor, int i) {
            return pOBAdDescriptor.isVideo() ? POBRenderer.m841b(this.f737a, pOBAdDescriptor, POBCommonConstants.INTERSTITIAL_PLACEMENT_TYPE, this.f738b) : POBRenderer.m840b(this.f737a, POBCommonConstants.INTERSTITIAL_PLACEMENT_TYPE, 15, i);
        }
    }

    /* renamed from: a */
    private static String m844a() {
        return POBInstanceProvider.getSdkConfig().isRequestSecureCreative() ? POBConstants.PUBMATIC_DM_SERVER_SECURE_URL : POBConstants.PUBMATIC_DM_SERVER_URL;
    }

    /* renamed from: b */
    public static POBBannerRendering m841b(Context context, POBAdDescriptor pOBAdDescriptor, String str, int i) {
        boolean z = !POBCommonConstants.BANNER_PLACEMENT_TYPE.equals(str);
        POBVastPlayer pOBVastPlayer = new POBVastPlayer(context, POBVastPlayerConfig.ConfigBuilder.createVastConfig(pOBAdDescriptor.getRawBid(), z, false, true, str));
        pOBVastPlayer.setDeviceInfo(POBInstanceProvider.getDeviceInfo(context.getApplicationContext()));
        pOBVastPlayer.setMaxWrapperThreshold(3);
        pOBVastPlayer.setLinearity(POBVastPlayer.Linearity.LINEAR);
        pOBVastPlayer.setSkipabilityEnabled(z);
        POBViewabilityTracker pOBViewabilityTracker = new POBViewabilityTracker(pOBVastPlayer);
        if (POBCommonConstants.BANNER_PLACEMENT_TYPE.equals(str)) {
            pOBViewabilityTracker.setViewabilityThresholdPercent(50.0f);
            pOBViewabilityTracker.setAllowViewTreeObserverRegistration(true);
        }
        POBAdSize pOBAdSize = null;
        if (POBCommonConstants.INTERSTITIAL_PLACEMENT_TYPE.equalsIgnoreCase(str)) {
            pOBAdSize = POBUtils.getInterstitialAdSize(context);
        }
        pOBVastPlayer.setEndCardSize(pOBAdSize);
        POBVideoRenderer pOBVideoRenderer = new POBVideoRenderer(pOBVastPlayer, pOBViewabilityTracker, str);
        if (POBCommonConstants.INTERSTITIAL_PLACEMENT_TYPE.equalsIgnoreCase(str)) {
            pOBVideoRenderer.setExpirationTimeout(i);
        }
        pOBVideoRenderer.setMeasurementProvider(POBInstanceProvider.getSdkConfig().getVideoMeasurementProvider());
        return pOBVideoRenderer;
    }

    /* renamed from: b */
    public static POBBannerRendering m840b(Context context, String str, int i, int i2) {
        POBMraidRenderer createInstance = POBMraidRenderer.createInstance(context, str, i2);
        if (createInstance != null) {
            createInstance.setRenderingTimeout(i);
            createInstance.setBaseURL(m844a());
            createInstance.setHTMLMeasurementListener(POBInstanceProvider.getSdkConfig().getHtmlMeasurementProvider());
        }
        return createInstance;
    }

    public static POBBannerRendering getBannerRenderer(Context context, int i) {
        return new POBBannerRenderer(new C1937a(context, i));
    }

    public static POBInterstitialRendering getInterstitialRenderer(Context context, int i) {
        return new POBInterstitialRenderer(context.getApplicationContext(), new C1938b(context, i));
    }
}
