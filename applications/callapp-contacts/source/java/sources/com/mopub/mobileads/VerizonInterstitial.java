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

    /* renamed from: d */
    private static final String f59615d = "VerizonInterstitial";

    /* renamed from: g */
    private static String f59616g;

    /* renamed from: e */
    private Context f59617e;

    /* renamed from: f */
    private InterstitialAd f59618f;

    /* renamed from: i */
    private String f59620i;

    /* renamed from: h */
    private double f59619h = 0.0d;

    /* renamed from: j */
    private final VerizonAdapterConfiguration f59621j = new VerizonAdapterConfiguration();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.mopub.mobileads.VerizonInterstitial$a */
    /* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/VerizonInterstitial$a.class */
    public final class C16835a implements InterstitialAdFactory.InterstitialAdFactoryListener {
        private C16835a() {
            VerizonInterstitial.this = r4;
        }

        @Override // com.verizon.ads.interstitialplacement.InterstitialAdFactory.InterstitialAdFactoryListener
        public final void onError(InterstitialAdFactory interstitialAdFactory, final ErrorInfo errorInfo) {
            String adNetworkId = VerizonInterstitial.this.getAdNetworkId();
            MoPubLog.AdapterLogEvent adapterLogEvent = MoPubLog.AdapterLogEvent.CUSTOM;
            String str = VerizonInterstitial.f59615d;
            MoPubLog.log(adNetworkId, adapterLogEvent, str, "Failed to load Verizon interstitial due to error: " + errorInfo.toString());
            VerizonUtils.postOnUiThread(new Runnable() { // from class: com.mopub.mobileads.VerizonInterstitial.a.2
                @Override // java.lang.Runnable
                public final void run() {
                    VerizonInterstitial.this.m6370a(MoPubLog.AdapterLogEvent.LOAD_FAILED, VerizonUtils.convertErrorInfoToMoPub(errorInfo), true);
                }
            });
        }

        @Override // com.verizon.ads.interstitialplacement.InterstitialAdFactory.InterstitialAdFactoryListener
        public final void onLoaded(InterstitialAdFactory interstitialAdFactory, InterstitialAd interstitialAd) {
            VerizonInterstitial.this.f59618f = interstitialAd;
            MoPubLog.log(VerizonInterstitial.this.getAdNetworkId(), MoPubLog.AdapterLogEvent.LOAD_SUCCESS, VerizonInterstitial.f59615d);
            VerizonUtils.postOnUiThread(new Runnable() { // from class: com.mopub.mobileads.VerizonInterstitial.a.1
                @Override // java.lang.Runnable
                public final void run() {
                    MoPubLog.log(VerizonInterstitial.this.getAdNetworkId(), MoPubLog.AdapterLogEvent.CUSTOM, VerizonInterstitial.f59615d, "Verizon creative info: ".concat(String.valueOf(VerizonInterstitial.this.f59618f == null ? null : VerizonInterstitial.this.f59618f.getCreativeInfo())));
                    if (VerizonInterstitial.this.f59119b != null) {
                        VerizonInterstitial.this.f59119b.onAdLoaded();
                    }
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.mopub.mobileads.VerizonInterstitial$b */
    /* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/VerizonInterstitial$b.class */
    public final class C16838b implements InterstitialAd.InterstitialAdListener {
        private C16838b() {
            VerizonInterstitial.this = r4;
        }

        @Override // com.verizon.ads.interstitialplacement.InterstitialAd.InterstitialAdListener
        public final void onAdLeftApplication(InterstitialAd interstitialAd) {
            MoPubLog.log(VerizonInterstitial.this.getAdNetworkId(), MoPubLog.AdapterLogEvent.WILL_LEAVE_APPLICATION, VerizonInterstitial.f59615d);
        }

        @Override // com.verizon.ads.interstitialplacement.InterstitialAd.InterstitialAdListener
        public final void onClicked(InterstitialAd interstitialAd) {
            MoPubLog.log(VerizonInterstitial.this.getAdNetworkId(), MoPubLog.AdapterLogEvent.CLICKED, VerizonInterstitial.f59615d);
            String providerTag = VerizonInterstitial.this.getProviderTag();
            String adNetworkId = VerizonInterstitial.this.getAdNetworkId();
            MoPub.AD_TYPE_AND_SIZE ad_type_and_size = MoPub.AD_TYPE_AND_SIZE.INTERSTITIAL;
            String unused = VerizonInterstitial.this.f59620i;
            CallAppAdsAnalyticsManager.m28737c(providerTag, adNetworkId, ad_type_and_size);
            VerizonUtils.postOnUiThread(new Runnable() { // from class: com.mopub.mobileads.VerizonInterstitial.b.4
                @Override // java.lang.Runnable
                public final void run() {
                    if (VerizonInterstitial.this.f59120c != null) {
                        VerizonInterstitial.this.f59120c.onAdClicked();
                    }
                }
            });
        }

        @Override // com.verizon.ads.interstitialplacement.InterstitialAd.InterstitialAdListener
        public final void onClosed(InterstitialAd interstitialAd) {
            MoPubLog.log(VerizonInterstitial.this.getAdNetworkId(), MoPubLog.AdapterLogEvent.DID_DISAPPEAR, VerizonInterstitial.f59615d);
            VerizonUtils.postOnUiThread(new Runnable() { // from class: com.mopub.mobileads.VerizonInterstitial.b.3
                @Override // java.lang.Runnable
                public final void run() {
                    if (VerizonInterstitial.this.f59120c != null) {
                        VerizonInterstitial.this.f59120c.onAdDismissed();
                    }
                }
            });
        }

        @Override // com.verizon.ads.interstitialplacement.InterstitialAd.InterstitialAdListener
        public final void onError(InterstitialAd interstitialAd, final ErrorInfo errorInfo) {
            String adNetworkId = VerizonInterstitial.this.getAdNetworkId();
            MoPubLog.AdapterLogEvent adapterLogEvent = MoPubLog.AdapterLogEvent.CUSTOM;
            String str = VerizonInterstitial.f59615d;
            MoPubLog.log(adNetworkId, adapterLogEvent, str, "Failed to show Verizon interstitial due to error: " + errorInfo.toString());
            VerizonUtils.postOnUiThread(new Runnable() { // from class: com.mopub.mobileads.VerizonInterstitial.b.1
                @Override // java.lang.Runnable
                public final void run() {
                    VerizonInterstitial.this.m6370a(MoPubLog.AdapterLogEvent.SHOW_FAILED, VerizonUtils.convertErrorInfoToMoPub(errorInfo), false);
                }
            });
        }

        @Override // com.verizon.ads.interstitialplacement.InterstitialAd.InterstitialAdListener
        public final void onEvent(InterstitialAd interstitialAd, String str, String str2, Map<String, Object> map) {
            if ("adImpression".equals(str2)) {
                VerizonUtils.postOnUiThread(new Runnable() { // from class: com.mopub.mobileads.VerizonInterstitial.b.5
                    @Override // java.lang.Runnable
                    public final void run() {
                        if (VerizonInterstitial.this.f59120c != null) {
                            VerizonInterstitial.this.f59120c.onAdImpression();
                        }
                    }
                });
            }
            CallAppAdsAnalyticsManager.m28740a(VerizonInterstitial.this.getProviderTag(), VerizonInterstitial.this.getAdNetworkId(), VerizonInterstitial.this.f59619h, MoPub.AD_TYPE_AND_SIZE.INTERSTITIAL, VerizonInterstitial.this.f59620i);
        }

        @Override // com.verizon.ads.interstitialplacement.InterstitialAd.InterstitialAdListener
        public final void onShown(InterstitialAd interstitialAd) {
            MoPubLog.log(VerizonInterstitial.this.getAdNetworkId(), MoPubLog.AdapterLogEvent.SHOW_SUCCESS, VerizonInterstitial.f59615d);
            VerizonUtils.postOnUiThread(new Runnable() { // from class: com.mopub.mobileads.VerizonInterstitial.b.2
                @Override // java.lang.Runnable
                public final void run() {
                    if (VerizonInterstitial.this.f59120c != null) {
                        VerizonInterstitial.this.f59120c.onAdShown();
                    }
                }
            });
        }
    }

    /* renamed from: a */
    public void m6370a(MoPubLog.AdapterLogEvent adapterLogEvent, MoPubErrorCode moPubErrorCode, boolean z) {
        MoPubLog.log(getAdNetworkId(), adapterLogEvent, f59615d, Integer.valueOf(moPubErrorCode.getIntCode()), moPubErrorCode);
        if (z && this.f59119b != null) {
            this.f59119b.onAdLoadFailed(moPubErrorCode);
        } else if (z || this.f59120c == null) {
        } else {
            this.f59120c.onAdFailed(moPubErrorCode);
        }
    }

    @Override // com.mopub.mobileads.BaseAd
    /* renamed from: a */
    protected final void mo6371a() {
        MoPubLog.log(getAdNetworkId(), MoPubLog.AdapterLogEvent.SHOW_ATTEMPTED, f59615d);
        VerizonUtils.postOnUiThread(new Runnable() { // from class: com.mopub.mobileads.VerizonInterstitial.1
            @Override // java.lang.Runnable
            public final void run() {
                if (VerizonInterstitial.this.f59618f != null) {
                    VerizonInterstitial.this.f59618f.show(VerizonInterstitial.this.f59617e);
                } else {
                    VerizonInterstitial.this.m6370a(MoPubLog.AdapterLogEvent.SHOW_FAILED, MoPubErrorCode.INTERNAL_ERROR, false);
                }
            }
        });
    }

    @Override // com.mopub.mobileads.BaseAd
    public String getAdNetworkId() {
        String str = f59616g;
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
        this.f59118a = false;
        this.f59617e = context;
        Map<String, String> extras = adData.getExtras();
        this.f59621j.initializeNetwork(context, extras);
        if (extras.isEmpty()) {
            MoPubLog.log(getAdNetworkId(), MoPubLog.AdapterLogEvent.CUSTOM, f59615d, "Ad request to Verizon failed because server data is null or empty");
            m6370a(MoPubLog.AdapterLogEvent.LOAD_FAILED, MoPubErrorCode.ADAPTER_CONFIGURATION_ERROR, true);
            return;
        }
        this.f59621j.setCachedInitializationParameters(context, extras);
        String str = extras.get(VerizonAdapterConfiguration.VAS_SITE_ID_KEY);
        f59616g = extras.get("placementId");
        this.f59619h = AdUtils.m27266a(extras);
        this.f59620i = extras.get("app_bidder_request_id");
        if (!VASAds.isInitialized()) {
            if (!StandardEdition.initialize(context instanceof Application ? (Application) context : context instanceof Activity ? ((Activity) context).getApplication() : null, str)) {
                m6370a(MoPubLog.AdapterLogEvent.LOAD_FAILED, MoPubErrorCode.ADAPTER_CONFIGURATION_ERROR, true);
            }
        }
        ActivityStateManager activityStateManager = VASAds.getActivityStateManager();
        if (activityStateManager != null && (context instanceof Activity)) {
            activityStateManager.setState((Activity) context, ActivityStateManager.ActivityState.RESUMED);
        }
        if (TextUtils.isEmpty(f59616g)) {
            MoPubLog.log(getAdNetworkId(), MoPubLog.AdapterLogEvent.CUSTOM, f59615d, "Ad request to Verizon failed because placement ID is empty");
            m6370a(MoPubLog.AdapterLogEvent.LOAD_FAILED, MoPubErrorCode.ADAPTER_CONFIGURATION_ERROR, true);
            return;
        }
        InterstitialAdFactory interstitialAdFactory = new InterstitialAdFactory(context, f59616g, new C16835a());
        String str2 = extras.get("adm");
        if (StringUtils.m26045b((CharSequence) str2)) {
            BidObjectCache.Companion companion = BidObjectCache.f28004a;
            bid = (Bid) BidObjectCache.Companion.m27233a(str2);
        } else {
            bid = null;
        }
        if (bid != null) {
            interstitialAdFactory.load(bid, new C16838b());
            return;
        }
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
        interstitialAdFactory.load(new C16838b());
    }

    @Override // com.mopub.mobileads.BaseAd
    public void onInvalidate() {
        VerizonUtils.postOnUiThread(new Runnable() { // from class: com.mopub.mobileads.VerizonInterstitial.2
            @Override // java.lang.Runnable
            public final void run() {
                if (VerizonInterstitial.this.f59618f != null) {
                    VerizonInterstitial.this.f59618f.destroy();
                    VerizonInterstitial.this.f59618f = null;
                }
            }
        });
    }
}
