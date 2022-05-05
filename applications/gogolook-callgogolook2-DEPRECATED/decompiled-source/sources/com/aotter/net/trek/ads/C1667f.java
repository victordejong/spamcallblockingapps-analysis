package com.aotter.net.trek.ads;

import com.aotter.net.trek.ads.CustomEventBanner;
/* renamed from: com.aotter.net.trek.ads.f */
/* loaded from: classes-dex2jar.jar:com/aotter/net/trek/ads/f.class */
public class C1667f implements HtmlWebViewListener {

    /* renamed from: a */
    public final CustomEventBanner.CustomEventBannerListener f1192a;

    public C1667f(CustomEventBanner.CustomEventBannerListener customEventBannerListener) {
        this.f1192a = customEventBannerListener;
    }

    @Override // com.aotter.net.trek.ads.HtmlWebViewListener
    public void onClicked() {
        this.f1192a.onBannerClicked();
    }

    @Override // com.aotter.net.trek.ads.HtmlWebViewListener
    public void onCollapsed() {
        this.f1192a.onBannerCollapsed();
    }

    @Override // com.aotter.net.trek.ads.HtmlWebViewListener
    public void onFailed() {
        this.f1192a.onBannerFailed();
    }

    @Override // com.aotter.net.trek.ads.HtmlWebViewListener
    public void onLoaded(BaseHtmlWebView baseHtmlWebView) {
        this.f1192a.onBannerLoaded(baseHtmlWebView);
    }
}
