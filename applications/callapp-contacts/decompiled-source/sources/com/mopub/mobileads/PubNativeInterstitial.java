package com.mopub.mobileads;

import android.content.Context;
import com.callapp.contacts.manager.CallAppAdsAnalyticsManager;
import com.callapp.contacts.util.CLog;
import com.callapp.contacts.util.ads.AdUtils;
import com.callapp.contacts.util.ads.BidObjectCache;
import com.callapp.framework.util.StringUtils;
import com.mopub.common.MoPub;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import net.pubnative.lite.sdk.interstitial.presenter.InterstitialPresenter;
import net.pubnative.lite.sdk.interstitial.presenter.InterstitialPresenterFactory;
import net.pubnative.lite.sdk.models.Ad;
/* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/PubNativeInterstitial.class */
public class PubNativeInterstitial extends BaseAd implements InterstitialPresenter.Listener {
    public static final String ZONE_ID_KEY = "pn_zone_id";

    /* renamed from: d  reason: collision with root package name */
    private static final String f34226d = "PubNativeInterstitial";
    private InterstitialPresenter f;
    private String g;
    private String i;
    private final AtomicBoolean e = new AtomicBoolean(false);
    private double h = 0.0d;
    private final PubNativeAdapterConfiguration j = new PubNativeAdapterConfiguration();

    @Override // com.mopub.mobileads.BaseAd
    protected final void a() {
        InterstitialPresenter interstitialPresenter = this.f;
        if (interstitialPresenter != null) {
            interstitialPresenter.show();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.mopub.mobileads.BaseAd
    public String getAdNetworkId() {
        String str = this.g;
        String str2 = str;
        if (str == null) {
            str2 = "";
        }
        return str2;
    }

    @Override // com.mopub.mobileads.BaseAd
    public String getProviderTag() {
        return "pubnative";
    }

    @Override // com.mopub.mobileads.BaseAd
    protected void load(Context context, AdData adData) {
        Map<String, String> extras = adData.getExtras();
        this.j.initializeNetwork(context, extras);
        if (extras.containsKey(ZONE_ID_KEY)) {
            this.g = extras.get(ZONE_ID_KEY);
            this.j.setCachedInitializationParameters(context, extras);
            this.h = AdUtils.a(extras);
            this.i = extras.get("app_bidder_request_id");
            Ad ad = null;
            String str = extras.get("adm");
            if (StringUtils.b((CharSequence) str)) {
                BidObjectCache.Companion companion = BidObjectCache.f16056a;
                ad = (Ad) BidObjectCache.Companion.a(str);
            }
            if (ad == null) {
                String str2 = f34226d;
                new StringBuilder("Could not find an ad in the cache for zone id with key ").append(this.g);
                CLog.a(str2);
                if (this.f34041b != null) {
                    this.f34041b.onAdLoadFailed(MoPubErrorCode.ADAPTER_CONFIGURATION_ERROR);
                    return;
                }
                return;
            }
            InterstitialPresenter createInterstitialPresenter = new InterstitialPresenterFactory(context, this.g).createInterstitialPresenter(ad, this);
            this.f = createInterstitialPresenter;
            if (createInterstitialPresenter == null) {
                CLog.a(f34226d);
                if (this.f34041b != null) {
                    this.f34041b.onAdLoadFailed(MoPubErrorCode.ADAPTER_CONFIGURATION_ERROR);
                    return;
                }
                return;
            }
            createInterstitialPresenter.load();
            return;
        }
        CLog.a(f34226d);
        if (this.f34041b != null) {
            this.f34041b.onAdLoadFailed(MoPubErrorCode.ADAPTER_CONFIGURATION_ERROR);
        }
    }

    @Override // net.pubnative.lite.sdk.interstitial.presenter.InterstitialPresenter.Listener
    public void onInterstitialClicked(InterstitialPresenter interstitialPresenter) {
        if (this.f34042c != null) {
            this.f34042c.onAdClicked();
        }
        if (!this.e.getAndSet(true)) {
            CallAppAdsAnalyticsManager.c(getProviderTag(), this.g, MoPub.AD_TYPE_AND_SIZE.INTERSTITIAL);
        }
    }

    @Override // net.pubnative.lite.sdk.interstitial.presenter.InterstitialPresenter.Listener
    public void onInterstitialDismissed(InterstitialPresenter interstitialPresenter) {
        if (this.f34042c != null) {
            this.f34042c.onAdDismissed();
        }
    }

    @Override // net.pubnative.lite.sdk.interstitial.presenter.InterstitialPresenter.Listener
    public void onInterstitialError(InterstitialPresenter interstitialPresenter) {
        if (this.f34041b != null) {
            this.f34041b.onAdLoadFailed(MoPubErrorCode.INTERNAL_ERROR);
        }
    }

    @Override // net.pubnative.lite.sdk.interstitial.presenter.InterstitialPresenter.Listener
    public void onInterstitialLoaded(InterstitialPresenter interstitialPresenter) {
        if (this.f34041b != null) {
            this.f34041b.onAdLoaded();
        }
    }

    @Override // net.pubnative.lite.sdk.interstitial.presenter.InterstitialPresenter.Listener
    public void onInterstitialShown(InterstitialPresenter interstitialPresenter) {
        if (this.f34042c != null) {
            this.f34042c.onAdShown();
        }
        this.e.set(false);
        CallAppAdsAnalyticsManager.a(getProviderTag(), this.g, this.h, MoPub.AD_TYPE_AND_SIZE.INTERSTITIAL, this.i);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.mopub.mobileads.BaseAd
    public void onInvalidate() {
        InterstitialPresenter interstitialPresenter = this.f;
        if (interstitialPresenter != null) {
            interstitialPresenter.destroy();
            this.f = null;
        }
    }
}
