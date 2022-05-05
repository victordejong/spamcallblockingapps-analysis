package com.mopub.mobileads;

import android.content.Context;
import android.os.Handler;
import com.mopub.common.AdReport;
import com.mopub.mobileads.CustomEventInterstitial;
import p081h.p430l.p433b.C10702e;
/* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/HtmlInterstitialWebView.class */
public class HtmlInterstitialWebView extends BaseHtmlWebView {

    /* renamed from: com.mopub.mobileads.HtmlInterstitialWebView$a */
    /* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/HtmlInterstitialWebView$a.class */
    public static class C3831a implements HtmlWebViewListener {

        /* renamed from: a */
        public final CustomEventInterstitial.CustomEventInterstitialListener f8473a;

        public C3831a(CustomEventInterstitial.CustomEventInterstitialListener customEventInterstitialListener) {
            this.f8473a = customEventInterstitialListener;
        }

        @Override // com.mopub.mobileads.HtmlWebViewListener
        public void onClicked() {
            this.f8473a.onInterstitialClicked();
        }

        @Override // com.mopub.mobileads.HtmlWebViewListener
        public void onCollapsed() {
        }

        @Override // com.mopub.mobileads.HtmlWebViewListener
        public void onFailed(MoPubErrorCode moPubErrorCode) {
            this.f8473a.onInterstitialFailed(moPubErrorCode);
        }

        @Override // com.mopub.mobileads.HtmlWebViewListener
        public void onLoaded(BaseHtmlWebView baseHtmlWebView) {
            this.f8473a.onInterstitialLoaded();
        }
    }

    public HtmlInterstitialWebView(Context context, AdReport adReport) {
        super(context, adReport);
        new Handler();
    }

    public void init(CustomEventInterstitial.CustomEventInterstitialListener customEventInterstitialListener, boolean z, String str, String str2, String str3) {
        super.init(z);
        setWebViewClient(new C10702e(new C3831a(customEventInterstitialListener), this, str2, str, str3));
    }
}
