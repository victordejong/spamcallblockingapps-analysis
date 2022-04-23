package com.mopub.mobileads;

import android.content.Context;
import android.os.Handler;
import com.mopub.common.AdReport;
import com.mopub.mobileads.CustomEventInterstitial;
import p131c.p421j.p424b.C6652f;
/* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/HtmlInterstitialWebView.class */
public class HtmlInterstitialWebView extends BaseHtmlWebView {

    /* renamed from: com.mopub.mobileads.HtmlInterstitialWebView$a */
    /* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/HtmlInterstitialWebView$a.class */
    public static class C8773a implements HtmlWebViewListener {

        /* renamed from: a */
        public final CustomEventInterstitial.CustomEventInterstitialListener f34105a;

        public C8773a(CustomEventInterstitial.CustomEventInterstitialListener customEventInterstitialListener) {
            this.f34105a = customEventInterstitialListener;
        }

        @Override // com.mopub.mobileads.HtmlWebViewListener
        public void onClicked() {
            this.f34105a.onInterstitialClicked();
        }

        @Override // com.mopub.mobileads.HtmlWebViewListener
        public void onCollapsed() {
        }

        @Override // com.mopub.mobileads.HtmlWebViewListener
        public void onFailed(MoPubErrorCode moPubErrorCode) {
            this.f34105a.onInterstitialFailed(moPubErrorCode);
        }

        @Override // com.mopub.mobileads.HtmlWebViewListener
        public void onLoaded(BaseHtmlWebView baseHtmlWebView) {
            this.f34105a.onInterstitialLoaded();
        }
    }

    public HtmlInterstitialWebView(Context context, AdReport adReport) {
        super(context, adReport);
        new Handler();
    }

    public void init(CustomEventInterstitial.CustomEventInterstitialListener customEventInterstitialListener, String str, String str2) {
        super.init();
        setWebViewClient(new C6652f(new C8773a(customEventInterstitialListener), this, str, str2));
    }
}
