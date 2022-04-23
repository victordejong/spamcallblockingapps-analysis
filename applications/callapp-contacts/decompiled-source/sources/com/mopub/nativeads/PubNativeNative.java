package com.mopub.nativeads;

import android.content.Context;
import android.view.View;
import com.callapp.contacts.manager.CallAppAdsAnalyticsManager;
import com.callapp.contacts.util.CLog;
import com.callapp.contacts.util.ads.AdUtils;
import com.mopub.common.MoPub;
import com.mopub.mobileads.PubNativeAdapterConfiguration;
import com.mopub.mobileads.PubNativeInterstitial;
import com.mopub.nativeads.CustomEventNative;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import net.pubnative.lite.sdk.models.NativeAd;
import net.pubnative.lite.sdk.request.HyBidNativeAdRequest;
/* loaded from: classes4-dex2jar.jar:com/mopub/nativeads/PubNativeNative.class */
public class PubNativeNative extends CustomEventNative implements HyBidNativeAdRequest.RequestListener {

    /* renamed from: a  reason: collision with root package name */
    private static final String f34642a = "PubNativeNative";

    /* renamed from: b  reason: collision with root package name */
    private CustomEventNative.CustomEventNativeListener f34643b;

    /* renamed from: c  reason: collision with root package name */
    private Context f34644c;

    /* renamed from: d  reason: collision with root package name */
    private HyBidNativeAdRequest f34645d;
    private String f;
    private String g;
    private double e = 0.0d;
    private PubNativeAdapterConfiguration h = new PubNativeAdapterConfiguration();

    /* loaded from: classes4-dex2jar.jar:com/mopub/nativeads/PubNativeNative$HyBidStaticNativeAd.class */
    class HyBidStaticNativeAd extends StaticNativeAd implements NativeAd.Listener {
        private AtomicBoolean clickReported = new AtomicBoolean(false);
        private final ImpressionTracker mImpressionTracker;
        private final CustomEventNative.CustomEventNativeListener mListener;
        private final NativeAd mNativeAd;
        private final double price;
        private final String zoneId;

        public HyBidStaticNativeAd(NativeAd nativeAd, ImpressionTracker impressionTracker, CustomEventNative.CustomEventNativeListener customEventNativeListener, double d2, String str) {
            this.mNativeAd = nativeAd;
            this.mImpressionTracker = impressionTracker;
            this.mListener = customEventNativeListener;
            fillData();
            if (customEventNativeListener != null) {
                customEventNativeListener.onNativeAdLoaded(this);
            }
            this.price = d2;
            this.zoneId = str;
        }

        private void fillData() {
            setTitle(this.mNativeAd.getTitle());
            setText(this.mNativeAd.getDescription());
            setIconImageUrl(this.mNativeAd.getIconUrl());
            setMainImageUrl(this.mNativeAd.getBannerUrl());
            setCallToAction(this.mNativeAd.getCallToActionText());
            setStarRating(Double.valueOf(this.mNativeAd.getRating()));
            setPrivacyInformationIconImageUrl(this.mNativeAd.getContentInfoIconUrl());
            setPrivacyInformationIconClickThroughUrl(this.mNativeAd.getContentInfoClickUrl());
        }

        @Override // com.mopub.nativeads.StaticNativeAd, com.mopub.nativeads.BaseNativeAd
        public void clear(View view) {
            this.mImpressionTracker.removeView(view);
            this.mNativeAd.stopTracking();
        }

        @Override // net.pubnative.lite.sdk.models.NativeAd.Listener
        public void onAdClick(NativeAd nativeAd, View view) {
            notifyAdClicked();
            if (!this.clickReported.getAndSet(true)) {
                String str = this.zoneId;
                MoPub.AD_TYPE_AND_SIZE ad_type_and_size = MoPub.AD_TYPE_AND_SIZE.NATIVE;
                String unused = PubNativeNative.this.f;
                CallAppAdsAnalyticsManager.c("pubnative", str, ad_type_and_size);
            }
        }

        @Override // net.pubnative.lite.sdk.models.NativeAd.Listener
        public void onAdImpression(NativeAd nativeAd, View view) {
            notifyAdImpressed();
            CallAppAdsAnalyticsManager.a("pubnative", this.zoneId, this.price, MoPub.AD_TYPE_AND_SIZE.NATIVE, PubNativeNative.this.f);
        }

        @Override // com.mopub.nativeads.StaticNativeAd, com.mopub.nativeads.BaseNativeAd
        public void prepare(View view) {
            this.mImpressionTracker.addView(view, this);
            this.mNativeAd.startTracking(view, this);
        }
    }

    @Override // com.mopub.nativeads.CustomEventNative
    public void loadNativeAd(Context context, CustomEventNative.CustomEventNativeListener customEventNativeListener, Map<String, Object> map, Map<String, String> map2) {
        this.f34644c = context;
        this.f34643b = customEventNativeListener;
        this.h.initializeNetwork(context, map2);
        if (map2.containsKey(PubNativeInterstitial.ZONE_ID_KEY)) {
            this.g = map2.get(PubNativeInterstitial.ZONE_ID_KEY);
            this.h.setCachedInitializationParameters(context, map2);
            this.e = AdUtils.a(map2);
            this.f = map2.get("app_bidder_request_id");
            HyBidNativeAdRequest hyBidNativeAdRequest = new HyBidNativeAdRequest();
            this.f34645d = hyBidNativeAdRequest;
            hyBidNativeAdRequest.setMediation(true);
            this.f34645d.load(this.g, this);
            return;
        }
        CLog.a(f34642a);
        this.f34643b.onNativeAdFailed(NativeErrorCode.NATIVE_ADAPTER_CONFIGURATION_ERROR);
    }

    @Override // net.pubnative.lite.sdk.request.HyBidNativeAdRequest.RequestListener
    public void onRequestFail(Throwable th) {
        CustomEventNative.CustomEventNativeListener customEventNativeListener = this.f34643b;
        if (customEventNativeListener != null) {
            customEventNativeListener.onNativeAdFailed(NativeErrorCode.NETWORK_NO_FILL);
        }
    }

    @Override // net.pubnative.lite.sdk.request.HyBidNativeAdRequest.RequestListener
    public void onRequestSuccess(NativeAd nativeAd) {
        new HyBidStaticNativeAd(nativeAd, new ImpressionTracker(this.f34644c), this.f34643b, this.e, this.g);
    }
}
