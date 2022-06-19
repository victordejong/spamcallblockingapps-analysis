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

    /* renamed from: d */
    private static final String f59140d = "BidMachineInterstitial";

    /* renamed from: e */
    private InterstitialAd f59141e;

    /* renamed from: f */
    private String f59142f;

    /* renamed from: h */
    private String f59144h;

    /* renamed from: g */
    private double f59143g = 0.0d;

    /* renamed from: i */
    private final AtomicBoolean f59145i = new AtomicBoolean(false);

    /* renamed from: j */
    private final BidMachineAdapterConfiguration f59146j = new BidMachineAdapterConfiguration();

    /* renamed from: com.mopub.mobileads.BidMachineInterstitial$a */
    /* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/BidMachineInterstitial$a.class */
    final class C16764a implements InterstitialListener {
        private C16764a() {
            BidMachineInterstitial.this = r4;
        }

        public final void onAdClicked(InterstitialAd interstitialAd) {
            MoPubLog.log(MoPubLog.AdapterLogEvent.CLICKED, BidMachineInterstitial.f59140d);
            if (BidMachineInterstitial.this.f59120c != null) {
                BidMachineInterstitial.this.f59120c.onAdClicked();
            }
            if (!BidMachineInterstitial.this.f59145i.getAndSet(true)) {
                String providerTag = BidMachineInterstitial.this.getProviderTag();
                String str = BidMachineInterstitial.this.f59142f;
                MoPub.AD_TYPE_AND_SIZE ad_type_and_size = MoPub.AD_TYPE_AND_SIZE.INTERSTITIAL;
                String unused = BidMachineInterstitial.this.f59144h;
                CallAppAdsAnalyticsManager.m28737c(providerTag, str, ad_type_and_size);
            }
        }

        public final void onAdClosed(InterstitialAd interstitialAd, boolean z) {
            MoPubLog.log(MoPubLog.AdapterLogEvent.DID_DISAPPEAR, BidMachineInterstitial.f59140d);
            if (BidMachineInterstitial.this.f59120c != null) {
                BidMachineInterstitial.this.f59120c.onAdDismissed();
            }
        }

        public final void onAdExpired(InterstitialAd interstitialAd) {
            MoPubLog.log(MoPubLog.AdapterLogEvent.CUSTOM, BidMachineInterstitial.f59140d, "Ad was expired");
            if (BidMachineInterstitial.this.f59119b != null) {
                BidMachineInterstitial.this.f59119b.onAdLoadFailed(MoPubErrorCode.EXPIRED);
            }
        }

        public final void onAdImpression(InterstitialAd interstitialAd) {
            if (BidMachineInterstitial.this.f59120c != null) {
                BidMachineInterstitial.this.f59120c.onAdImpression();
            }
            BidMachineInterstitial.this.f59145i.set(false);
            CallAppAdsAnalyticsManager.m28740a(BidMachineInterstitial.this.getProviderTag(), BidMachineInterstitial.this.f59142f, BidMachineInterstitial.this.f59143g, MoPub.AD_TYPE_AND_SIZE.INTERSTITIAL, BidMachineInterstitial.this.f59144h);
        }

        public final void onAdLoadFailed(InterstitialAd interstitialAd, BMError bMError) {
            MoPubErrorCode transformToMoPubErrorCode = BidMachineUtils.transformToMoPubErrorCode(bMError);
            MoPubLog.log(MoPubLog.AdapterLogEvent.LOAD_FAILED, BidMachineInterstitial.f59140d, Integer.valueOf(transformToMoPubErrorCode.getIntCode()), transformToMoPubErrorCode);
            if (BidMachineInterstitial.this.f59119b != null) {
                BidMachineInterstitial.this.f59119b.onAdLoadFailed(transformToMoPubErrorCode);
            }
        }

        public final void onAdLoaded(InterstitialAd interstitialAd) {
            MoPubLog.log(MoPubLog.AdapterLogEvent.LOAD_SUCCESS, BidMachineInterstitial.f59140d);
            if (BidMachineInterstitial.this.f59119b != null) {
                BidMachineInterstitial.this.f59119b.onAdLoaded();
            }
        }

        public final void onAdShowFailed(InterstitialAd interstitialAd, BMError bMError) {
            MoPubLog.log(MoPubLog.AdapterLogEvent.SHOW_FAILED, BidMachineInterstitial.f59140d);
            if (BidMachineInterstitial.this.f59119b != null) {
                BidMachineInterstitial.this.f59119b.onAdLoadFailed(MoPubErrorCode.INTERNAL_ERROR);
            }
        }

        public final void onAdShown(InterstitialAd interstitialAd) {
            MoPubLog.log(MoPubLog.AdapterLogEvent.SHOW_SUCCESS, BidMachineInterstitial.f59140d);
            if (BidMachineInterstitial.this.f59120c != null) {
                BidMachineInterstitial.this.f59120c.onAdShown();
            }
        }
    }

    @Override // com.mopub.mobileads.BaseAd
    /* renamed from: a */
    protected final void mo6371a() {
        MoPubLog.AdapterLogEvent adapterLogEvent = MoPubLog.AdapterLogEvent.SHOW_ATTEMPTED;
        String str = f59140d;
        MoPubLog.log(adapterLogEvent, str);
        InterstitialAd interstitialAd = this.f59141e;
        if (interstitialAd != null && interstitialAd.canShow()) {
            this.f59141e.show();
            return;
        }
        MoPubLog.log(MoPubLog.AdapterLogEvent.SHOW_FAILED, str, Integer.valueOf(MoPubErrorCode.NETWORK_NO_FILL.getIntCode()), MoPubErrorCode.NETWORK_NO_FILL);
        if (this.f59119b == null) {
            return;
        }
        this.f59119b.onAdLoadFailed(MoPubErrorCode.INTERNAL_ERROR);
    }

    @Override // com.mopub.mobileads.BaseAd
    public String getAdNetworkId() {
        String str = this.f59142f;
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
        this.f59146j.initializeNetwork(context, extras);
        this.f59118a = false;
        this.f59143g = AdUtils.m27266a(extras);
        this.f59144h = extras.get("app_bidder_request_id");
        this.f59142f = extras.get(DataKeys.AD_UNIT_ID_KEY);
        if (extras.containsKey(BidMachineFetcher.KEY_ID)) {
            String str = extras.get(BidMachineFetcher.KEY_ID);
            if (StringUtils.m26045b((CharSequence) str)) {
                BidObjectCache.Companion companion = BidObjectCache.f28004a;
                interstitialRequest = (InterstitialRequest) BidObjectCache.Companion.m27233a(str);
            } else {
                interstitialRequest = null;
            }
            if (interstitialRequest == null) {
                MoPubLog.AdapterLogEvent adapterLogEvent = MoPubLog.AdapterLogEvent.CUSTOM;
                String str2 = f59140d;
                MoPubLog.log(adapterLogEvent, str2, "Fetched AdRequest not found");
                MoPubLog.log(MoPubLog.AdapterLogEvent.LOAD_FAILED, str2, Integer.valueOf(MoPubErrorCode.NO_FILL.getIntCode()), MoPubErrorCode.NO_FILL);
            } else {
                MoPubLog.log(MoPubLog.AdapterLogEvent.CUSTOM, f59140d, "Fetched request resolved: " + interstitialRequest.getAuctionResult());
            }
        } else {
            interstitialRequest = null;
        }
        this.f59146j.setCachedInitializationParameters(context, extras);
        if (interstitialRequest == null) {
            if (this.f59119b == null) {
                return;
            }
            this.f59119b.onAdLoadFailed(MoPubErrorCode.NO_FILL);
            return;
        }
        InterstitialAd interstitialAd = new InterstitialAd(context);
        this.f59141e = interstitialAd;
        interstitialAd.setListener(new C16764a());
        this.f59141e.load(interstitialRequest);
        MoPubLog.log(MoPubLog.AdapterLogEvent.LOAD_ATTEMPTED, f59140d);
    }

    @Override // com.mopub.mobileads.BaseAd
    public void onInvalidate() {
        InterstitialAd interstitialAd = this.f59141e;
        if (interstitialAd != null) {
            interstitialAd.setListener(null);
            this.f59141e.destroy();
            this.f59141e = null;
        }
    }
}
