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
/* renamed from: com.mopub.nativeads.b */
/* loaded from: classes4-dex2jar.jar:com/mopub/nativeads/b.class */
public final class C16971b {

    /* renamed from: a */
    CustomEventNative.CustomEventNativeListener f60139a;

    /* renamed from: e */
    private CustomEventNative f60143e;

    /* renamed from: f */
    private boolean f60144f = false;

    /* renamed from: b */
    volatile boolean f60140b = false;

    /* renamed from: c */
    private final Handler f60141c = new Handler();

    /* renamed from: d */
    private final Runnable f60142d = new Runnable() { // from class: com.mopub.nativeads.b.1
        @Override // java.lang.Runnable
        public final void run() {
            if (C16971b.this.f60140b) {
                return;
            }
            MoPubLog.SdkLogEvent sdkLogEvent = MoPubLog.SdkLogEvent.CUSTOM;
            MoPubLog.log(sdkLogEvent, "CustomEventNativeAdapter() failed with code " + MoPubErrorCode.NETWORK_TIMEOUT.getIntCode() + " and message " + MoPubErrorCode.NETWORK_TIMEOUT);
            C16971b.this.m6123a();
            C16971b.this.f60139a.onNativeAdFailed(NativeErrorCode.NETWORK_TIMEOUT);
        }
    };

    public C16971b(CustomEventNative.CustomEventNativeListener customEventNativeListener) {
        Preconditions.checkNotNull(customEventNativeListener);
        this.f60139a = customEventNativeListener;
    }

    /* renamed from: a */
    public final void m6123a() {
        try {
            if (this.f60143e != null && this.f60140b) {
                this.f60143e.mo6188a();
            }
        } catch (Exception e) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM_WITH_THROWABLE, "", e);
        }
        m6122b();
    }

    /* renamed from: b */
    final void m6122b() {
        synchronized (this) {
            if (!this.f60140b) {
                this.f60140b = true;
                this.f60141c.removeCallbacks(this.f60142d);
                CustomEventNative customEventNative = this.f60143e;
                if (customEventNative != null) {
                    try {
                        customEventNative.mo6188a();
                    } catch (Exception e) {
                        MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, e.toString());
                    }
                    this.f60143e = null;
                }
            }
        }
    }

    public final boolean isStoppedByFloorPrice() {
        return this.f60144f;
    }

    public final void loadNativeAd(Context context, Map<String, Object> map, AdResponse adResponse) {
        String str;
        Preconditions.checkNotNull(context);
        Preconditions.checkNotNull(map);
        Preconditions.checkNotNull(adResponse);
        try {
            if (adResponse.getServerExtras() != null && (str = adResponse.getServerExtras().get(DataKeys.CALLAPP_FLOOR_PRICE_KEY)) != null) {
                map.put(DataKeys.CALLAPP_FLOOR_PRICE_KEY, Double.valueOf(Double.parseDouble(str)));
            }
        } catch (NumberFormatException e) {
        }
        final double publisherRevenue = MoPub.getPublisherRevenue(adResponse, map, null);
        Object obj = map.get(DataKeys.CALLAPP_REQUEST_ID);
        if (CallAppBidderManager.shouldStopLoading(obj instanceof String ? (String) obj : "", publisherRevenue)) {
            this.f60144f = true;
            m6122b();
            this.f60139a.onNativeAdFailed(NativeErrorCode.MIN_FLOOR_PRICE_REACHED);
            return;
        }
        String customEventClassName = adResponse.getCustomEventClassName();
        MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, adResponse.getDspCreativeId());
        try {
            this.f60143e = CustomEventNativeFactory.create(customEventClassName);
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
                    this.f60139a.onNativeAdFailed(NativeErrorCode.NATIVE_ADAPTER_NOT_FOUND);
                    return;
                }
            }
            this.f60143e.loadNativeAd(context, new CustomEventNative.CustomEventNativeListener() { // from class: com.mopub.nativeads.b.2
                @Override // com.mopub.nativeads.CustomEventNative.CustomEventNativeListener
                public final void onNativeAdFailed(NativeErrorCode nativeErrorCode) {
                    if (C16971b.this.f60140b) {
                        return;
                    }
                    MoPubLog.SdkLogEvent sdkLogEvent2 = MoPubLog.SdkLogEvent.CUSTOM;
                    MoPubLog.log(sdkLogEvent2, "onNativeAdFailed with code " + nativeErrorCode.getIntCode() + " and message " + nativeErrorCode);
                    C16971b.this.m6122b();
                    C16971b.this.f60139a.onNativeAdFailed(nativeErrorCode);
                }

                @Override // com.mopub.nativeads.CustomEventNative.CustomEventNativeListener
                public final void onNativeAdLoaded(BaseNativeAd baseNativeAd) {
                    if (C16971b.this.f60140b) {
                        return;
                    }
                    MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "onNativeAdLoaded");
                    C16971b.this.m6122b();
                    baseNativeAd.getCallAppExtras().putDouble(DataKeys.CALLAPP_FLOOR_PRICE_KEY, publisherRevenue);
                    C16971b.this.f60139a.onNativeAdLoaded(baseNativeAd);
                }
            }, map, adResponse.getServerExtras());
            this.f60141c.postDelayed(this.f60142d, adResponse.getAdTimeoutMillis(30000).intValue());
        } catch (Exception e3) {
            MoPubLog.SdkLogEvent sdkLogEvent2 = MoPubLog.SdkLogEvent.CUSTOM;
            MoPubLog.log(sdkLogEvent2, "loadNativeAd() failed with code " + MoPubErrorCode.ADAPTER_NOT_FOUND.getIntCode() + " and message " + MoPubErrorCode.ADAPTER_NOT_FOUND);
            this.f60139a.onNativeAdFailed(NativeErrorCode.NATIVE_ADAPTER_NOT_FOUND);
        }
    }
}
