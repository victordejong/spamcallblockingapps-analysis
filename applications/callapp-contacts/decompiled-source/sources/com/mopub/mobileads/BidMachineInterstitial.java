package com.mopub.mobileads;

import android.content.Context;
import com.callapp.contacts.manager.CallAppAdsAnalyticsManager;
import com.callapp.contacts.util.ads.AdUtils;
import com.callapp.contacts.util.ads.BidObjectCache;
import com.callapp.framework.util.StringUtils;
import com.mopub.common.DataKeys;
import com.mopub.common.MoPub;
import com.mopub.common.logging.MoPubLog;
import io.bidmachine.BidMachineFetcher;
import io.bidmachine.interstitial.InterstitialAd;
import io.bidmachine.interstitial.InterstitialListener;
import io.bidmachine.interstitial.InterstitialRequest;
import io.bidmachine.utils.BMError;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/BidMachineInterstitial.class */
public class BidMachineInterstitial extends BaseAd {

    /* renamed from: d  reason: collision with root package name */
    private static final String f34057d = "BidMachineInterstitial";
    private InterstitialAd e;
    private String f;
    private String h;
    private double g = 0.0d;
    private final AtomicBoolean i = new AtomicBoolean(false);
    private final BidMachineAdapterConfiguration j = new BidMachineAdapterConfiguration();

    /* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/BidMachineInterstitial$a.class */
    final class a implements InterstitialListener {
        private a() {
        }

        public final void onAdClicked(InterstitialAd interstitialAd) {
            MoPubLog.log(MoPubLog.AdapterLogEvent.CLICKED, BidMachineInterstitial.f34057d);
            if (BidMachineInterstitial.this.f34042c != null) {
                BidMachineInterstitial.this.f34042c.onAdClicked();
            }
            if (!BidMachineInterstitial.this.i.getAndSet(true)) {
                String providerTag = BidMachineInterstitial.this.getProviderTag();
                String str = BidMachineInterstitial.this.f;
                MoPub.AD_TYPE_AND_SIZE ad_type_and_size = MoPub.AD_TYPE_AND_SIZE.INTERSTITIAL;
                String unused = BidMachineInterstitial.this.h;
                CallAppAdsAnalyticsManager.c(providerTag, str, ad_type_and_size);
            }
        }

        public final void onAdClosed(InterstitialAd interstitialAd, boolean z) {
            MoPubLog.log(MoPubLog.AdapterLogEvent.DID_DISAPPEAR, BidMachineInterstitial.f34057d);
            if (BidMachineInterstitial.this.f34042c != null) {
                BidMachineInterstitial.this.f34042c.onAdDismissed();
            }
        }

        public final void onAdExpired(InterstitialAd interstitialAd) {
            MoPubLog.log(MoPubLog.AdapterLogEvent.CUSTOM, BidMachineInterstitial.f34057d, "Ad was expired");
            if (BidMachineInterstitial.this.f34041b != null) {
                BidMachineInterstitial.this.f34041b.onAdLoadFailed(MoPubErrorCode.EXPIRED);
            }
        }

        public final void onAdImpression(InterstitialAd interstitialAd) {
            if (BidMachineInterstitial.this.f34042c != null) {
                BidMachineInterstitial.this.f34042c.onAdImpression();
            }
            BidMachineInterstitial.this.i.set(false);
            CallAppAdsAnalyticsManager.a(BidMachineInterstitial.this.getProviderTag(), BidMachineInterstitial.this.f, BidMachineInterstitial.this.g, MoPub.AD_TYPE_AND_SIZE.INTERSTITIAL, BidMachineInterstitial.this.h);
        }

        public final void onAdLoadFailed(InterstitialAd interstitialAd, BMError bMError) {
            MoPubErrorCode transformToMoPubErrorCode = BidMachineUtils.transformToMoPubErrorCode(bMError);
            MoPubLog.log(MoPubLog.AdapterLogEvent.LOAD_FAILED, BidMachineInterstitial.f34057d, Integer.valueOf(transformToMoPubErrorCode.getIntCode()), transformToMoPubErrorCode);
            if (BidMachineInterstitial.this.f34041b != null) {
                BidMachineInterstitial.this.f34041b.onAdLoadFailed(transformToMoPubErrorCode);
            }
        }

        public final void onAdLoaded(InterstitialAd interstitialAd) {
            MoPubLog.log(MoPubLog.AdapterLogEvent.LOAD_SUCCESS, BidMachineInterstitial.f34057d);
            if (BidMachineInterstitial.this.f34041b != null) {
                BidMachineInterstitial.this.f34041b.onAdLoaded();
            }
        }

        public final void onAdShowFailed(InterstitialAd interstitialAd, BMError bMError) {
            MoPubLog.log(MoPubLog.AdapterLogEvent.SHOW_FAILED, BidMachineInterstitial.f34057d);
            if (BidMachineInterstitial.this.f34041b != null) {
                BidMachineInterstitial.this.f34041b.onAdLoadFailed(MoPubErrorCode.INTERNAL_ERROR);
            }
        }

        public final void onAdShown(InterstitialAd interstitialAd) {
            MoPubLog.log(MoPubLog.AdapterLogEvent.SHOW_SUCCESS, BidMachineInterstitial.f34057d);
            if (BidMachineInterstitial.this.f34042c != null) {
                BidMachineInterstitial.this.f34042c.onAdShown();
            }
        }
    }

    @Override // com.mopub.mobileads.BaseAd
    protected final void a() {
        MoPubLog.AdapterLogEvent adapterLogEvent = MoPubLog.AdapterLogEvent.SHOW_ATTEMPTED;
        String str = f34057d;
        MoPubLog.log(adapterLogEvent, str);
        InterstitialAd interstitialAd = this.e;
        if (interstitialAd == null || !interstitialAd.canShow()) {
            MoPubLog.log(MoPubLog.AdapterLogEvent.SHOW_FAILED, str, Integer.valueOf(MoPubErrorCode.NETWORK_NO_FILL.getIntCode()), MoPubErrorCode.NETWORK_NO_FILL);
            if (this.f34041b != null) {
                this.f34041b.onAdLoadFailed(MoPubErrorCode.INTERNAL_ERROR);
                return;
            }
            return;
        }
        this.e.show();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.mopub.mobileads.BaseAd
    public String getAdNetworkId() {
        String str = this.f;
        String str2 = str;
        if (str == null) {
            str2 = "";
        }
        return str2;
    }

    @Override // com.mopub.mobileads.BaseAd
    public String getProviderTag() {
        return "bidmachine";
    }

    @Override // com.mopub.mobileads.BaseAd
    protected void load(Context context, AdData adData) {
        InterstitialRequest interstitialRequest;
        Map<String, String> extras = adData.getExtras();
        this.j.initializeNetwork(context, extras);
        this.f34040a = false;
        this.g = AdUtils.a(extras);
        this.h = extras.get("app_bidder_request_id");
        this.f = extras.get(DataKeys.AD_UNIT_ID_KEY);
        if (extras.containsKey(BidMachineFetcher.KEY_ID)) {
            String str = extras.get(BidMachineFetcher.KEY_ID);
            if (StringUtils.b((CharSequence) str)) {
                BidObjectCache.Companion companion = BidObjectCache.f16056a;
                interstitialRequest = (InterstitialRequest) BidObjectCache.Companion.a(str);
            } else {
                interstitialRequest = null;
            }
            if (interstitialRequest == null) {
                MoPubLog.AdapterLogEvent adapterLogEvent = MoPubLog.AdapterLogEvent.CUSTOM;
                String str2 = f34057d;
                MoPubLog.log(adapterLogEvent, str2, "Fetched AdRequest not found");
                MoPubLog.log(MoPubLog.AdapterLogEvent.LOAD_FAILED, str2, Integer.valueOf(MoPubErrorCode.NO_FILL.getIntCode()), MoPubErrorCode.NO_FILL);
            } else {
                MoPubLog.AdapterLogEvent adapterLogEvent2 = MoPubLog.AdapterLogEvent.CUSTOM;
                String str3 = f34057d;
                MoPubLog.log(adapterLogEvent2, str3, "Fetched request resolved: " + interstitialRequest.getAuctionResult());
            }
        } else {
            interstitialRequest = null;
        }
        this.j.setCachedInitializationParameters(context, extras);
        if (interstitialRequest != null) {
            InterstitialAd interstitialAd = new InterstitialAd(context);
            this.e = interstitialAd;
            interstitialAd.setListener(new a());
            this.e.load(interstitialRequest);
            MoPubLog.log(MoPubLog.AdapterLogEvent.LOAD_ATTEMPTED, f34057d);
        } else if (this.f34041b != null) {
            this.f34041b.onAdLoadFailed(MoPubErrorCode.NO_FILL);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.mopub.mobileads.BaseAd
    public void onInvalidate() {
        InterstitialAd interstitialAd = this.e;
        if (interstitialAd != null) {
            interstitialAd.setListener(null);
            this.e.destroy();
            this.e = null;
        }
    }
}
