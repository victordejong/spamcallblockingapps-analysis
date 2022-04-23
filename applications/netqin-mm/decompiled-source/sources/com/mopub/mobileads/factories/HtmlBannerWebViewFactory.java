package com.mopub.mobileads.factories;

import android.content.Context;
import com.mopub.common.AdReport;
import com.mopub.mobileads.CustomEventBanner;
import com.mopub.mobileads.HtmlBannerWebView;
/* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/factories/HtmlBannerWebViewFactory.class */
public class HtmlBannerWebViewFactory {

    /* renamed from: a */
    public static HtmlBannerWebViewFactory f34504a = new HtmlBannerWebViewFactory();

    public static HtmlBannerWebView create(Context context, AdReport adReport, CustomEventBanner.CustomEventBannerListener customEventBannerListener, String str) {
        return f34504a.internalCreate(context, adReport, customEventBannerListener, str);
    }

    @Deprecated
    public static void setInstance(HtmlBannerWebViewFactory htmlBannerWebViewFactory) {
        f34504a = htmlBannerWebViewFactory;
    }

    public HtmlBannerWebView internalCreate(Context context, AdReport adReport, CustomEventBanner.CustomEventBannerListener customEventBannerListener, String str) {
        HtmlBannerWebView htmlBannerWebView = new HtmlBannerWebView(context, adReport);
        htmlBannerWebView.init(customEventBannerListener, str, adReport.getDspCreativeId());
        return htmlBannerWebView;
    }
}
