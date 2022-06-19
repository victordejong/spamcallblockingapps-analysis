package com.mopub.mobileads;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.TTAdDislike;
import com.bytedance.sdk.openadsdk.TTAdManager;
import com.bytedance.sdk.openadsdk.TTAdNative;
import com.bytedance.sdk.openadsdk.TTNativeExpressAd;
import com.mopub.common.Preconditions;
import com.mopub.common.logging.MoPubLog;
import java.util.List;
import java.util.Map;
/* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/PangleAdBanner.class */
public class PangleAdBanner extends BaseAd {

    /* renamed from: d */
    private static final String f59397d = "PangleAdBanner";

    /* renamed from: e */
    private static String f59398e;

    /* renamed from: f */
    private PangleAdapterConfiguration f59399f = new PangleAdapterConfiguration();

    /* renamed from: g */
    private Context f59400g;

    /* renamed from: h */
    private PangleAdBannerExpressLoader f59401h;

    /* renamed from: i */
    private int f59402i;

    /* renamed from: j */
    private int f59403j;

    /* renamed from: k */
    private View f59404k;

    /* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/PangleAdBanner$PangleAdBannerExpressLoader.class */
    public class PangleAdBannerExpressLoader {

        /* renamed from: b */
        private TTNativeExpressAd f59406b;

        /* renamed from: c */
        private Context f59407c;

        /* renamed from: d */
        private TTAdNative.NativeExpressAdListener f59408d = new TTAdNative.NativeExpressAdListener() { // from class: com.mopub.mobileads.PangleAdBanner.PangleAdBannerExpressLoader.1
            @Override // com.bytedance.sdk.openadsdk.TTAdNative.NativeExpressAdListener, com.bytedance.sdk.openadsdk.p144a.AbstractC4269b
            public final void onError(int i, String str) {
                String adNetworkId = PangleAdBanner.this.getAdNetworkId();
                MoPubLog.AdapterLogEvent adapterLogEvent = MoPubLog.AdapterLogEvent.LOAD_FAILED;
                String str2 = PangleAdBanner.f59397d;
                MoPubLog.log(adNetworkId, adapterLogEvent, str2, "onAdLoadFailed() error code: " + i + ", " + str);
                if (PangleAdBanner.this.f59119b != null) {
                    PangleAdBanner.this.f59119b.onAdLoadFailed(PangleAdapterConfiguration.mapErrorCode(i));
                }
            }

            @Override // com.bytedance.sdk.openadsdk.TTAdNative.NativeExpressAdListener
            public final void onNativeExpressAdLoad(List<TTNativeExpressAd> list) {
                if (list == null || list.size() == 0) {
                    MoPubLog.log(PangleAdBanner.this.getAdNetworkId(), MoPubLog.AdapterLogEvent.LOAD_FAILED, PangleAdBanner.f59397d, Integer.valueOf(MoPubErrorCode.NETWORK_NO_FILL.getIntCode()), MoPubErrorCode.NETWORK_NO_FILL);
                    if (PangleAdBanner.this.f59119b == null) {
                        return;
                    }
                    PangleAdBanner.this.f59119b.onAdLoadFailed(MoPubErrorCode.NO_FILL);
                    return;
                }
                MoPubLog.log(PangleAdBanner.this.getAdNetworkId(), MoPubLog.AdapterLogEvent.LOAD_SUCCESS, PangleAdBanner.f59397d);
                PangleAdBannerExpressLoader.this.f59406b = list.get(0);
                PangleAdBannerExpressLoader.this.f59406b.setExpressInteractionListener(PangleAdBannerExpressLoader.this.f59409e);
                PangleAdBannerExpressLoader pangleAdBannerExpressLoader = PangleAdBannerExpressLoader.this;
                PangleAdBannerExpressLoader.m6436b(pangleAdBannerExpressLoader, pangleAdBannerExpressLoader.f59406b);
                PangleAdBannerExpressLoader.this.f59406b.render();
            }
        };

        /* renamed from: e */
        private TTNativeExpressAd.ExpressAdInteractionListener f59409e = new TTNativeExpressAd.ExpressAdInteractionListener() { // from class: com.mopub.mobileads.PangleAdBanner.PangleAdBannerExpressLoader.3
            @Override // com.bytedance.sdk.openadsdk.TTNativeExpressAd.ExpressAdInteractionListener
            public final void onAdClicked(View view, int i) {
                MoPubLog.log(PangleAdBanner.this.getAdNetworkId(), MoPubLog.AdapterLogEvent.CLICKED, PangleAdBanner.f59397d);
                if (PangleAdBanner.this.f59120c != null) {
                    PangleAdBanner.this.f59120c.onAdClicked();
                }
            }

            @Override // com.bytedance.sdk.openadsdk.TTNativeExpressAd.ExpressAdInteractionListener
            public final void onAdShow(View view, int i) {
                MoPubLog.log(PangleAdBanner.this.getAdNetworkId(), MoPubLog.AdapterLogEvent.SHOW_SUCCESS, PangleAdBanner.f59397d);
                if (PangleAdBanner.this.f59120c != null) {
                    PangleAdBanner.this.f59120c.onAdShown();
                    PangleAdBanner.this.f59120c.onAdImpression();
                }
            }

            @Override // com.bytedance.sdk.openadsdk.TTNativeExpressAd.ExpressAdInteractionListener
            public final void onRenderFail(View view, String str, int i) {
                MoPubLog.log(PangleAdBanner.this.getAdNetworkId(), MoPubLog.AdapterLogEvent.LOAD_FAILED, PangleAdBanner.f59397d);
                String adNetworkId = PangleAdBanner.this.getAdNetworkId();
                MoPubLog.AdapterLogEvent adapterLogEvent = MoPubLog.AdapterLogEvent.CUSTOM;
                String str2 = PangleAdBanner.f59397d;
                MoPubLog.log(adNetworkId, adapterLogEvent, str2, "Pangle banner ad failed to render with message: " + str + ", and code: " + i);
                if (PangleAdBanner.this.f59119b != null) {
                    PangleAdBanner.this.f59119b.onAdLoadFailed(MoPubErrorCode.INLINE_LOAD_ERROR);
                }
            }

            @Override // com.bytedance.sdk.openadsdk.TTNativeExpressAd.ExpressAdInteractionListener
            public final void onRenderSuccess(View view, float f, float f2) {
                PangleAdBanner.this.f59404k = view;
                MoPubLog.log(PangleAdBanner.this.getAdNetworkId(), MoPubLog.AdapterLogEvent.LOAD_SUCCESS, PangleAdBanner.f59397d);
                MoPubLog.log(PangleAdBanner.this.getAdNetworkId(), MoPubLog.AdapterLogEvent.SHOW_ATTEMPTED, PangleAdBanner.f59397d);
                if (PangleAdBanner.this.f59119b != null) {
                    PangleAdBanner.this.f59119b.onAdLoaded();
                }
            }
        };

        PangleAdBannerExpressLoader(Context context) {
            PangleAdBanner.this = r6;
            this.f59407c = context;
        }

        /* renamed from: b */
        static /* synthetic */ void m6436b(PangleAdBannerExpressLoader pangleAdBannerExpressLoader, TTNativeExpressAd tTNativeExpressAd) {
            Context context = pangleAdBannerExpressLoader.f59407c;
            if (context instanceof Activity) {
                tTNativeExpressAd.setDislikeCallback((Activity) context, new TTAdDislike.DislikeInteractionCallback() { // from class: com.mopub.mobileads.PangleAdBanner.PangleAdBannerExpressLoader.2
                    @Override // com.bytedance.sdk.openadsdk.TTAdDislike.DislikeInteractionCallback
                    public final void onCancel() {
                        MoPubLog.log(PangleAdBanner.this.getAdNetworkId(), MoPubLog.AdapterLogEvent.CUSTOM, PangleAdBanner.f59397d, "Pangle DislikeInteractionCallback onCancel()");
                    }

                    @Override // com.bytedance.sdk.openadsdk.TTAdDislike.DislikeInteractionCallback
                    public final void onRefuse() {
                        MoPubLog.log(PangleAdBanner.this.getAdNetworkId(), MoPubLog.AdapterLogEvent.CUSTOM, PangleAdBanner.f59397d, "Pangle DislikeInteractionCallback onRefuse()");
                    }

                    @Override // com.bytedance.sdk.openadsdk.TTAdDislike.DislikeInteractionCallback
                    public final void onSelected(int i, String str) {
                        MoPubLog.log(PangleAdBanner.this.getAdNetworkId(), MoPubLog.AdapterLogEvent.CUSTOM, PangleAdBanner.f59397d, "Pangle DislikeInteractionCallback onSelected(): ".concat(String.valueOf(str)));
                    }
                });
            }
        }

        public void destroy() {
            TTNativeExpressAd tTNativeExpressAd = this.f59406b;
            if (tTNativeExpressAd != null) {
                tTNativeExpressAd.destroy();
                this.f59406b = null;
            }
            this.f59409e = null;
            this.f59408d = null;
            PangleAdBanner.this.f59404k = null;
        }

        public void loadAdExpressBanner(AdSlot adSlot, TTAdNative tTAdNative) {
            if (this.f59407c != null && adSlot != null && tTAdNative != null && !TextUtils.isEmpty(adSlot.getCodeId())) {
                tTAdNative.loadBannerExpressAd(adSlot, this.f59408d);
            } else if (PangleAdBanner.this.f59119b == null) {
            } else {
                PangleAdBanner.this.f59119b.onAdLoadFailed(MoPubErrorCode.ADAPTER_CONFIGURATION_ERROR);
            }
        }
    }

    public static int[] getAdSize(AdData adData) {
        int[] iArr = {0, 0};
        if (adData == null) {
            return new int[]{600, 500};
        }
        iArr[0] = adData.getAdWidth().intValue();
        iArr[1] = adData.getAdHeight().intValue();
        float f = iArr[0] / iArr[1];
        if (f != 1.2f && f != 6.4f) {
            float f2 = iArr[0] / 600.0f;
            float f3 = f2 <= 0.75f ? 0.5f : f2 <= 1.25f ? 1.0f : f2 <= 1.75f ? 1.5f : 2.0f;
            if (f < 1.2f) {
                iArr[0] = (int) (600.0f * f3);
                iArr[1] = (int) (f3 * 500.0f);
            } else {
                float f4 = iArr[0] / 640.0f;
                float f5 = f4 < 0.75f ? 0.5f : f4 < 1.25f ? 1.0f : f4 < 1.75f ? 1.5f : 2.0f;
                iArr[0] = (int) (640.0f * f5);
                iArr[1] = (int) (f5 * 100.0f);
            }
            if (iArr[0] <= 0) {
                iArr[0] = 600;
                iArr[1] = 0;
            }
            if (iArr[1] < 0) {
                iArr[1] = 0;
            }
        }
        return iArr;
    }

    @Override // com.mopub.mobileads.BaseAd
    public String getAdNetworkId() {
        String str = f59398e;
        String str2 = str;
        if (str == null) {
            str2 = "";
        }
        return str2;
    }

    @Override // com.mopub.mobileads.BaseAd
    public View getAdView() {
        return this.f59404k;
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
        this.f59118a = false;
        this.f59400g = context;
        Map<String, String> extras = adData.getExtras();
        this.f59399f.initializeNetwork(context, extras);
        if (extras == null || extras.isEmpty()) {
            str = null;
        } else {
            String str2 = extras.get(PangleAdapterConfiguration.AD_PLACEMENT_ID_EXTRA_KEY);
            f59398e = str2;
            if (TextUtils.isEmpty(str2)) {
                MoPubLog.log(getAdNetworkId(), MoPubLog.AdapterLogEvent.CUSTOM, f59397d, "Invalid Pangle placement ID. Failing ad request. Ensure the ad placement ID is valid on the MoPub dashboard.");
                if (this.f59119b == null) {
                    return;
                }
                this.f59119b.onAdLoadFailed(MoPubErrorCode.ADAPTER_CONFIGURATION_ERROR);
                return;
            }
            String str3 = extras.get("adm");
            this.f59399f.setCachedInitializationParameters(context, extras);
            str = str3;
        }
        TTAdManager pangleSdkManager = PangleAdapterConfiguration.getPangleSdkManager();
        if (pangleSdkManager == null) {
            MoPubLog.log(getAdNetworkId(), MoPubLog.AdapterLogEvent.LOAD_FAILED, f59397d, Integer.valueOf(MoPubErrorCode.NETWORK_INVALID_STATE.getIntCode()), MoPubErrorCode.NETWORK_INVALID_STATE);
            if (this.f59119b == null) {
                return;
            }
            this.f59119b.onAdLoadFailed(MoPubErrorCode.NETWORK_INVALID_STATE);
            return;
        }
        int[] adSize = getAdSize(adData);
        this.f59402i = adSize[0];
        this.f59403j = adSize[1];
        String adNetworkId = getAdNetworkId();
        MoPubLog.AdapterLogEvent adapterLogEvent = MoPubLog.AdapterLogEvent.CUSTOM;
        String str4 = f59397d;
        MoPubLog.log(adNetworkId, adapterLogEvent, str4, "BannerWidth = " + this.f59402i + ", BannerHeight = " + this.f59403j);
        AdSlot.Builder withBid = new AdSlot.Builder().setCodeId(f59398e).setSupportDeepLink(true).isExpressAd(true).setExpressViewAcceptedSize((float) this.f59402i, (float) this.f59403j).withBid(str);
        PangleAdBannerExpressLoader pangleAdBannerExpressLoader = new PangleAdBannerExpressLoader(this.f59400g);
        this.f59401h = pangleAdBannerExpressLoader;
        pangleAdBannerExpressLoader.loadAdExpressBanner(withBid.build(), pangleSdkManager.createAdNative(this.f59400g));
        MoPubLog.log(getAdNetworkId(), MoPubLog.AdapterLogEvent.LOAD_ATTEMPTED, str4);
    }

    @Override // com.mopub.mobileads.BaseAd
    public void onInvalidate() {
        PangleAdBannerExpressLoader pangleAdBannerExpressLoader = this.f59401h;
        if (pangleAdBannerExpressLoader != null) {
            pangleAdBannerExpressLoader.destroy();
            this.f59401h = null;
        }
    }

    @Override // com.mopub.mobileads.BaseAd
    public boolean shouldReportImpressionAndClick() {
        return true;
    }
}
