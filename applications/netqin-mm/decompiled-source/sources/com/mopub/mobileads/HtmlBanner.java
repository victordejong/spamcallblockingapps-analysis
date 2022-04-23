package com.mopub.mobileads;

import android.app.Activity;
import android.content.Context;
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

    /* renamed from: b */
    public HtmlBannerWebView f34098b;

    /* renamed from: c */
    public ExternalViewabilitySessionManager f34099c;

    /* renamed from: d */
    public boolean f34100d = false;

    /* renamed from: e */
    public WeakReference<Activity> f34101e;

    @Override // com.mopub.mobileads.CustomEventBanner
    /* renamed from: a */
    public void mo4136a(Context context, CustomEventBanner.CustomEventBannerListener customEventBannerListener, Map<String, Object> map, Map<String, String> map2) {
        MoPubLog.log(MoPubLog.AdapterLogEvent.LOAD_ATTEMPTED, ADAPTER_NAME);
        Object obj = map.get(DataKeys.BANNER_IMPRESSION_PIXEL_COUNT_ENABLED);
        if (obj instanceof Boolean) {
            this.f34100d = ((Boolean) obj).booleanValue();
        }
        if (m4390a(map2)) {
            String str = map2.get(DataKeys.HTML_RESPONSE_BODY_KEY);
            try {
                HtmlBannerWebView create = HtmlBannerWebViewFactory.create(context, (AdReport) map.get(DataKeys.AD_REPORT_KEY), customEventBannerListener, map2.get(DataKeys.CLICKTHROUGH_URL_KEY));
                this.f34098b = create;
                AdViewController.setShouldHonorServerDimensions(create);
                MoPubLog.log(MoPubLog.AdapterLogEvent.SHOW_ATTEMPTED, ADAPTER_NAME);
                if (context instanceof Activity) {
                    Activity activity = (Activity) context;
                    this.f34101e = new WeakReference<>(activity);
                    ExternalViewabilitySessionManager externalViewabilitySessionManager = new ExternalViewabilitySessionManager(activity);
                    this.f34099c = externalViewabilitySessionManager;
                    externalViewabilitySessionManager.createDisplaySession(activity, this.f34098b, this.f34100d);
                } else {
                    MoPubLog.log(MoPubLog.AdapterLogEvent.CUSTOM, ADAPTER_NAME, "Unable to start viewability session for HTML banner: Context provided was not an Activity.");
                }
                this.f34098b.m4425a(str);
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

    /* renamed from: a */
    public final boolean m4390a(Map<String, String> map) {
        return map.containsKey(DataKeys.HTML_RESPONSE_BODY_KEY);
    }

    @Override // com.mopub.mobileads.CustomEventBanner
    /* renamed from: b */
    public void mo4132b() {
        ExternalViewabilitySessionManager externalViewabilitySessionManager = this.f34099c;
        if (externalViewabilitySessionManager != null) {
            externalViewabilitySessionManager.endDisplaySession();
            this.f34099c = null;
        }
        HtmlBannerWebView htmlBannerWebView = this.f34098b;
        if (htmlBannerWebView != null) {
            htmlBannerWebView.destroy();
            this.f34098b = null;
        }
    }

    @Override // com.mopub.mobileads.CustomEventBanner
    /* renamed from: c */
    public void mo4130c() {
        WeakReference<Activity> weakReference;
        HtmlBannerWebView htmlBannerWebView = this.f34098b;
        if (htmlBannerWebView != null) {
            htmlBannerWebView.loadUrl(JavaScriptWebViewCallbacks.WEB_VIEW_DID_APPEAR.getUrl());
            if (this.f34100d && this.f34099c != null && (weakReference = this.f34101e) != null) {
                Activity activity = weakReference.get();
                if (activity != null) {
                    this.f34099c.startDeferredDisplaySession(activity);
                } else {
                    MoPubLog.log(MoPubLog.AdapterLogEvent.CUSTOM, ADAPTER_NAME, "Lost the activity for deferred Viewability tracking. Dropping session.");
                }
            }
        }
    }
}
