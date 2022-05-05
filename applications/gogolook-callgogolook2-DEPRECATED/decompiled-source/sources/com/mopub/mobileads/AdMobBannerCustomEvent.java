package com.mopub.mobileads;

import android.content.Context;
import com.google.android.gms.ads.AdListener;
import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.ads.AdView;
import com.mopub.common.util.Views;
import com.mopub.mobileads.CustomEventBanner;
import java.util.Map;
import p081h.p160h.p161a.p165k.C6232c;
import p081h.p160h.p161a.p168n.C6260a;
import p081h.p160h.p161a.p169o.C6262a;
/* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/AdMobBannerCustomEvent.class */
public class AdMobBannerCustomEvent extends BaseCustomEventBanner {
    public static final String AD_HEIGHT_KEY = "adHeight";
    public static final String AD_UNIT_ID_KEY = "adUnitID";
    public static final String AD_WIDTH_KEY = "adWidth";
    public static final String LOCATION_KEY = "location";

    /* renamed from: b */
    public CustomEventBanner.CustomEventBannerListener f8378b;

    /* renamed from: c */
    public AdView f8379c;

    /* renamed from: com.mopub.mobileads.AdMobBannerCustomEvent$b */
    /* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/AdMobBannerCustomEvent$b.class */
    public class C3818b extends AdListener {
        public C3818b() {
        }

        /* renamed from: a */
        public final MoPubErrorCode m30624a(int i) {
            return i != 0 ? i != 1 ? i != 2 ? i != 3 ? MoPubErrorCode.UNSPECIFIED : MoPubErrorCode.NO_FILL : MoPubErrorCode.NO_CONNECTION : MoPubErrorCode.ADAPTER_CONFIGURATION_ERROR : MoPubErrorCode.INTERNAL_ERROR;
        }

        @Override // com.google.android.gms.ads.AdListener
        public void onAdClosed() {
        }

        @Override // com.google.android.gms.ads.AdListener
        public void onAdFailedToLoad(int i) {
            MoPubErrorCode a = m30624a(i);
            if (AdMobBannerCustomEvent.this.f8425a != null) {
                String str = null;
                if (a == MoPubErrorCode.UNSPECIFIED) {
                    str = "errorCode: " + i;
                }
                AdMobBannerCustomEvent.this.f8425a.m23467b(C6260a.m23469a(a.name(), str));
            }
            if (AdMobBannerCustomEvent.this.f8378b != null) {
                AdMobBannerCustomEvent.this.f8378b.onBannerFailed(a);
            }
        }

        @Override // com.google.android.gms.ads.AdListener
        public void onAdLeftApplication() {
        }

        @Override // com.google.android.gms.ads.AdListener
        public void onAdLoaded() {
            C6260a aVar = AdMobBannerCustomEvent.this.f8425a;
            if (aVar != null) {
                aVar.m23467b(C6262a.EnumC6263a.NETWORK_FILL.name());
            }
            if (AdMobBannerCustomEvent.this.f8378b != null) {
                AdMobBannerCustomEvent.this.f8378b.onBannerLoaded(AdMobBannerCustomEvent.this.f8379c);
            }
        }

        @Override // com.google.android.gms.ads.AdListener
        public void onAdOpened() {
            if (AdMobBannerCustomEvent.this.f8378b != null) {
                AdMobBannerCustomEvent.this.f8378b.onBannerClicked();
            }
        }
    }

    /* renamed from: a */
    public final AdSize m30628a(int i, int i2) {
        return (i > 0 || i2 > 0) ? (i == AdSize.BANNER.getWidth() && i2 == AdSize.BANNER.getHeight()) ? AdSize.BANNER : (i == AdSize.LARGE_BANNER.getWidth() && i2 == AdSize.LARGE_BANNER.getHeight()) ? AdSize.LARGE_BANNER : (i == AdSize.MEDIUM_RECTANGLE.getWidth() && i2 == AdSize.MEDIUM_RECTANGLE.getHeight()) ? AdSize.MEDIUM_RECTANGLE : (i == AdSize.FULL_BANNER.getWidth() && i2 == AdSize.FULL_BANNER.getHeight()) ? AdSize.FULL_BANNER : (i == AdSize.LEADERBOARD.getWidth() && i2 == AdSize.LEADERBOARD.getHeight()) ? AdSize.LEADERBOARD : (i == AdSize.WIDE_SKYSCRAPER.getWidth() && i2 == AdSize.WIDE_SKYSCRAPER.getHeight()) ? AdSize.WIDE_SKYSCRAPER : AdSize.SMART_BANNER : AdSize.SMART_BANNER;
    }

    /* renamed from: c */
    public final boolean m30625c(Map<String, String> map) {
        try {
            Integer.parseInt(map.get(AD_WIDTH_KEY));
            Integer.parseInt(map.get(AD_HEIGHT_KEY));
            return map.containsKey(AD_UNIT_ID_KEY);
        } catch (NumberFormatException e) {
            return false;
        }
    }

    @Override // com.mopub.mobileads.BaseCustomEventBanner, com.mopub.mobileads.CustomEventBanner
    public void loadBanner(Context context, CustomEventBanner.CustomEventBannerListener customEventBannerListener, Map<String, Object> map, Map<String, String> map2) {
        super.loadBanner(context, customEventBannerListener, map, map2);
        C6260a aVar = this.f8425a;
        if (aVar != null) {
            aVar.m23470a(AdMobBannerCustomEvent.class.getName());
        }
        this.f8378b = customEventBannerListener;
        if (m30625c(map2)) {
            String str = map2.get(AD_UNIT_ID_KEY);
            int parseInt = Integer.parseInt(map2.get(AD_WIDTH_KEY));
            int parseInt2 = Integer.parseInt(map2.get(AD_HEIGHT_KEY));
            boolean isValidUsingTestAdSource = isValidUsingTestAdSource(map2);
            this.f8379c = new AdView(context);
            this.f8379c.setAdListener(new C3818b());
            this.f8379c.setAdUnitId(str);
            AdSize a = m30628a(parseInt, parseInt2);
            if (a == null) {
                this.f8378b.onBannerFailed(MoPubErrorCode.ADAPTER_CONFIGURATION_ERROR);
                return;
            }
            this.f8379c.setAdSize(a);
            AdRequest.Builder requestAgent = new AdRequest.Builder().setRequestAgent("MoPub");
            if (isValidUsingTestAdSource) {
                requestAgent.addTestDevice(C6232c.m23517a(context));
            }
            AdRequest build = requestAgent.build();
            try {
                if (this.f8425a != null) {
                    this.f8425a.m23456j();
                }
                this.f8379c.loadAd(build);
            } catch (NoClassDefFoundError e) {
                this.f8378b.onBannerFailed(MoPubErrorCode.NETWORK_NO_FILL);
            }
        } else {
            this.f8378b.onBannerFailed(MoPubErrorCode.ADAPTER_CONFIGURATION_ERROR);
        }
    }

    @Override // com.mopub.mobileads.CustomEventBanner
    public void onInvalidate() {
        Views.removeFromParent(this.f8379c);
        AdView adView = this.f8379c;
        if (adView != null) {
            adView.setAdListener(null);
            this.f8379c.destroy();
        }
    }
}
