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

    /* renamed from: d */
    private static final String f59413d = "PangleAdInterstitial";

    /* renamed from: e */
    private String f59414e;

    /* renamed from: f */
    private Context f59415f;

    /* renamed from: g */
    private PangleAdapterConfiguration f59416g = new PangleAdapterConfiguration();

    /* renamed from: h */
    private PangleAdInterstitialFullVideoLoader f59417h;

    /* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/PangleAdInterstitial$PangleAdInterstitialFullVideoLoader.class */
    public class PangleAdInterstitialFullVideoLoader {

        /* renamed from: b */
        private Context f59419b;

        /* renamed from: c */
        private boolean f59420c;

        /* renamed from: d */
        private TTFullScreenVideoAd f59421d;

        /* renamed from: e */
        private TTAdNative.FullScreenVideoAdListener f59422e = new TTAdNative.FullScreenVideoAdListener() { // from class: com.mopub.mobileads.PangleAdInterstitial.PangleAdInterstitialFullVideoLoader.1
            @Override // com.bytedance.sdk.openadsdk.TTAdNative.FullScreenVideoAdListener, com.bytedance.sdk.openadsdk.p144a.AbstractC4269b
            public final void onError(int i, String str) {
                String adNetworkId = PangleAdInterstitial.this.getAdNetworkId();
                MoPubLog.AdapterLogEvent adapterLogEvent = MoPubLog.AdapterLogEvent.LOAD_FAILED;
                String str2 = PangleAdInterstitial.f59413d;
                MoPubLog.log(adNetworkId, adapterLogEvent, str2, "Loading Full Video creative encountered an error: " + PangleAdapterConfiguration.mapErrorCode(i).toString() + ", error message:" + str);
                if (PangleAdInterstitial.this.f59119b != null) {
                    PangleAdInterstitial.this.f59119b.onAdLoadFailed(PangleAdapterConfiguration.mapErrorCode(i));
                }
            }

            @Override // com.bytedance.sdk.openadsdk.TTAdNative.FullScreenVideoAdListener
            public final void onFullScreenVideoAdLoad(TTFullScreenVideoAd tTFullScreenVideoAd) {
                if (tTFullScreenVideoAd == null) {
                    MoPubLog.log(PangleAdInterstitial.this.getAdNetworkId(), MoPubLog.AdapterLogEvent.LOAD_FAILED, PangleAdInterstitial.f59413d);
                    if (PangleAdInterstitial.this.f59119b == null) {
                        return;
                    }
                    PangleAdInterstitial.this.f59119b.onAdLoadFailed(MoPubErrorCode.NO_FILL);
                    return;
                }
                PangleAdInterstitialFullVideoLoader.this.f59420c = true;
                PangleAdInterstitialFullVideoLoader.this.f59421d = tTFullScreenVideoAd;
                PangleAdInterstitialFullVideoLoader.this.f59421d.setFullScreenVideoAdInteractionListener(PangleAdInterstitialFullVideoLoader.this.f59423f);
                MoPubLog.log(PangleAdInterstitial.this.getAdNetworkId(), MoPubLog.AdapterLogEvent.LOAD_SUCCESS, PangleAdInterstitial.f59413d);
                if (PangleAdInterstitial.this.f59119b == null) {
                    return;
                }
                PangleAdInterstitial.this.f59119b.onAdLoaded();
            }

            @Override // com.bytedance.sdk.openadsdk.TTAdNative.FullScreenVideoAdListener
            public final void onFullScreenVideoCached() {
                MoPubLog.log(PangleAdInterstitial.this.getAdNetworkId(), MoPubLog.AdapterLogEvent.CUSTOM, PangleAdInterstitial.f59413d, "onFullScreenVideoCached: The full screen video is cached.");
            }
        };

        /* renamed from: f */
        private TTFullScreenVideoAd.FullScreenVideoAdInteractionListener f59423f = new TTFullScreenVideoAd.FullScreenVideoAdInteractionListener() { // from class: com.mopub.mobileads.PangleAdInterstitial.PangleAdInterstitialFullVideoLoader.2
            @Override // com.bytedance.sdk.openadsdk.TTFullScreenVideoAd.FullScreenVideoAdInteractionListener
            public final void onAdClose() {
                MoPubLog.log(PangleAdInterstitial.this.getAdNetworkId(), MoPubLog.AdLogEvent.DID_DISAPPEAR, PangleAdInterstitial.f59413d);
                if (PangleAdInterstitial.this.f59120c != null) {
                    PangleAdInterstitial.this.f59120c.onAdDismissed();
                }
            }

            @Override // com.bytedance.sdk.openadsdk.TTFullScreenVideoAd.FullScreenVideoAdInteractionListener
            public final void onAdShow() {
                MoPubLog.log(PangleAdInterstitial.this.getAdNetworkId(), MoPubLog.AdapterLogEvent.SHOW_SUCCESS, PangleAdInterstitial.f59413d);
                if (PangleAdInterstitial.this.f59120c != null) {
                    PangleAdInterstitial.this.f59120c.onAdShown();
                    PangleAdInterstitial.this.f59120c.onAdImpression();
                }
            }

            @Override // com.bytedance.sdk.openadsdk.TTFullScreenVideoAd.FullScreenVideoAdInteractionListener
            public final void onAdVideoBarClick() {
                MoPubLog.log(PangleAdInterstitial.this.getAdNetworkId(), MoPubLog.AdapterLogEvent.CLICKED, PangleAdInterstitial.f59413d);
                if (PangleAdInterstitial.this.f59120c != null) {
                    PangleAdInterstitial.this.f59120c.onAdClicked();
                }
            }

            @Override // com.bytedance.sdk.openadsdk.TTFullScreenVideoAd.FullScreenVideoAdInteractionListener
            public final void onSkippedVideo() {
                MoPubLog.log(PangleAdInterstitial.this.getAdNetworkId(), MoPubLog.AdapterLogEvent.CUSTOM, PangleAdInterstitial.f59413d, "Pangle FullScreenVideoAd onSkippedVideo.");
            }

            @Override // com.bytedance.sdk.openadsdk.TTFullScreenVideoAd.FullScreenVideoAdInteractionListener
            public final void onVideoComplete() {
                MoPubLog.log(PangleAdInterstitial.this.getAdNetworkId(), MoPubLog.AdapterLogEvent.CUSTOM, PangleAdInterstitial.f59413d, "Pangle FullScreenVideoAd onVideoComplete.");
            }
        };

        PangleAdInterstitialFullVideoLoader(Context context) {
            PangleAdInterstitial.this = r6;
            this.f59419b = context;
        }

        /* renamed from: a */
        final void m6434a(Activity activity) {
            TTFullScreenVideoAd tTFullScreenVideoAd = this.f59421d;
            if (tTFullScreenVideoAd != null && this.f59420c) {
                tTFullScreenVideoAd.showFullScreenVideoAd(activity);
                return;
            }
            MoPubLog.log(PangleAdInterstitial.this.getAdNetworkId(), MoPubLog.AdapterLogEvent.SHOW_FAILED, PangleAdInterstitial.f59413d);
            if (PangleAdInterstitial.this.f59120c == null) {
                return;
            }
            PangleAdInterstitial.this.f59120c.onAdFailed(MoPubErrorCode.FULLSCREEN_SHOW_ERROR);
        }

        /* renamed from: a */
        final void m6433a(AdSlot adSlot, TTAdNative tTAdNative) {
            if (tTAdNative != null && this.f59419b != null && adSlot != null && !TextUtils.isEmpty(adSlot.getCodeId())) {
                tTAdNative.loadFullScreenVideoAd(adSlot, this.f59422e);
            } else if (PangleAdInterstitial.this.f59119b == null) {
            } else {
                PangleAdInterstitial.this.f59119b.onAdLoadFailed(MoPubErrorCode.ADAPTER_CONFIGURATION_ERROR);
            }
        }

        public void destroy() {
            this.f59419b = null;
            this.f59421d = null;
            this.f59422e = null;
            this.f59423f = null;
        }
    }

    @Override // com.mopub.mobileads.BaseAd
    /* renamed from: a */
    protected final void mo6371a() {
        if (this.f59417h != null && (this.f59415f instanceof Activity)) {
            MoPubLog.log(getAdNetworkId(), MoPubLog.AdapterLogEvent.SHOW_ATTEMPTED, f59413d);
            this.f59417h.m6434a((Activity) this.f59415f);
            return;
        }
        MoPubLog.log(getAdNetworkId(), MoPubLog.AdapterLogEvent.SHOW_FAILED, f59413d);
        if (this.f59120c == null) {
            return;
        }
        this.f59120c.onAdFailed(MoPubErrorCode.FULLSCREEN_SHOW_ERROR);
    }

    @Override // com.mopub.mobileads.BaseAd
    public String getAdNetworkId() {
        String str = this.f59414e;
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
        this.f59415f = context;
        this.f59118a = false;
        Map<String, String> extras = adData.getExtras();
        this.f59416g.initializeNetwork(context, extras);
        if (extras == null || extras.isEmpty()) {
            str = null;
        } else {
            String str2 = extras.get(PangleAdapterConfiguration.AD_PLACEMENT_ID_EXTRA_KEY);
            this.f59414e = str2;
            if (TextUtils.isEmpty(str2)) {
                MoPubLog.log(getAdNetworkId(), MoPubLog.AdapterLogEvent.CUSTOM, f59413d, "Invalid Pangle placement ID. Failing ad request. Ensure the ad placement ID is valid on the MoPub dashboard.");
                if (this.f59119b == null) {
                    return;
                }
                this.f59119b.onAdLoadFailed(MoPubErrorCode.ADAPTER_CONFIGURATION_ERROR);
                return;
            }
            str = extras.get("adm");
            this.f59416g.setCachedInitializationParameters(context, extras);
        }
        TTAdManager pangleSdkManager = PangleAdapterConfiguration.getPangleSdkManager();
        if (pangleSdkManager == null) {
            MoPubLog.log(getAdNetworkId(), MoPubLog.AdapterLogEvent.LOAD_FAILED, f59413d, Integer.valueOf(MoPubErrorCode.NETWORK_INVALID_STATE.getIntCode()), MoPubErrorCode.NETWORK_INVALID_STATE);
            if (this.f59119b == null) {
                return;
            }
            this.f59119b.onAdLoadFailed(MoPubErrorCode.NETWORK_INVALID_STATE);
            return;
        }
        AdSlot.Builder supportDeepLink = new AdSlot.Builder().setCodeId(this.f59414e).withBid(str).setSupportDeepLink(true);
        MoPubLog.log(getAdNetworkId(), MoPubLog.AdapterLogEvent.LOAD_ATTEMPTED, f59413d);
        supportDeepLink.setImageAcceptedSize(1080, Constants.BIG_SIZE_SCREEN);
        PangleAdInterstitialFullVideoLoader pangleAdInterstitialFullVideoLoader = new PangleAdInterstitialFullVideoLoader(this.f59415f);
        this.f59417h = pangleAdInterstitialFullVideoLoader;
        pangleAdInterstitialFullVideoLoader.m6433a(supportDeepLink.build(), pangleSdkManager.createAdNative(context.getApplicationContext()));
    }

    @Override // com.mopub.mobileads.BaseAd
    public void onInvalidate() {
        PangleAdInterstitialFullVideoLoader pangleAdInterstitialFullVideoLoader = this.f59417h;
        if (pangleAdInterstitialFullVideoLoader != null) {
            pangleAdInterstitialFullVideoLoader.destroy();
        }
    }

    @Override // com.mopub.mobileads.BaseAd
    public boolean shouldReportImpressionAndClick() {
        return true;
    }
}
