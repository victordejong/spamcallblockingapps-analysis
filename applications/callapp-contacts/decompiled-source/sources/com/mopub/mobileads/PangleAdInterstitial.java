package com.mopub.mobileads;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.TTAdManager;
import com.bytedance.sdk.openadsdk.TTAdNative;
import com.bytedance.sdk.openadsdk.TTFullScreenVideoAd;
import com.callapp.contacts.model.Constants;
import com.mopub.common.Preconditions;
import com.mopub.common.logging.MoPubLog;
import java.util.Map;
/* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/PangleAdInterstitial.class */
public class PangleAdInterstitial extends BaseAd {

    /* renamed from: d  reason: collision with root package name */
    private static final String f34219d = "PangleAdInterstitial";
    private String e;
    private Context f;
    private PangleAdapterConfiguration g = new PangleAdapterConfiguration();
    private PangleAdInterstitialFullVideoLoader h;

    /* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/PangleAdInterstitial$PangleAdInterstitialFullVideoLoader.class */
    public class PangleAdInterstitialFullVideoLoader {

        /* renamed from: b  reason: collision with root package name */
        private Context f34221b;

        /* renamed from: c  reason: collision with root package name */
        private boolean f34222c;

        /* renamed from: d  reason: collision with root package name */
        private TTFullScreenVideoAd f34223d;
        private TTAdNative.FullScreenVideoAdListener e = new TTAdNative.FullScreenVideoAdListener() { // from class: com.mopub.mobileads.PangleAdInterstitial.PangleAdInterstitialFullVideoLoader.1
            @Override // com.bytedance.sdk.openadsdk.TTAdNative.FullScreenVideoAdListener, com.bytedance.sdk.openadsdk.a.b
            public final void onError(int i, String str) {
                String adNetworkId = PangleAdInterstitial.this.getAdNetworkId();
                MoPubLog.AdapterLogEvent adapterLogEvent = MoPubLog.AdapterLogEvent.LOAD_FAILED;
                String str2 = PangleAdInterstitial.f34219d;
                MoPubLog.log(adNetworkId, adapterLogEvent, str2, "Loading Full Video creative encountered an error: " + PangleAdapterConfiguration.mapErrorCode(i).toString() + ", error message:" + str);
                if (PangleAdInterstitial.this.f34041b != null) {
                    PangleAdInterstitial.this.f34041b.onAdLoadFailed(PangleAdapterConfiguration.mapErrorCode(i));
                }
            }

            @Override // com.bytedance.sdk.openadsdk.TTAdNative.FullScreenVideoAdListener
            public final void onFullScreenVideoAdLoad(TTFullScreenVideoAd tTFullScreenVideoAd) {
                if (tTFullScreenVideoAd != null) {
                    PangleAdInterstitialFullVideoLoader.this.f34222c = true;
                    PangleAdInterstitialFullVideoLoader.this.f34223d = tTFullScreenVideoAd;
                    PangleAdInterstitialFullVideoLoader.this.f34223d.setFullScreenVideoAdInteractionListener(PangleAdInterstitialFullVideoLoader.this.f);
                    MoPubLog.log(PangleAdInterstitial.this.getAdNetworkId(), MoPubLog.AdapterLogEvent.LOAD_SUCCESS, PangleAdInterstitial.f34219d);
                    if (PangleAdInterstitial.this.f34041b != null) {
                        PangleAdInterstitial.this.f34041b.onAdLoaded();
                        return;
                    }
                    return;
                }
                MoPubLog.log(PangleAdInterstitial.this.getAdNetworkId(), MoPubLog.AdapterLogEvent.LOAD_FAILED, PangleAdInterstitial.f34219d);
                if (PangleAdInterstitial.this.f34041b != null) {
                    PangleAdInterstitial.this.f34041b.onAdLoadFailed(MoPubErrorCode.NO_FILL);
                }
            }

            @Override // com.bytedance.sdk.openadsdk.TTAdNative.FullScreenVideoAdListener
            public final void onFullScreenVideoCached() {
                MoPubLog.log(PangleAdInterstitial.this.getAdNetworkId(), MoPubLog.AdapterLogEvent.CUSTOM, PangleAdInterstitial.f34219d, "onFullScreenVideoCached: The full screen video is cached.");
            }
        };
        private TTFullScreenVideoAd.FullScreenVideoAdInteractionListener f = new TTFullScreenVideoAd.FullScreenVideoAdInteractionListener() { // from class: com.mopub.mobileads.PangleAdInterstitial.PangleAdInterstitialFullVideoLoader.2
            @Override // com.bytedance.sdk.openadsdk.TTFullScreenVideoAd.FullScreenVideoAdInteractionListener
            public final void onAdClose() {
                MoPubLog.log(PangleAdInterstitial.this.getAdNetworkId(), MoPubLog.AdLogEvent.DID_DISAPPEAR, PangleAdInterstitial.f34219d);
                if (PangleAdInterstitial.this.f34042c != null) {
                    PangleAdInterstitial.this.f34042c.onAdDismissed();
                }
            }

            @Override // com.bytedance.sdk.openadsdk.TTFullScreenVideoAd.FullScreenVideoAdInteractionListener
            public final void onAdShow() {
                MoPubLog.log(PangleAdInterstitial.this.getAdNetworkId(), MoPubLog.AdapterLogEvent.SHOW_SUCCESS, PangleAdInterstitial.f34219d);
                if (PangleAdInterstitial.this.f34042c != null) {
                    PangleAdInterstitial.this.f34042c.onAdShown();
                    PangleAdInterstitial.this.f34042c.onAdImpression();
                }
            }

            @Override // com.bytedance.sdk.openadsdk.TTFullScreenVideoAd.FullScreenVideoAdInteractionListener
            public final void onAdVideoBarClick() {
                MoPubLog.log(PangleAdInterstitial.this.getAdNetworkId(), MoPubLog.AdapterLogEvent.CLICKED, PangleAdInterstitial.f34219d);
                if (PangleAdInterstitial.this.f34042c != null) {
                    PangleAdInterstitial.this.f34042c.onAdClicked();
                }
            }

            @Override // com.bytedance.sdk.openadsdk.TTFullScreenVideoAd.FullScreenVideoAdInteractionListener
            public final void onSkippedVideo() {
                MoPubLog.log(PangleAdInterstitial.this.getAdNetworkId(), MoPubLog.AdapterLogEvent.CUSTOM, PangleAdInterstitial.f34219d, "Pangle FullScreenVideoAd onSkippedVideo.");
            }

            @Override // com.bytedance.sdk.openadsdk.TTFullScreenVideoAd.FullScreenVideoAdInteractionListener
            public final void onVideoComplete() {
                MoPubLog.log(PangleAdInterstitial.this.getAdNetworkId(), MoPubLog.AdapterLogEvent.CUSTOM, PangleAdInterstitial.f34219d, "Pangle FullScreenVideoAd onVideoComplete.");
            }
        };

        PangleAdInterstitialFullVideoLoader(Context context) {
            this.f34221b = context;
        }

        final void a(Activity activity) {
            TTFullScreenVideoAd tTFullScreenVideoAd = this.f34223d;
            if (tTFullScreenVideoAd == null || !this.f34222c) {
                MoPubLog.log(PangleAdInterstitial.this.getAdNetworkId(), MoPubLog.AdapterLogEvent.SHOW_FAILED, PangleAdInterstitial.f34219d);
                if (PangleAdInterstitial.this.f34042c != null) {
                    PangleAdInterstitial.this.f34042c.onAdFailed(MoPubErrorCode.FULLSCREEN_SHOW_ERROR);
                    return;
                }
                return;
            }
            tTFullScreenVideoAd.showFullScreenVideoAd(activity);
        }

        final void a(AdSlot adSlot, TTAdNative tTAdNative) {
            if (tTAdNative != null && this.f34221b != null && adSlot != null && !TextUtils.isEmpty(adSlot.getCodeId())) {
                tTAdNative.loadFullScreenVideoAd(adSlot, this.e);
            } else if (PangleAdInterstitial.this.f34041b != null) {
                PangleAdInterstitial.this.f34041b.onAdLoadFailed(MoPubErrorCode.ADAPTER_CONFIGURATION_ERROR);
            }
        }

        public void destroy() {
            this.f34221b = null;
            this.f34223d = null;
            this.e = null;
            this.f = null;
        }
    }

    @Override // com.mopub.mobileads.BaseAd
    protected final void a() {
        if (this.h == null || !(this.f instanceof Activity)) {
            MoPubLog.log(getAdNetworkId(), MoPubLog.AdapterLogEvent.SHOW_FAILED, f34219d);
            if (this.f34042c != null) {
                this.f34042c.onAdFailed(MoPubErrorCode.FULLSCREEN_SHOW_ERROR);
                return;
            }
            return;
        }
        MoPubLog.log(getAdNetworkId(), MoPubLog.AdapterLogEvent.SHOW_ATTEMPTED, f34219d);
        this.h.a((Activity) this.f);
    }

    @Override // com.mopub.mobileads.BaseAd
    public String getAdNetworkId() {
        String str = this.e;
        String str2 = str;
        if (str == null) {
            str2 = "";
        }
        return str2;
    }

    @Override // com.mopub.mobileads.BaseAd
    public String getProviderTag() {
        return "pangle";
    }

    @Override // com.mopub.mobileads.BaseAd
    protected void load(Context context, AdData adData) {
        String str;
        Preconditions.checkNotNull(context);
        Preconditions.checkNotNull(adData);
        this.f = context;
        this.f34040a = false;
        Map<String, String> extras = adData.getExtras();
        this.g.initializeNetwork(context, extras);
        if (extras == null || extras.isEmpty()) {
            str = null;
        } else {
            String str2 = extras.get(PangleAdapterConfiguration.AD_PLACEMENT_ID_EXTRA_KEY);
            this.e = str2;
            if (TextUtils.isEmpty(str2)) {
                MoPubLog.log(getAdNetworkId(), MoPubLog.AdapterLogEvent.CUSTOM, f34219d, "Invalid Pangle placement ID. Failing ad request. Ensure the ad placement ID is valid on the MoPub dashboard.");
                if (this.f34041b != null) {
                    this.f34041b.onAdLoadFailed(MoPubErrorCode.ADAPTER_CONFIGURATION_ERROR);
                    return;
                }
                return;
            }
            str = extras.get("adm");
            this.g.setCachedInitializationParameters(context, extras);
        }
        TTAdManager pangleSdkManager = PangleAdapterConfiguration.getPangleSdkManager();
        if (pangleSdkManager == null) {
            MoPubLog.log(getAdNetworkId(), MoPubLog.AdapterLogEvent.LOAD_FAILED, f34219d, Integer.valueOf(MoPubErrorCode.NETWORK_INVALID_STATE.getIntCode()), MoPubErrorCode.NETWORK_INVALID_STATE);
            if (this.f34041b != null) {
                this.f34041b.onAdLoadFailed(MoPubErrorCode.NETWORK_INVALID_STATE);
                return;
            }
            return;
        }
        AdSlot.Builder supportDeepLink = new AdSlot.Builder().setCodeId(this.e).withBid(str).setSupportDeepLink(true);
        MoPubLog.log(getAdNetworkId(), MoPubLog.AdapterLogEvent.LOAD_ATTEMPTED, f34219d);
        supportDeepLink.setImageAcceptedSize(1080, Constants.BIG_SIZE_SCREEN);
        PangleAdInterstitialFullVideoLoader pangleAdInterstitialFullVideoLoader = new PangleAdInterstitialFullVideoLoader(this.f);
        this.h = pangleAdInterstitialFullVideoLoader;
        pangleAdInterstitialFullVideoLoader.a(supportDeepLink.build(), pangleSdkManager.createAdNative(context.getApplicationContext()));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.mopub.mobileads.BaseAd
    public void onInvalidate() {
        PangleAdInterstitialFullVideoLoader pangleAdInterstitialFullVideoLoader = this.h;
        if (pangleAdInterstitialFullVideoLoader != null) {
            pangleAdInterstitialFullVideoLoader.destroy();
        }
    }

    @Override // com.mopub.mobileads.BaseAd
    public boolean shouldReportImpressionAndClick() {
        return true;
    }
}
