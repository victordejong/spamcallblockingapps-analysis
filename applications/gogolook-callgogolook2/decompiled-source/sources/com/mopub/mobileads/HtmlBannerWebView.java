package com.mopub.mobileads;

import android.content.Context;
import com.mopub.common.AdReport;
import com.mopub.mobileads.CustomEventBanner;
import p081h.p430l.p433b.C10702e;
/* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/HtmlBannerWebView.class */
public class HtmlBannerWebView extends BaseHtmlWebView {
    public static final String EXTRA_AD_CLICK_DATA = "com.mopub.intent.extra.AD_CLICK_DATA";

    /* renamed from: com.mopub.mobileads.HtmlBannerWebView$a */
    /* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/HtmlBannerWebView$a.class */
    public static class C3830a implements HtmlWebViewListener {

        /* renamed from: a */
        public final CustomEventBanner.CustomEventBannerListener f8467a;

        public C3830a(CustomEventBanner.CustomEventBannerListener customEventBannerListener) {
            this.f8467a = customEventBannerListener;
        }

        @Override // com.mopub.mobileads.HtmlWebViewListener
        public void onClicked() {
            this.f8467a.onBannerClicked();
        }

        @Override // com.mopub.mobileads.HtmlWebViewListener
        public void onCollapsed() {
            this.f8467a.onBannerCollapsed();
        }

        @Override // com.mopub.mobileads.HtmlWebViewListener
        public void onFailed(MoPubErrorCode moPubErrorCode) {
            this.f8467a.onBannerFailed(moPubErrorCode);
        }

        @Override // com.mopub.mobileads.HtmlWebViewListener
        public void onLoaded(BaseHtmlWebView baseHtmlWebView) {
            this.f8467a.onBannerLoaded(baseHtmlWebView);
        }
    }

    public HtmlBannerWebView(Context context, AdReport adReport) {
        super(context, adReport);
    }

    public void init(CustomEventBanner.CustomEventBannerListener customEventBannerListener, String str, String str2) {
        super.init();
        setWebViewClient(new C10702e(new C3830a(customEventBannerListener), this, str, str2));
    }
}
