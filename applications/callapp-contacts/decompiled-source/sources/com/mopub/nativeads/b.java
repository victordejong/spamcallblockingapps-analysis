package com.mopub.nativeads;

import android.content.Context;
import android.os.Handler;
import com.mopub.common.CallAppBidderManager;
import com.mopub.common.DataKeys;
import com.mopub.common.MoPub;
import com.mopub.common.Preconditions;
import com.mopub.common.ViewabilityVendor;
import com.mopub.common.logging.MoPubLog;
import com.mopub.mobileads.MoPubErrorCode;
import com.mopub.nativeads.CustomEventNative;
import com.mopub.nativeads.factories.CustomEventNativeFactory;
import com.mopub.network.AdResponse;
import java.util.Map;
import java.util.Set;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4-dex2jar.jar:com/mopub/nativeads/b.class */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    CustomEventNative.CustomEventNativeListener f34666a;
    private CustomEventNative e;
    private boolean f = false;

    /* renamed from: b  reason: collision with root package name */
    volatile boolean f34667b = false;

    /* renamed from: c  reason: collision with root package name */
    private final Handler f34668c = new Handler();

    /* renamed from: d  reason: collision with root package name */
    private final Runnable f34669d = new Runnable() { // from class: com.mopub.nativeads.b.1
        @Override // java.lang.Runnable
        public final void run() {
            if (!b.this.f34667b) {
                MoPubLog.SdkLogEvent sdkLogEvent = MoPubLog.SdkLogEvent.CUSTOM;
                MoPubLog.log(sdkLogEvent, "CustomEventNativeAdapter() failed with code " + MoPubErrorCode.NETWORK_TIMEOUT.getIntCode() + " and message " + MoPubErrorCode.NETWORK_TIMEOUT);
                b.this.a();
                b.this.f34666a.onNativeAdFailed(NativeErrorCode.NETWORK_TIMEOUT);
            }
        }
    };

    /* JADX INFO: Access modifiers changed from: package-private */
    public b(CustomEventNative.CustomEventNativeListener customEventNativeListener) {
        Preconditions.checkNotNull(customEventNativeListener);
        this.f34666a = customEventNativeListener;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a() {
        try {
            if (this.e != null && this.f34667b) {
                this.e.a();
            }
        } catch (Exception e) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM_WITH_THROWABLE, "", e);
        }
        b();
    }

    final void b() {
        synchronized (this) {
            if (!this.f34667b) {
                this.f34667b = true;
                this.f34668c.removeCallbacks(this.f34669d);
                CustomEventNative customEventNative = this.e;
                if (customEventNative != null) {
                    try {
                        customEventNative.a();
                    } catch (Exception e) {
                        MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, e.toString());
                    }
                    this.e = null;
                }
            }
        }
    }

    public final boolean isStoppedByFloorPrice() {
        return this.f;
    }

    public final void loadNativeAd(Context context, Map<String, Object> map, AdResponse adResponse) {
        String str;
        Preconditions.checkNotNull(context);
        Preconditions.checkNotNull(map);
        Preconditions.checkNotNull(adResponse);
        try {
            if (!(adResponse.getServerExtras() == null || (str = adResponse.getServerExtras().get(DataKeys.CALLAPP_FLOOR_PRICE_KEY)) == null)) {
                map.put(DataKeys.CALLAPP_FLOOR_PRICE_KEY, Double.valueOf(Double.parseDouble(str)));
            }
        } catch (NumberFormatException e) {
        }
        final double publisherRevenue = MoPub.getPublisherRevenue(adResponse, map, null);
        Object obj = map.get(DataKeys.CALLAPP_REQUEST_ID);
        if (CallAppBidderManager.shouldStopLoading(obj instanceof String ? (String) obj : "", publisherRevenue)) {
            this.f = true;
            b();
            this.f34666a.onNativeAdFailed(NativeErrorCode.MIN_FLOOR_PRICE_REACHED);
            return;
        }
        String customEventClassName = adResponse.getCustomEventClassName();
        MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, adResponse.getDspCreativeId());
        try {
            this.e = CustomEventNativeFactory.create(customEventClassName);
            if (adResponse.hasJson()) {
                map.put(DataKeys.JSON_BODY_KEY, adResponse.getJsonBody());
            }
            map.put(DataKeys.CLICK_TRACKING_URL_KEY, adResponse.getClickTrackingUrls());
            Set<ViewabilityVendor> viewabilityVendors = adResponse.getViewabilityVendors();
            if (viewabilityVendors != null) {
                map.put(DataKeys.VIEWABILITY_VENDORS_KEY, viewabilityVendors);
            }
            if (customEventClassName != null) {
                try {
                    if (customEventClassName.equals("com.mopub.nativeads.MoPubCustomEventNative")) {
                        map.put(DataKeys.CALLAPP_AD_UNIT_ID, adResponse.getAdUnitId());
                    }
                } catch (Exception e2) {
                    MoPubLog.SdkLogEvent sdkLogEvent = MoPubLog.SdkLogEvent.CUSTOM;
                    MoPubLog.log(sdkLogEvent, "loadNativeAd() failed with code " + MoPubErrorCode.ADAPTER_NOT_FOUND.getIntCode() + " and message " + MoPubErrorCode.ADAPTER_NOT_FOUND);
                    this.f34666a.onNativeAdFailed(NativeErrorCode.NATIVE_ADAPTER_NOT_FOUND);
                    return;
                }
            }
            this.e.loadNativeAd(context, new CustomEventNative.CustomEventNativeListener() { // from class: com.mopub.nativeads.b.2
                @Override // com.mopub.nativeads.CustomEventNative.CustomEventNativeListener
                public final void onNativeAdFailed(NativeErrorCode nativeErrorCode) {
                    if (!b.this.f34667b) {
                        MoPubLog.SdkLogEvent sdkLogEvent2 = MoPubLog.SdkLogEvent.CUSTOM;
                        MoPubLog.log(sdkLogEvent2, "onNativeAdFailed with code " + nativeErrorCode.getIntCode() + " and message " + nativeErrorCode);
                        b.this.b();
                        b.this.f34666a.onNativeAdFailed(nativeErrorCode);
                    }
                }

                @Override // com.mopub.nativeads.CustomEventNative.CustomEventNativeListener
                public final void onNativeAdLoaded(BaseNativeAd baseNativeAd) {
                    if (!b.this.f34667b) {
                        MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "onNativeAdLoaded");
                        b.this.b();
                        baseNativeAd.getCallAppExtras().putDouble(DataKeys.CALLAPP_FLOOR_PRICE_KEY, publisherRevenue);
                        b.this.f34666a.onNativeAdLoaded(baseNativeAd);
                    }
                }
            }, map, adResponse.getServerExtras());
            this.f34668c.postDelayed(this.f34669d, adResponse.getAdTimeoutMillis(30000).intValue());
        } catch (Exception e3) {
            MoPubLog.SdkLogEvent sdkLogEvent2 = MoPubLog.SdkLogEvent.CUSTOM;
            MoPubLog.log(sdkLogEvent2, "loadNativeAd() failed with code " + MoPubErrorCode.ADAPTER_NOT_FOUND.getIntCode() + " and message " + MoPubErrorCode.ADAPTER_NOT_FOUND);
            this.f34666a.onNativeAdFailed(NativeErrorCode.NATIVE_ADAPTER_NOT_FOUND);
        }
    }
}
