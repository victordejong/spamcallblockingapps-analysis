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
import net.pubnative.lite.sdk.models.C20576Ad;
/* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/PubNativeInterstitial.class */
public class PubNativeInterstitial extends BaseAd implements InterstitialPresenter.Listener {
    public static final String ZONE_ID_KEY = "pn_zone_id";

    /* renamed from: d */
    private static final String f59426d = "PubNativeInterstitial";

    /* renamed from: f */
    private InterstitialPresenter f59428f;

    /* renamed from: g */
    private String f59429g;

    /* renamed from: i */
    private String f59431i;

    /* renamed from: e */
    private final AtomicBoolean f59427e = new AtomicBoolean(false);

    /* renamed from: h */
    private double f59430h = 0.0d;

    /* renamed from: j */
    private final PubNativeAdapterConfiguration f59432j = new PubNativeAdapterConfiguration();

    @Override // com.mopub.mobileads.BaseAd
    /* renamed from: a */
    protected final void mo6371a() {
        InterstitialPresenter interstitialPresenter = this.f59428f;
        if (interstitialPresenter != null) {
            interstitialPresenter.show();
        }
    }

    @Override // com.mopub.mobileads.BaseAd
    public String getAdNetworkId() {
        String str = this.f59429g;
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
        this.f59432j.initializeNetwork(context, extras);
        if (!extras.containsKey(ZONE_ID_KEY)) {
            CLog.m27606a(f59426d);
            if (this.f59119b == null) {
                return;
            }
            this.f59119b.onAdLoadFailed(MoPubErrorCode.ADAPTER_CONFIGURATION_ERROR);
            return;
        }
        this.f59429g = extras.get(ZONE_ID_KEY);
        this.f59432j.setCachedInitializationParameters(context, extras);
        this.f59430h = AdUtils.m27266a(extras);
        this.f59431i = extras.get("app_bidder_request_id");
        C20576Ad c20576Ad = null;
        String str = extras.get("adm");
        if (StringUtils.m26045b((CharSequence) str)) {
            BidObjectCache.Companion companion = BidObjectCache.f28004a;
            c20576Ad = (C20576Ad) BidObjectCache.Companion.m27233a(str);
        }
        if (c20576Ad == null) {
            String str2 = f59426d;
            new StringBuilder("Could not find an ad in the cache for zone id with key ").append(this.f59429g);
            CLog.m27606a(str2);
            if (this.f59119b == null) {
                return;
            }
            this.f59119b.onAdLoadFailed(MoPubErrorCode.ADAPTER_CONFIGURATION_ERROR);
            return;
        }
        InterstitialPresenter createInterstitialPresenter = new InterstitialPresenterFactory(context, this.f59429g).createInterstitialPresenter(c20576Ad, this);
        this.f59428f = createInterstitialPresenter;
        if (createInterstitialPresenter != null) {
            createInterstitialPresenter.load();
            return;
        }
        CLog.m27606a(f59426d);
        if (this.f59119b == null) {
            return;
        }
        this.f59119b.onAdLoadFailed(MoPubErrorCode.ADAPTER_CONFIGURATION_ERROR);
    }

    @Override // net.pubnative.lite.sdk.interstitial.presenter.InterstitialPresenter.Listener
    public void onInterstitialClicked(InterstitialPresenter interstitialPresenter) {
        if (this.f59120c != null) {
            this.f59120c.onAdClicked();
        }
        if (!this.f59427e.getAndSet(true)) {
            CallAppAdsAnalyticsManager.m28737c(getProviderTag(), this.f59429g, MoPub.AD_TYPE_AND_SIZE.INTERSTITIAL);
        }
    }

    @Override // net.pubnative.lite.sdk.interstitial.presenter.InterstitialPresenter.Listener
    public void onInterstitialDismissed(InterstitialPresenter interstitialPresenter) {
        if (this.f59120c != null) {
            this.f59120c.onAdDismissed();
        }
    }

    @Override // net.pubnative.lite.sdk.interstitial.presenter.InterstitialPresenter.Listener
    public void onInterstitialError(InterstitialPresenter interstitialPresenter) {
        if (this.f59119b != null) {
            this.f59119b.onAdLoadFailed(MoPubErrorCode.INTERNAL_ERROR);
        }
    }

    @Override // net.pubnative.lite.sdk.interstitial.presenter.InterstitialPresenter.Listener
    public void onInterstitialLoaded(InterstitialPresenter interstitialPresenter) {
        if (this.f59119b != null) {
            this.f59119b.onAdLoaded();
        }
    }

    @Override // net.pubnative.lite.sdk.interstitial.presenter.InterstitialPresenter.Listener
    public void onInterstitialShown(InterstitialPresenter interstitialPresenter) {
        if (this.f59120c != null) {
            this.f59120c.onAdShown();
        }
        this.f59427e.set(false);
        CallAppAdsAnalyticsManager.m28740a(getProviderTag(), this.f59429g, this.f59430h, MoPub.AD_TYPE_AND_SIZE.INTERSTITIAL, this.f59431i);
    }

    @Override // com.mopub.mobileads.BaseAd
    public void onInvalidate() {
        InterstitialPresenter interstitialPresenter = this.f59428f;
        if (interstitialPresenter != null) {
            interstitialPresenter.destroy();
            this.f59428f = null;
        }
    }
}
