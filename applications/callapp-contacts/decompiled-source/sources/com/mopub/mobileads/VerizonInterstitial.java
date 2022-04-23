package com.mopub.mobileads;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.text.TextUtils;
import com.callapp.contacts.manager.CallAppAdsAnalyticsManager;
import com.callapp.contacts.util.ads.AdUtils;
import com.callapp.contacts.util.ads.BidObjectCache;
import com.callapp.framework.util.StringUtils;
import com.mopub.common.MoPub;
import com.mopub.common.Preconditions;
import com.mopub.common.logging.MoPubLog;
import com.verizon.ads.ActivityStateManager;
import com.verizon.ads.Bid;
import com.verizon.ads.ErrorInfo;
import com.verizon.ads.RequestMetadata;
import com.verizon.ads.VASAds;
import com.verizon.ads.edition.StandardEdition;
import com.verizon.ads.interstitialplacement.InterstitialAd;
import com.verizon.ads.interstitialplacement.InterstitialAdFactory;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/VerizonInterstitial.class */
public class VerizonInterstitial extends BaseAd {

    /* renamed from: d  reason: collision with root package name */
    private static final String f34340d = "VerizonInterstitial";
    private static String g;
    private Context e;
    private InterstitialAd f;
    private String i;
    private double h = 0.0d;
    private final VerizonAdapterConfiguration j = new VerizonAdapterConfiguration();

    /* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/VerizonInterstitial$a.class */
    final class a implements InterstitialAdFactory.InterstitialAdFactoryListener {
        private a() {
        }

        @Override // com.verizon.ads.interstitialplacement.InterstitialAdFactory.InterstitialAdFactoryListener
        public final void onError(InterstitialAdFactory interstitialAdFactory, final ErrorInfo errorInfo) {
            String adNetworkId = VerizonInterstitial.this.getAdNetworkId();
            MoPubLog.AdapterLogEvent adapterLogEvent = MoPubLog.AdapterLogEvent.CUSTOM;
            String str = VerizonInterstitial.f34340d;
            MoPubLog.log(adNetworkId, adapterLogEvent, str, "Failed to load Verizon interstitial due to error: " + errorInfo.toString());
            VerizonUtils.postOnUiThread(new Runnable() { // from class: com.mopub.mobileads.VerizonInterstitial.a.2
                @Override // java.lang.Runnable
                public final void run() {
                    VerizonInterstitial.this.a(MoPubLog.AdapterLogEvent.LOAD_FAILED, VerizonUtils.convertErrorInfoToMoPub(errorInfo), true);
                }
            });
        }

        @Override // com.verizon.ads.interstitialplacement.InterstitialAdFactory.InterstitialAdFactoryListener
        public final void onLoaded(InterstitialAdFactory interstitialAdFactory, InterstitialAd interstitialAd) {
            VerizonInterstitial.this.f = interstitialAd;
            MoPubLog.log(VerizonInterstitial.this.getAdNetworkId(), MoPubLog.AdapterLogEvent.LOAD_SUCCESS, VerizonInterstitial.f34340d);
            VerizonUtils.postOnUiThread(new Runnable() { // from class: com.mopub.mobileads.VerizonInterstitial.a.1
                @Override // java.lang.Runnable
                public final void run() {
                    MoPubLog.log(VerizonInterstitial.this.getAdNetworkId(), MoPubLog.AdapterLogEvent.CUSTOM, VerizonInterstitial.f34340d, "Verizon creative info: ".concat(String.valueOf(VerizonInterstitial.this.f == null ? null : VerizonInterstitial.this.f.getCreativeInfo())));
                    if (VerizonInterstitial.this.f34041b != null) {
                        VerizonInterstitial.this.f34041b.onAdLoaded();
                    }
                }
            });
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/VerizonInterstitial$b.class */
    final class b implements InterstitialAd.InterstitialAdListener {
        private b() {
        }

        @Override // com.verizon.ads.interstitialplacement.InterstitialAd.InterstitialAdListener
        public final void onAdLeftApplication(InterstitialAd interstitialAd) {
            MoPubLog.log(VerizonInterstitial.this.getAdNetworkId(), MoPubLog.AdapterLogEvent.WILL_LEAVE_APPLICATION, VerizonInterstitial.f34340d);
        }

        @Override // com.verizon.ads.interstitialplacement.InterstitialAd.InterstitialAdListener
        public final void onClicked(InterstitialAd interstitialAd) {
            MoPubLog.log(VerizonInterstitial.this.getAdNetworkId(), MoPubLog.AdapterLogEvent.CLICKED, VerizonInterstitial.f34340d);
            String providerTag = VerizonInterstitial.this.getProviderTag();
            String adNetworkId = VerizonInterstitial.this.getAdNetworkId();
            MoPub.AD_TYPE_AND_SIZE ad_type_and_size = MoPub.AD_TYPE_AND_SIZE.INTERSTITIAL;
            String unused = VerizonInterstitial.this.i;
            CallAppAdsAnalyticsManager.c(providerTag, adNetworkId, ad_type_and_size);
            VerizonUtils.postOnUiThread(new Runnable() { // from class: com.mopub.mobileads.VerizonInterstitial.b.4
                @Override // java.lang.Runnable
                public final void run() {
                    if (VerizonInterstitial.this.f34042c != null) {
                        VerizonInterstitial.this.f34042c.onAdClicked();
                    }
                }
            });
        }

        @Override // com.verizon.ads.interstitialplacement.InterstitialAd.InterstitialAdListener
        public final void onClosed(InterstitialAd interstitialAd) {
            MoPubLog.log(VerizonInterstitial.this.getAdNetworkId(), MoPubLog.AdapterLogEvent.DID_DISAPPEAR, VerizonInterstitial.f34340d);
            VerizonUtils.postOnUiThread(new Runnable() { // from class: com.mopub.mobileads.VerizonInterstitial.b.3
                @Override // java.lang.Runnable
                public final void run() {
                    if (VerizonInterstitial.this.f34042c != null) {
                        VerizonInterstitial.this.f34042c.onAdDismissed();
                    }
                }
            });
        }

        @Override // com.verizon.ads.interstitialplacement.InterstitialAd.InterstitialAdListener
        public final void onError(InterstitialAd interstitialAd, final ErrorInfo errorInfo) {
            String adNetworkId = VerizonInterstitial.this.getAdNetworkId();
            MoPubLog.AdapterLogEvent adapterLogEvent = MoPubLog.AdapterLogEvent.CUSTOM;
            String str = VerizonInterstitial.f34340d;
            MoPubLog.log(adNetworkId, adapterLogEvent, str, "Failed to show Verizon interstitial due to error: " + errorInfo.toString());
            VerizonUtils.postOnUiThread(new Runnable() { // from class: com.mopub.mobileads.VerizonInterstitial.b.1
                @Override // java.lang.Runnable
                public final void run() {
                    VerizonInterstitial.this.a(MoPubLog.AdapterLogEvent.SHOW_FAILED, VerizonUtils.convertErrorInfoToMoPub(errorInfo), false);
                }
            });
        }

        @Override // com.verizon.ads.interstitialplacement.InterstitialAd.InterstitialAdListener
        public final void onEvent(InterstitialAd interstitialAd, String str, String str2, Map<String, Object> map) {
            if ("adImpression".equals(str2)) {
                VerizonUtils.postOnUiThread(new Runnable() { // from class: com.mopub.mobileads.VerizonInterstitial.b.5
                    @Override // java.lang.Runnable
                    public final void run() {
                        if (VerizonInterstitial.this.f34042c != null) {
                            VerizonInterstitial.this.f34042c.onAdImpression();
                        }
                    }
                });
            }
            CallAppAdsAnalyticsManager.a(VerizonInterstitial.this.getProviderTag(), VerizonInterstitial.this.getAdNetworkId(), VerizonInterstitial.this.h, MoPub.AD_TYPE_AND_SIZE.INTERSTITIAL, VerizonInterstitial.this.i);
        }

        @Override // com.verizon.ads.interstitialplacement.InterstitialAd.InterstitialAdListener
        public final void onShown(InterstitialAd interstitialAd) {
            MoPubLog.log(VerizonInterstitial.this.getAdNetworkId(), MoPubLog.AdapterLogEvent.SHOW_SUCCESS, VerizonInterstitial.f34340d);
            VerizonUtils.postOnUiThread(new Runnable() { // from class: com.mopub.mobileads.VerizonInterstitial.b.2
                @Override // java.lang.Runnable
                public final void run() {
                    if (VerizonInterstitial.this.f34042c != null) {
                        VerizonInterstitial.this.f34042c.onAdShown();
                    }
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(MoPubLog.AdapterLogEvent adapterLogEvent, MoPubErrorCode moPubErrorCode, boolean z) {
        MoPubLog.log(getAdNetworkId(), adapterLogEvent, f34340d, Integer.valueOf(moPubErrorCode.getIntCode()), moPubErrorCode);
        if (z && this.f34041b != null) {
            this.f34041b.onAdLoadFailed(moPubErrorCode);
        } else if (!z && this.f34042c != null) {
            this.f34042c.onAdFailed(moPubErrorCode);
        }
    }

    @Override // com.mopub.mobileads.BaseAd
    protected final void a() {
        MoPubLog.log(getAdNetworkId(), MoPubLog.AdapterLogEvent.SHOW_ATTEMPTED, f34340d);
        VerizonUtils.postOnUiThread(new Runnable() { // from class: com.mopub.mobileads.VerizonInterstitial.1
            @Override // java.lang.Runnable
            public final void run() {
                if (VerizonInterstitial.this.f != null) {
                    VerizonInterstitial.this.f.show(VerizonInterstitial.this.e);
                } else {
                    VerizonInterstitial.this.a(MoPubLog.AdapterLogEvent.SHOW_FAILED, MoPubErrorCode.INTERNAL_ERROR, false);
                }
            }
        });
    }

    @Override // com.mopub.mobileads.BaseAd
    public String getAdNetworkId() {
        String str = g;
        return str != null ? str : "";
    }

    @Override // com.mopub.mobileads.BaseAd
    public String getProviderTag() {
        return "verizon";
    }

    @Override // com.mopub.mobileads.BaseAd
    protected void load(Context context, AdData adData) {
        Bid bid;
        Preconditions.checkNotNull(context);
        Preconditions.checkNotNull(adData);
        this.f34040a = false;
        this.e = context;
        Map<String, String> extras = adData.getExtras();
        this.j.initializeNetwork(context, extras);
        if (extras.isEmpty()) {
            MoPubLog.log(getAdNetworkId(), MoPubLog.AdapterLogEvent.CUSTOM, f34340d, "Ad request to Verizon failed because server data is null or empty");
            a(MoPubLog.AdapterLogEvent.LOAD_FAILED, MoPubErrorCode.ADAPTER_CONFIGURATION_ERROR, true);
            return;
        }
        this.j.setCachedInitializationParameters(context, extras);
        String str = extras.get(VerizonAdapterConfiguration.VAS_SITE_ID_KEY);
        g = extras.get("placementId");
        this.h = AdUtils.a(extras);
        this.i = extras.get("app_bidder_request_id");
        if (!VASAds.isInitialized()) {
            if (!StandardEdition.initialize(context instanceof Application ? (Application) context : context instanceof Activity ? ((Activity) context).getApplication() : null, str)) {
                a(MoPubLog.AdapterLogEvent.LOAD_FAILED, MoPubErrorCode.ADAPTER_CONFIGURATION_ERROR, true);
            }
        }
        ActivityStateManager activityStateManager = VASAds.getActivityStateManager();
        if (activityStateManager != null && (context instanceof Activity)) {
            activityStateManager.setState((Activity) context, ActivityStateManager.ActivityState.RESUMED);
        }
        if (TextUtils.isEmpty(g)) {
            MoPubLog.log(getAdNetworkId(), MoPubLog.AdapterLogEvent.CUSTOM, f34340d, "Ad request to Verizon failed because placement ID is empty");
            a(MoPubLog.AdapterLogEvent.LOAD_FAILED, MoPubErrorCode.ADAPTER_CONFIGURATION_ERROR, true);
            return;
        }
        InterstitialAdFactory interstitialAdFactory = new InterstitialAdFactory(context, g, new a());
        String str2 = extras.get("adm");
        if (StringUtils.b((CharSequence) str2)) {
            BidObjectCache.Companion companion = BidObjectCache.f16056a;
            bid = (Bid) BidObjectCache.Companion.a(str2);
        } else {
            bid = null;
        }
        if (bid == null) {
            RequestMetadata.Builder builder = new RequestMetadata.Builder(VASAds.getRequestMetadata());
            builder.setMediator(VerizonAdapterConfiguration.MEDIATOR_ID);
            String str3 = extras.get("adm");
            if (!TextUtils.isEmpty(str3)) {
                HashMap hashMap = new HashMap();
                hashMap.put("adContent", str3);
                hashMap.put("overrideWaterfallProvider", "waterfallprovider/sideloading");
                builder.setPlacementData(hashMap);
            }
            interstitialAdFactory.setRequestMetaData(builder.build());
            interstitialAdFactory.load(new b());
            return;
        }
        interstitialAdFactory.load(bid, new b());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.mopub.mobileads.BaseAd
    public void onInvalidate() {
        VerizonUtils.postOnUiThread(new Runnable() { // from class: com.mopub.mobileads.VerizonInterstitial.2
            @Override // java.lang.Runnable
            public final void run() {
                if (VerizonInterstitial.this.f != null) {
                    VerizonInterstitial.this.f.destroy();
                    VerizonInterstitial.this.f = null;
                }
            }
        });
    }
}
