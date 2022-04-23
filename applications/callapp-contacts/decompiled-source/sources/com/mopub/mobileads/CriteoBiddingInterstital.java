package com.mopub.mobileads;

import android.content.Context;
import com.callapp.contacts.manager.CallAppAdsAnalyticsManager;
import com.callapp.contacts.util.ads.AdUtils;
import com.callapp.contacts.util.ads.BidObjectCache;
import com.callapp.framework.util.StringUtils;
import com.criteo.publisher.Bid;
import com.criteo.publisher.CriteoErrorCode;
import com.criteo.publisher.CriteoInterstitial;
import com.criteo.publisher.CriteoInterstitialAdListener;
import com.criteo.publisher.model.InterstitialAdUnit;
import com.mopub.common.MoPub;
import com.mopub.common.Preconditions;
import java.util.Map;
/* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/CriteoBiddingInterstital.class */
public class CriteoBiddingInterstital extends BaseAd {
    public static final String AD_UNIT_ID_KEY = "ad_unit_id";

    /* renamed from: d  reason: collision with root package name */
    private CriteoInterstitial f34059d;
    private String e;
    private String f;
    private final CriteoAdapterConfiguration g = new CriteoAdapterConfiguration();

    @Override // com.mopub.mobileads.BaseAd
    protected final void a() {
        CriteoInterstitial criteoInterstitial = this.f34059d;
        if (criteoInterstitial != null && criteoInterstitial.isAdLoaded()) {
            this.f34059d.show();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
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
        return "criteo";
    }

    @Override // com.mopub.mobileads.BaseAd
    protected void load(Context context, AdData adData) {
        Preconditions.checkNotNull(context);
        Preconditions.checkNotNull(adData);
        Map<String, String> extras = adData.getExtras();
        this.g.initializeNetwork(context, extras);
        String str = extras.get(AD_UNIT_ID_KEY);
        if (str != null && str.length() > 0) {
            this.g.setCachedInitializationParameters(context, extras);
            String str2 = extras.get(AD_UNIT_ID_KEY);
            this.e = str2;
            this.f34059d = new CriteoInterstitial(new InterstitialAdUnit(str2));
            Bid bid = null;
            String str3 = extras.get("adm");
            if (StringUtils.b((CharSequence) str3)) {
                BidObjectCache.Companion companion = BidObjectCache.f16056a;
                bid = (Bid) BidObjectCache.Companion.a(str3);
            }
            if (bid != null) {
                final double a2 = AdUtils.a(extras);
                this.f = extras.get("app_bidder_request_id");
                this.f34059d.setCriteoInterstitialAdListener(new CriteoInterstitialAdListener() { // from class: com.mopub.mobileads.CriteoBiddingInterstital.1
                    @Override // com.criteo.publisher.j
                    public final void onAdClicked() {
                        if (CriteoBiddingInterstital.this.f34042c != null) {
                            CriteoBiddingInterstital.this.f34042c.onAdClicked();
                        }
                        String providerTag = CriteoBiddingInterstital.this.getProviderTag();
                        String str4 = CriteoBiddingInterstital.this.e;
                        MoPub.AD_TYPE_AND_SIZE ad_type_and_size = MoPub.AD_TYPE_AND_SIZE.INTERSTITIAL;
                        String unused = CriteoBiddingInterstital.this.f;
                        CallAppAdsAnalyticsManager.c(providerTag, str4, ad_type_and_size);
                    }

                    @Override // com.criteo.publisher.CriteoInterstitialAdListener
                    public final void onAdClosed() {
                        if (CriteoBiddingInterstital.this.f34042c != null) {
                            CriteoBiddingInterstital.this.f34042c.onAdDismissed();
                        }
                    }

                    @Override // com.criteo.publisher.j
                    public final void onAdFailedToReceive(CriteoErrorCode criteoErrorCode) {
                        if (CriteoBiddingInterstital.this.f34041b != null) {
                            CriteoBiddingInterstital.this.f34041b.onAdLoadFailed(MoPubErrorCode.NO_FILL);
                        }
                    }

                    @Override // com.criteo.publisher.j
                    public final void onAdLeftApplication() {
                    }

                    @Override // com.criteo.publisher.CriteoInterstitialAdListener
                    public final void onAdOpened() {
                        if (CriteoBiddingInterstital.this.f34042c != null) {
                            CriteoBiddingInterstital.this.f34042c.onAdShown();
                            CriteoBiddingInterstital.this.f34042c.onAdImpression();
                        }
                        CallAppAdsAnalyticsManager.a(CriteoBiddingInterstital.this.getProviderTag(), CriteoBiddingInterstital.this.e, a2, MoPub.AD_TYPE_AND_SIZE.INTERSTITIAL, CriteoBiddingInterstital.this.f);
                    }

                    @Override // com.criteo.publisher.CriteoInterstitialAdListener
                    public final void onAdReceived(CriteoInterstitial criteoInterstitial) {
                        if (CriteoBiddingInterstital.this.f34041b != null) {
                            CriteoBiddingInterstital.this.f34041b.onAdLoaded();
                        }
                    }
                });
                this.f34059d.loadAd(bid);
            } else if (this.f34041b != null) {
                this.f34041b.onAdLoadFailed(MoPubErrorCode.ADAPTER_CONFIGURATION_ERROR);
            }
        } else if (this.f34041b != null) {
            this.f34041b.onAdLoadFailed(MoPubErrorCode.ADAPTER_CONFIGURATION_ERROR);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.mopub.mobileads.BaseAd
    public void onInvalidate() {
    }
}
