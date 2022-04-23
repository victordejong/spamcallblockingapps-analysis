package com.mopub.mobileads;

import android.content.Context;
import com.mopub.common.AdReport;
import com.mopub.mobileads.CustomEventBanner;
import p131c.p421j.p424b.C6652f;
/* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/HtmlBannerWebView.class */
public class HtmlBannerWebView extends BaseHtmlWebView {
    public static final String EXTRA_AD_CLICK_DATA = "com.mopub.intent.extra.AD_CLICK_DATA";

    /* renamed from: com.mopub.mobileads.HtmlBannerWebView$a */
    /* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/HtmlBannerWebView$a.class */
    public static class C8772a implements HtmlWebViewListener {

        /* renamed from: a */
        public final CustomEventBanner.CustomEventBannerListener f34102a;

        public C8772a(CustomEventBanner.CustomEventBannerListener customEventBannerListener) {
            this.f34102a = customEventBannerListener;
        }

        @Override // com.mopub.mobileads.HtmlWebViewListener
        public void onClicked() {
            this.f34102a.onBannerClicked();
        }

        @Override // com.mopub.mobileads.HtmlWebViewListener
        public void onCollapsed() {
            this.f34102a.onBannerCollapsed();
        }

        @Override // com.mopub.mobileads.HtmlWebViewListener
        public void onFailed(MoPubErrorCode moPubErrorCode) {
            this.f34102a.onBannerFailed(moPubErrorCode);
        }

        @Override // com.mopub.mobileads.HtmlWebViewListener
        public void onLoaded(BaseHtmlWebView baseHtmlWebView) {
            this.f34102a.onBannerLoaded(baseHtmlWebView);
        }
    }

    public HtmlBannerWebView(Context context, AdReport adReport) {
        super(context, adReport);
    }

    public void init(CustomEventBanner.CustomEventBannerListener customEventBannerListener, String str, String str2) {
        super.init();
        setWebViewClient(new C6652f(new C8772a(customEventBannerListener), this, str, str2));
    }
}
