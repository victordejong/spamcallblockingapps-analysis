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

    /* renamed from: d */
    private CriteoInterstitial f59148d;

    /* renamed from: e */
    private String f59149e;

    /* renamed from: f */
    private String f59150f;

    /* renamed from: g */
    private final CriteoAdapterConfiguration f59151g = new CriteoAdapterConfiguration();

    @Override // com.mopub.mobileads.BaseAd
    /* renamed from: a */
    protected final void mo6371a() {
        CriteoInterstitial criteoInterstitial = this.f59148d;
        if (criteoInterstitial == null || !criteoInterstitial.isAdLoaded()) {
            return;
        }
        this.f59148d.show();
    }

    @Override // com.mopub.mobileads.BaseAd
    public String getAdNetworkId() {
        String str = this.f59149e;
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
        this.f59151g.initializeNetwork(context, extras);
        String str = extras.get(AD_UNIT_ID_KEY);
        if (!(str != null && str.length() > 0)) {
            if (this.f59119b == null) {
                return;
            }
            this.f59119b.onAdLoadFailed(MoPubErrorCode.ADAPTER_CONFIGURATION_ERROR);
            return;
        }
        this.f59151g.setCachedInitializationParameters(context, extras);
        String str2 = extras.get(AD_UNIT_ID_KEY);
        this.f59149e = str2;
        this.f59148d = new CriteoInterstitial(new InterstitialAdUnit(str2));
        Bid bid = null;
        String str3 = extras.get("adm");
        if (StringUtils.m26045b((CharSequence) str3)) {
            BidObjectCache.Companion companion = BidObjectCache.f28004a;
            bid = (Bid) BidObjectCache.Companion.m27233a(str3);
        }
        if (bid == null) {
            if (this.f59119b == null) {
                return;
            }
            this.f59119b.onAdLoadFailed(MoPubErrorCode.ADAPTER_CONFIGURATION_ERROR);
            return;
        }
        final double m27266a = AdUtils.m27266a(extras);
        this.f59150f = extras.get("app_bidder_request_id");
        this.f59148d.setCriteoInterstitialAdListener(new CriteoInterstitialAdListener() { // from class: com.mopub.mobileads.CriteoBiddingInterstital.1
            @Override // com.criteo.publisher.AbstractC8352j
            public final void onAdClicked() {
                if (CriteoBiddingInterstital.this.f59120c != null) {
                    CriteoBiddingInterstital.this.f59120c.onAdClicked();
                }
                String providerTag = CriteoBiddingInterstital.this.getProviderTag();
                String str4 = CriteoBiddingInterstital.this.f59149e;
                MoPub.AD_TYPE_AND_SIZE ad_type_and_size = MoPub.AD_TYPE_AND_SIZE.INTERSTITIAL;
                String unused = CriteoBiddingInterstital.this.f59150f;
                CallAppAdsAnalyticsManager.m28737c(providerTag, str4, ad_type_and_size);
            }

            @Override // com.criteo.publisher.CriteoInterstitialAdListener
            public final void onAdClosed() {
                if (CriteoBiddingInterstital.this.f59120c != null) {
                    CriteoBiddingInterstital.this.f59120c.onAdDismissed();
                }
            }

            @Override // com.criteo.publisher.AbstractC8352j
            public final void onAdFailedToReceive(CriteoErrorCode criteoErrorCode) {
                if (CriteoBiddingInterstital.this.f59119b != null) {
                    CriteoBiddingInterstital.this.f59119b.onAdLoadFailed(MoPubErrorCode.NO_FILL);
                }
            }

            @Override // com.criteo.publisher.AbstractC8352j
            public final void onAdLeftApplication() {
            }

            @Override // com.criteo.publisher.CriteoInterstitialAdListener
            public final void onAdOpened() {
                if (CriteoBiddingInterstital.this.f59120c != null) {
                    CriteoBiddingInterstital.this.f59120c.onAdShown();
                    CriteoBiddingInterstital.this.f59120c.onAdImpression();
                }
                CallAppAdsAnalyticsManager.m28740a(CriteoBiddingInterstital.this.getProviderTag(), CriteoBiddingInterstital.this.f59149e, m27266a, MoPub.AD_TYPE_AND_SIZE.INTERSTITIAL, CriteoBiddingInterstital.this.f59150f);
            }

            @Override // com.criteo.publisher.CriteoInterstitialAdListener
            public final void onAdReceived(CriteoInterstitial criteoInterstitial) {
                if (CriteoBiddingInterstital.this.f59119b != null) {
                    CriteoBiddingInterstital.this.f59119b.onAdLoaded();
                }
            }
        });
        this.f59148d.loadAd(bid);
    }

    @Override // com.mopub.mobileads.BaseAd
    public void onInvalidate() {
    }
}
