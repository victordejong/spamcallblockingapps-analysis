package com.mopub.mobileads;

import android.app.Activity;
import android.content.Context;
import androidx.annotation.Nullable;
import com.mopub.common.AdReport;
import com.mopub.common.DataKeys;
import com.mopub.common.ExternalViewabilitySessionManager;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.util.JavaScriptWebViewCallbacks;
import com.mopub.mobileads.CustomEventBanner;
import com.mopub.mobileads.factories.HtmlBannerWebViewFactory;
import java.lang.ref.WeakReference;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/HtmlBanner.class */
public class HtmlBanner extends CustomEventBanner {
    public static final String ADAPTER_NAME = "HtmlBanner";
    @Nullable

    /* renamed from: a */
    public HtmlBannerWebView f8463a;
    @Nullable

    /* renamed from: b */
    public ExternalViewabilitySessionManager f8464b;

    /* renamed from: c */
    public boolean f8465c = false;
    @Nullable

    /* renamed from: d */
    public WeakReference<Activity> f8466d;

    /* renamed from: b */
    public final boolean m30551b(Map<String, String> map) {
        return map.containsKey(DataKeys.HTML_RESPONSE_BODY_KEY);
    }

    @Override // com.mopub.mobileads.CustomEventBanner
    public void loadBanner(Context context, CustomEventBanner.CustomEventBannerListener customEventBannerListener, Map<String, Object> map, Map<String, String> map2) {
        MoPubLog.log(MoPubLog.AdapterLogEvent.LOAD_ATTEMPTED, ADAPTER_NAME);
        Object obj = map.get(DataKeys.BANNER_IMPRESSION_PIXEL_COUNT_ENABLED);
        if (obj instanceof Boolean) {
            this.f8465c = ((Boolean) obj).booleanValue();
        }
        if (m30551b(map2)) {
            String str = map2.get(DataKeys.HTML_RESPONSE_BODY_KEY);
            try {
                this.f8463a = HtmlBannerWebViewFactory.create(context, (AdReport) map.get(DataKeys.AD_REPORT_KEY), customEventBannerListener, map2.get(DataKeys.CLICKTHROUGH_URL_KEY));
                AdViewController.setShouldHonorServerDimensions(this.f8463a);
                MoPubLog.log(MoPubLog.AdapterLogEvent.SHOW_ATTEMPTED, ADAPTER_NAME);
                if (context instanceof Activity) {
                    Activity activity = (Activity) context;
                    this.f8466d = new WeakReference<>(activity);
                    this.f8464b = new ExternalViewabilitySessionManager(activity);
                    this.f8464b.createDisplaySession(activity, this.f8463a, this.f8465c);
                } else {
                    MoPubLog.log(MoPubLog.AdapterLogEvent.CUSTOM, ADAPTER_NAME, "Unable to start viewability session for HTML banner: Context provided was not an Activity.");
                }
                this.f8463a.m30577a(str);
                MoPubLog.log(MoPubLog.AdapterLogEvent.SHOW_SUCCESS, ADAPTER_NAME);
            } catch (ClassCastException e) {
                MoPubLog.log(MoPubLog.AdapterLogEvent.LOAD_FAILED, ADAPTER_NAME, Integer.valueOf(MoPubErrorCode.INTERNAL_ERROR.getIntCode()), MoPubErrorCode.INTERNAL_ERROR);
                customEventBannerListener.onBannerFailed(MoPubErrorCode.INTERNAL_ERROR);
            }
        } else {
            MoPubLog.log(MoPubLog.AdapterLogEvent.LOAD_FAILED, ADAPTER_NAME, Integer.valueOf(MoPubErrorCode.NETWORK_INVALID_STATE.getIntCode()), MoPubErrorCode.NETWORK_INVALID_STATE);
            customEventBannerListener.onBannerFailed(MoPubErrorCode.NETWORK_INVALID_STATE);
        }
    }

    @Override // com.mopub.mobileads.CustomEventBanner
    public void onInvalidate() {
        ExternalViewabilitySessionManager externalViewabilitySessionManager = this.f8464b;
        if (externalViewabilitySessionManager != null) {
            externalViewabilitySessionManager.endDisplaySession();
            this.f8464b = null;
        }
        HtmlBannerWebView htmlBannerWebView = this.f8463a;
        if (htmlBannerWebView != null) {
            htmlBannerWebView.destroy();
            this.f8463a = null;
        }
    }

    @Override // com.mopub.mobileads.CustomEventBanner
    public void trackMpxAndThirdPartyImpressions() {
        WeakReference<Activity> weakReference;
        HtmlBannerWebView htmlBannerWebView = this.f8463a;
        if (htmlBannerWebView != null) {
            htmlBannerWebView.loadUrl(JavaScriptWebViewCallbacks.WEB_VIEW_DID_APPEAR.getUrl());
            if (this.f8465c && this.f8464b != null && (weakReference = this.f8466d) != null) {
                Activity activity = weakReference.get();
                if (activity != null) {
                    this.f8464b.startDeferredDisplaySession(activity);
                } else {
                    MoPubLog.log(MoPubLog.AdapterLogEvent.CUSTOM, ADAPTER_NAME, "Lost the activity for deferred Viewability tracking. Dropping session.");
                }
            }
        }
    }
}
