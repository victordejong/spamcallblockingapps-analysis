package p000;

import android.content.Context;
import android.os.Handler;
import com.mopub.common.DataKeys;
import com.mopub.common.Preconditions;
import com.mopub.common.ViewabilityVendor;
import com.mopub.common.logging.MoPubLog;
import com.mopub.mobileads.MoPubErrorCode;
import com.mopub.nativeads.BaseNativeAd;
import com.mopub.nativeads.CustomEventNative;
import com.mopub.nativeads.NativeErrorCode;
import com.mopub.nativeads.factories.CustomEventNativeFactory;
import com.mopub.network.AdResponse;
import java.util.Map;
import java.util.Set;
/* renamed from: vh1 */
/* loaded from: classes3-dex2jar.jar:vh1.class */
public final class vh1 {

    /* renamed from: c */
    public CustomEventNative f8386c;

    /* renamed from: d */
    public CustomEventNative.CustomEventNativeListener f8387d;

    /* renamed from: e */
    public volatile boolean f8388e = false;

    /* renamed from: a */
    public final Handler f8384a = new Handler();

    /* renamed from: b */
    public final Runnable f8385b = new RunnableC1695a();

    /* renamed from: vh1$a */
    /* loaded from: classes3-dex2jar.jar:vh1$a.class */
    public class RunnableC1695a implements Runnable {
        public RunnableC1695a() {
            vh1.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (vh1.this.f8388e) {
                return;
            }
            MoPubLog.SdkLogEvent sdkLogEvent = MoPubLog.SdkLogEvent.CUSTOM;
            StringBuilder sb = new StringBuilder();
            sb.append("CustomEventNativeAdapter() failed with code ");
            MoPubErrorCode moPubErrorCode = MoPubErrorCode.NETWORK_TIMEOUT;
            sb.append(moPubErrorCode.getIntCode());
            sb.append(" and message ");
            sb.append(moPubErrorCode);
            MoPubLog.log(sdkLogEvent, sb.toString());
            vh1.this.m319f();
            vh1.this.f8387d.onNativeAdFailed(NativeErrorCode.NETWORK_TIMEOUT);
        }
    }

    /* renamed from: vh1$b */
    /* loaded from: classes3-dex2jar.jar:vh1$b.class */
    public class C1696b implements CustomEventNative.CustomEventNativeListener {
        public C1696b() {
            vh1.this = r4;
        }

        @Override // com.mopub.nativeads.CustomEventNative.CustomEventNativeListener
        public void onNativeAdFailed(NativeErrorCode nativeErrorCode) {
            if (vh1.this.f8388e) {
                return;
            }
            MoPubLog.SdkLogEvent sdkLogEvent = MoPubLog.SdkLogEvent.CUSTOM;
            MoPubLog.log(sdkLogEvent, "onNativeAdFailed with code " + nativeErrorCode.getIntCode() + " and message " + nativeErrorCode);
            vh1.this.m320e();
            vh1.this.f8387d.onNativeAdFailed(nativeErrorCode);
        }

        @Override // com.mopub.nativeads.CustomEventNative.CustomEventNativeListener
        public void onNativeAdLoaded(BaseNativeAd baseNativeAd) {
            if (vh1.this.f8388e) {
                return;
            }
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "onNativeAdLoaded");
            vh1.this.m320e();
            vh1.this.f8387d.onNativeAdLoaded(baseNativeAd);
        }
    }

    public vh1(CustomEventNative.CustomEventNativeListener customEventNativeListener) {
        Preconditions.checkNotNull(customEventNativeListener);
        this.f8387d = customEventNativeListener;
    }

    /* renamed from: d */
    public final CustomEventNative.CustomEventNativeListener m321d() {
        return new C1696b();
    }

    /* renamed from: e */
    public final void m320e() {
        synchronized (this) {
            if (!this.f8388e) {
                this.f8388e = true;
                this.f8384a.removeCallbacks(this.f8385b);
                CustomEventNative customEventNative = this.f8386c;
                if (customEventNative != null) {
                    try {
                        customEventNative.mo3341b();
                    } catch (Exception e) {
                        MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, e.toString());
                    }
                    this.f8386c = null;
                }
            }
        }
    }

    /* renamed from: f */
    public void m319f() {
        try {
            if (this.f8386c != null && this.f8388e) {
                this.f8386c.mo3341b();
            }
        } catch (Exception e) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM_WITH_THROWABLE, "", e);
        }
        m320e();
    }

    public void loadNativeAd(Context context, Map<String, Object> map, AdResponse adResponse) {
        Preconditions.checkNotNull(context);
        Preconditions.checkNotNull(map);
        Preconditions.checkNotNull(adResponse);
        String customEventClassName = adResponse.getCustomEventClassName();
        MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, adResponse.getDspCreativeId());
        try {
            this.f8386c = CustomEventNativeFactory.create(customEventClassName);
            if (adResponse.hasJson()) {
                map.put(DataKeys.JSON_BODY_KEY, adResponse.getJsonBody());
            }
            map.put(DataKeys.CLICK_TRACKING_URL_KEY, adResponse.getClickTrackingUrls());
            Set<ViewabilityVendor> viewabilityVendors = adResponse.getViewabilityVendors();
            if (viewabilityVendors != null) {
                map.put(DataKeys.VIEWABILITY_VENDORS_KEY, viewabilityVendors);
            }
            try {
                this.f8386c.mo3342a(context, m321d(), map, adResponse.getServerExtras());
                this.f8384a.postDelayed(this.f8385b, adResponse.getAdTimeoutMillis(30000).intValue());
            } catch (Exception e) {
                MoPubLog.SdkLogEvent sdkLogEvent = MoPubLog.SdkLogEvent.CUSTOM;
                StringBuilder sb = new StringBuilder();
                sb.append("loadNativeAd() failed with code ");
                MoPubErrorCode moPubErrorCode = MoPubErrorCode.ADAPTER_NOT_FOUND;
                sb.append(moPubErrorCode.getIntCode());
                sb.append(" and message ");
                sb.append(moPubErrorCode);
                MoPubLog.log(sdkLogEvent, sb.toString());
                this.f8387d.onNativeAdFailed(NativeErrorCode.NATIVE_ADAPTER_NOT_FOUND);
            }
        } catch (Exception e2) {
            MoPubLog.SdkLogEvent sdkLogEvent2 = MoPubLog.SdkLogEvent.CUSTOM;
            StringBuilder sb2 = new StringBuilder();
            sb2.append("loadNativeAd() failed with code ");
            MoPubErrorCode moPubErrorCode2 = MoPubErrorCode.ADAPTER_NOT_FOUND;
            sb2.append(moPubErrorCode2.getIntCode());
            sb2.append(" and message ");
            sb2.append(moPubErrorCode2);
            MoPubLog.log(sdkLogEvent2, sb2.toString());
            this.f8387d.onNativeAdFailed(NativeErrorCode.NATIVE_ADAPTER_NOT_FOUND);
        }
    }
}
