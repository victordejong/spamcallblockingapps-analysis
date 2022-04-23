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

    /* renamed from: d  reason: collision with root package name */
    private static final String f34211d = "PangleAdBanner";
    private static String e;
    private PangleAdapterConfiguration f = new PangleAdapterConfiguration();
    private Context g;
    private PangleAdBannerExpressLoader h;
    private int i;
    private int j;
    private View k;

    /* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/PangleAdBanner$PangleAdBannerExpressLoader.class */
    public class PangleAdBannerExpressLoader {

        /* renamed from: b  reason: collision with root package name */
        private TTNativeExpressAd f34213b;

        /* renamed from: c  reason: collision with root package name */
        private Context f34214c;

        /* renamed from: d  reason: collision with root package name */
        private TTAdNative.NativeExpressAdListener f34215d = new TTAdNative.NativeExpressAdListener() { // from class: com.mopub.mobileads.PangleAdBanner.PangleAdBannerExpressLoader.1
            @Override // com.bytedance.sdk.openadsdk.TTAdNative.NativeExpressAdListener, com.bytedance.sdk.openadsdk.a.b
            public final void onError(int i, String str) {
                String adNetworkId = PangleAdBanner.this.getAdNetworkId();
                MoPubLog.AdapterLogEvent adapterLogEvent = MoPubLog.AdapterLogEvent.LOAD_FAILED;
                String str2 = PangleAdBanner.f34211d;
                MoPubLog.log(adNetworkId, adapterLogEvent, str2, "onAdLoadFailed() error code: " + i + ", " + str);
                if (PangleAdBanner.this.f34041b != null) {
                    PangleAdBanner.this.f34041b.onAdLoadFailed(PangleAdapterConfiguration.mapErrorCode(i));
                }
            }

            @Override // com.bytedance.sdk.openadsdk.TTAdNative.NativeExpressAdListener
            public final void onNativeExpressAdLoad(List<TTNativeExpressAd> list) {
                if (list == null || list.size() == 0) {
                    MoPubLog.log(PangleAdBanner.this.getAdNetworkId(), MoPubLog.AdapterLogEvent.LOAD_FAILED, PangleAdBanner.f34211d, Integer.valueOf(MoPubErrorCode.NETWORK_NO_FILL.getIntCode()), MoPubErrorCode.NETWORK_NO_FILL);
                    if (PangleAdBanner.this.f34041b != null) {
                        PangleAdBanner.this.f34041b.onAdLoadFailed(MoPubErrorCode.NO_FILL);
                        return;
                    }
                    return;
                }
                MoPubLog.log(PangleAdBanner.this.getAdNetworkId(), MoPubLog.AdapterLogEvent.LOAD_SUCCESS, PangleAdBanner.f34211d);
                PangleAdBannerExpressLoader.this.f34213b = list.get(0);
                PangleAdBannerExpressLoader.this.f34213b.setExpressInteractionListener(PangleAdBannerExpressLoader.this.e);
                PangleAdBannerExpressLoader pangleAdBannerExpressLoader = PangleAdBannerExpressLoader.this;
                PangleAdBannerExpressLoader.b(pangleAdBannerExpressLoader, pangleAdBannerExpressLoader.f34213b);
                PangleAdBannerExpressLoader.this.f34213b.render();
            }
        };
        private TTNativeExpressAd.ExpressAdInteractionListener e = new TTNativeExpressAd.ExpressAdInteractionListener() { // from class: com.mopub.mobileads.PangleAdBanner.PangleAdBannerExpressLoader.3
            @Override // com.bytedance.sdk.openadsdk.TTNativeExpressAd.ExpressAdInteractionListener
            public final void onAdClicked(View view, int i) {
                MoPubLog.log(PangleAdBanner.this.getAdNetworkId(), MoPubLog.AdapterLogEvent.CLICKED, PangleAdBanner.f34211d);
                if (PangleAdBanner.this.f34042c != null) {
                    PangleAdBanner.this.f34042c.onAdClicked();
                }
            }

            @Override // com.bytedance.sdk.openadsdk.TTNativeExpressAd.ExpressAdInteractionListener
            public final void onAdShow(View view, int i) {
                MoPubLog.log(PangleAdBanner.this.getAdNetworkId(), MoPubLog.AdapterLogEvent.SHOW_SUCCESS, PangleAdBanner.f34211d);
                if (PangleAdBanner.this.f34042c != null) {
                    PangleAdBanner.this.f34042c.onAdShown();
                    PangleAdBanner.this.f34042c.onAdImpression();
                }
            }

            @Override // com.bytedance.sdk.openadsdk.TTNativeExpressAd.ExpressAdInteractionListener
            public final void onRenderFail(View view, String str, int i) {
                MoPubLog.log(PangleAdBanner.this.getAdNetworkId(), MoPubLog.AdapterLogEvent.LOAD_FAILED, PangleAdBanner.f34211d);
                String adNetworkId = PangleAdBanner.this.getAdNetworkId();
                MoPubLog.AdapterLogEvent adapterLogEvent = MoPubLog.AdapterLogEvent.CUSTOM;
                String str2 = PangleAdBanner.f34211d;
                MoPubLog.log(adNetworkId, adapterLogEvent, str2, "Pangle banner ad failed to render with message: " + str + ", and code: " + i);
                if (PangleAdBanner.this.f34041b != null) {
                    PangleAdBanner.this.f34041b.onAdLoadFailed(MoPubErrorCode.INLINE_LOAD_ERROR);
                }
            }

            @Override // com.bytedance.sdk.openadsdk.TTNativeExpressAd.ExpressAdInteractionListener
            public final void onRenderSuccess(View view, float f, float f2) {
                PangleAdBanner.this.k = view;
                MoPubLog.log(PangleAdBanner.this.getAdNetworkId(), MoPubLog.AdapterLogEvent.LOAD_SUCCESS, PangleAdBanner.f34211d);
                MoPubLog.log(PangleAdBanner.this.getAdNetworkId(), MoPubLog.AdapterLogEvent.SHOW_ATTEMPTED, PangleAdBanner.f34211d);
                if (PangleAdBanner.this.f34041b != null) {
                    PangleAdBanner.this.f34041b.onAdLoaded();
                }
            }
        };

        PangleAdBannerExpressLoader(Context context) {
            this.f34214c = context;
        }

        static /* synthetic */ void b(PangleAdBannerExpressLoader pangleAdBannerExpressLoader, TTNativeExpressAd tTNativeExpressAd) {
            Context context = pangleAdBannerExpressLoader.f34214c;
            if (context instanceof Activity) {
                tTNativeExpressAd.setDislikeCallback((Activity) context, new TTAdDislike.DislikeInteractionCallback() { // from class: com.mopub.mobileads.PangleAdBanner.PangleAdBannerExpressLoader.2
                    @Override // com.bytedance.sdk.openadsdk.TTAdDislike.DislikeInteractionCallback
                    public final void onCancel() {
                        MoPubLog.log(PangleAdBanner.this.getAdNetworkId(), MoPubLog.AdapterLogEvent.CUSTOM, PangleAdBanner.f34211d, "Pangle DislikeInteractionCallback onCancel()");
                    }

                    @Override // com.bytedance.sdk.openadsdk.TTAdDislike.DislikeInteractionCallback
                    public final void onRefuse() {
                        MoPubLog.log(PangleAdBanner.this.getAdNetworkId(), MoPubLog.AdapterLogEvent.CUSTOM, PangleAdBanner.f34211d, "Pangle DislikeInteractionCallback onRefuse()");
                    }

                    @Override // com.bytedance.sdk.openadsdk.TTAdDislike.DislikeInteractionCallback
                    public final void onSelected(int i, String str) {
                        MoPubLog.log(PangleAdBanner.this.getAdNetworkId(), MoPubLog.AdapterLogEvent.CUSTOM, PangleAdBanner.f34211d, "Pangle DislikeInteractionCallback onSelected(): ".concat(String.valueOf(str)));
                    }
                });
            }
        }

        public void destroy() {
            TTNativeExpressAd tTNativeExpressAd = this.f34213b;
            if (tTNativeExpressAd != null) {
                tTNativeExpressAd.destroy();
                this.f34213b = null;
            }
            this.e = null;
            this.f34215d = null;
            PangleAdBanner.this.k = null;
        }

        public void loadAdExpressBanner(AdSlot adSlot, TTAdNative tTAdNative) {
            if (this.f34214c != null && adSlot != null && tTAdNative != null && !TextUtils.isEmpty(adSlot.getCodeId())) {
                tTAdNative.loadBannerExpressAd(adSlot, this.f34215d);
            } else if (PangleAdBanner.this.f34041b != null) {
                PangleAdBanner.this.f34041b.onAdLoadFailed(MoPubErrorCode.ADAPTER_CONFIGURATION_ERROR);
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
        if (!(f == 1.2f || f == 6.4f)) {
            float f2 = iArr[0] / 600.0f;
            float f3 = 1.5f;
            float f4 = f2 <= 0.75f ? 0.5f : f2 <= 1.25f ? 1.0f : f2 <= 1.75f ? 1.5f : 2.0f;
            if (f < 1.2f) {
                iArr[0] = (int) (600.0f * f4);
                iArr[1] = (int) (f4 * 500.0f);
            } else {
                float f5 = iArr[0] / 640.0f;
                if (f5 < 0.75f) {
                    f3 = 0.5f;
                } else if (f5 < 1.25f) {
                    f3 = 1.0f;
                } else if (f5 >= 1.75f) {
                    f3 = 2.0f;
                }
                iArr[0] = (int) (640.0f * f3);
                iArr[1] = (int) (f3 * 100.0f);
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
        String str = e;
        String str2 = str;
        if (str == null) {
            str2 = "";
        }
        return str2;
    }

    @Override // com.mopub.mobileads.BaseAd
    public View getAdView() {
        return this.k;
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
        this.f34040a = false;
        this.g = context;
        Map<String, String> extras = adData.getExtras();
        this.f.initializeNetwork(context, extras);
        if (extras == null || extras.isEmpty()) {
            str = null;
        } else {
            String str2 = extras.get(PangleAdapterConfiguration.AD_PLACEMENT_ID_EXTRA_KEY);
            e = str2;
            if (TextUtils.isEmpty(str2)) {
                MoPubLog.log(getAdNetworkId(), MoPubLog.AdapterLogEvent.CUSTOM, f34211d, "Invalid Pangle placement ID. Failing ad request. Ensure the ad placement ID is valid on the MoPub dashboard.");
                if (this.f34041b != null) {
                    this.f34041b.onAdLoadFailed(MoPubErrorCode.ADAPTER_CONFIGURATION_ERROR);
                    return;
                }
                return;
            }
            str = extras.get("adm");
            this.f.setCachedInitializationParameters(context, extras);
        }
        TTAdManager pangleSdkManager = PangleAdapterConfiguration.getPangleSdkManager();
        if (pangleSdkManager == null) {
            MoPubLog.log(getAdNetworkId(), MoPubLog.AdapterLogEvent.LOAD_FAILED, f34211d, Integer.valueOf(MoPubErrorCode.NETWORK_INVALID_STATE.getIntCode()), MoPubErrorCode.NETWORK_INVALID_STATE);
            if (this.f34041b != null) {
                this.f34041b.onAdLoadFailed(MoPubErrorCode.NETWORK_INVALID_STATE);
                return;
            }
            return;
        }
        int[] adSize = getAdSize(adData);
        this.i = adSize[0];
        this.j = adSize[1];
        String adNetworkId = getAdNetworkId();
        MoPubLog.AdapterLogEvent adapterLogEvent = MoPubLog.AdapterLogEvent.CUSTOM;
        String str3 = f34211d;
        MoPubLog.log(adNetworkId, adapterLogEvent, str3, "BannerWidth = " + this.i + ", BannerHeight = " + this.j);
        AdSlot.Builder withBid = new AdSlot.Builder().setCodeId(e).setSupportDeepLink(true).isExpressAd(true).setExpressViewAcceptedSize((float) this.i, (float) this.j).withBid(str);
        PangleAdBannerExpressLoader pangleAdBannerExpressLoader = new PangleAdBannerExpressLoader(this.g);
        this.h = pangleAdBannerExpressLoader;
        pangleAdBannerExpressLoader.loadAdExpressBanner(withBid.build(), pangleSdkManager.createAdNative(this.g));
        MoPubLog.log(getAdNetworkId(), MoPubLog.AdapterLogEvent.LOAD_ATTEMPTED, str3);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.mopub.mobileads.BaseAd
    public void onInvalidate() {
        PangleAdBannerExpressLoader pangleAdBannerExpressLoader = this.h;
        if (pangleAdBannerExpressLoader != null) {
            pangleAdBannerExpressLoader.destroy();
            this.h = null;
        }
    }

    @Override // com.mopub.mobileads.BaseAd
    public boolean shouldReportImpressionAndClick() {
        return true;
    }
}
