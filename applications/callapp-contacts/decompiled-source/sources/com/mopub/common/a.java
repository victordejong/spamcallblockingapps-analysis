package com.mopub.common;

import android.graphics.Bitmap;
import android.text.TextUtils;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.mopub.common.UrlHandler;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.util.Drawables;
import com.mopub.mobileads.MoPubErrorCode;
import java.util.EnumSet;
/* loaded from: classes4-dex2jar.jar:com/mopub/common/a.class */
final class a extends WebViewClient {

    /* renamed from: a  reason: collision with root package name */
    private static final EnumSet<UrlAction> f33905a = EnumSet.of(UrlAction.HANDLE_PHONE_SCHEME, UrlAction.OPEN_APP_MARKET, UrlAction.OPEN_IN_APP_BROWSER, UrlAction.HANDLE_SHARE_TWEET, UrlAction.FOLLOW_DEEP_LINK_WITH_FALLBACK, UrlAction.FOLLOW_DEEP_LINK);

    /* renamed from: b  reason: collision with root package name */
    private MoPubBrowser f33906b;

    public a(MoPubBrowser moPubBrowser) {
        this.f33906b = moPubBrowser;
    }

    @Override // android.webkit.WebViewClient
    public final void onPageFinished(WebView webView, String str) {
        super.onPageFinished(webView, str);
        this.f33906b.getBackButton().setImageDrawable(webView.canGoBack() ? Drawables.LEFT_ARROW.createDrawable(this.f33906b) : Drawables.UNLEFT_ARROW.createDrawable(this.f33906b));
        this.f33906b.getForwardButton().setImageDrawable(webView.canGoForward() ? Drawables.RIGHT_ARROW.createDrawable(this.f33906b) : Drawables.UNRIGHT_ARROW.createDrawable(this.f33906b));
    }

    @Override // android.webkit.WebViewClient
    public final void onPageStarted(WebView webView, String str, Bitmap bitmap) {
        super.onPageStarted(webView, str, bitmap);
    }

    @Override // android.webkit.WebViewClient
    public final void onReceivedError(WebView webView, int i, String str, String str2) {
        MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "MoPubBrowser error: ".concat(String.valueOf(str)));
    }

    @Override // android.webkit.WebViewClient
    public final boolean onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
        MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, (renderProcessGoneDetail == null || !renderProcessGoneDetail.didCrash()) ? MoPubErrorCode.RENDER_PROCESS_GONE_UNSPECIFIED : MoPubErrorCode.RENDER_PROCESS_GONE_WITH_CRASH);
        this.f33906b.finish();
        return true;
    }

    @Override // android.webkit.WebViewClient
    public final boolean shouldOverrideUrlLoading(WebView webView, String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        return new UrlHandler.Builder().withSupportedUrlActions(f33905a).withoutMoPubBrowser().withResultActions(new UrlHandler.ResultActions() { // from class: com.mopub.common.a.1
            @Override // com.mopub.common.UrlHandler.ResultActions
            public final void urlHandlingFailed(String str2, UrlAction urlAction) {
            }

            @Override // com.mopub.common.UrlHandler.ResultActions
            public final void urlHandlingSucceeded(String str2, UrlAction urlAction) {
                if (urlAction.equals(UrlAction.OPEN_IN_APP_BROWSER)) {
                    a.this.f33906b.getWebView().loadUrl(str2);
                } else {
                    a.this.f33906b.finish();
                }
            }
        }).build().handleResolvedUrl(this.f33906b.getApplicationContext(), str, true, null);
    }
}
