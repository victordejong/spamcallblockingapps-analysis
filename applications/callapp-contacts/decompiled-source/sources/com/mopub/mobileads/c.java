package com.mopub.mobileads;

import android.content.Context;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.mopub.common.UrlAction;
import com.mopub.common.UrlHandler;
import com.mopub.mobileads.BaseHtmlWebView;
import java.util.EnumSet;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/c.class */
public final class c extends WebViewClient {

    /* renamed from: a  reason: collision with root package name */
    private final EnumSet<UrlAction> f34383a = EnumSet.of(UrlAction.HANDLE_MOPUB_SCHEME, UrlAction.IGNORE_ABOUT_SCHEME, UrlAction.HANDLE_PHONE_SCHEME, UrlAction.OPEN_APP_MARKET, UrlAction.OPEN_NATIVE_BROWSER, UrlAction.OPEN_IN_APP_BROWSER, UrlAction.HANDLE_SHARE_TWEET, UrlAction.FOLLOW_DEEP_LINK_WITH_FALLBACK, UrlAction.FOLLOW_DEEP_LINK);

    /* renamed from: b  reason: collision with root package name */
    private final Context f34384b;

    /* renamed from: c  reason: collision with root package name */
    private final String f34385c;

    /* renamed from: d  reason: collision with root package name */
    private BaseHtmlWebView.BaseWebViewListener f34386d;
    private final BaseHtmlWebView e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public c(BaseHtmlWebView baseHtmlWebView, BaseHtmlWebView.BaseWebViewListener baseWebViewListener, String str) {
        this.e = baseHtmlWebView;
        this.f34385c = str;
        this.f34384b = baseHtmlWebView.getContext();
        this.f34386d = baseWebViewListener;
    }

    @Override // android.webkit.WebViewClient
    public final boolean shouldOverrideUrlLoading(WebView webView, String str) {
        new UrlHandler.Builder().withDspCreativeId(this.f34385c).withSupportedUrlActions(this.f34383a).withResultActions(new UrlHandler.ResultActions() { // from class: com.mopub.mobileads.c.2
            @Override // com.mopub.common.UrlHandler.ResultActions
            public final void urlHandlingFailed(String str2, UrlAction urlAction) {
            }

            @Override // com.mopub.common.UrlHandler.ResultActions
            public final void urlHandlingSucceeded(String str2, UrlAction urlAction) {
                if (c.this.e.wasClicked()) {
                    if (c.this.f34386d != null) {
                        c.this.f34386d.onClicked();
                    }
                    c.this.e.onResetUserClick();
                }
            }
        }).withMoPubSchemeListener(new UrlHandler.MoPubSchemeListener() { // from class: com.mopub.mobileads.c.1
            @Override // com.mopub.common.UrlHandler.MoPubSchemeListener
            public final void onClose() {
                if (c.this.f34386d != null) {
                    c.this.f34386d.onClose();
                }
            }

            @Override // com.mopub.common.UrlHandler.MoPubSchemeListener
            public final void onCrash() {
                if (c.this.f34386d != null) {
                    c.this.f34386d.onFailed();
                }
            }

            @Override // com.mopub.common.UrlHandler.MoPubSchemeListener
            public final void onFailLoad() {
                c.this.e.stopLoading();
                if (c.this.f34386d != null) {
                    c.this.f34386d.onFailedToLoad(MoPubErrorCode.HTML_LOAD_ERROR);
                }
            }

            @Override // com.mopub.common.UrlHandler.MoPubSchemeListener
            public final void onFinishLoad() {
                c.this.e.setPageLoaded();
                if (c.this.f34386d != null) {
                    c.this.f34386d.onLoaded(c.this.e);
                }
            }
        }).build().handleUrl(this.f34384b, str, this.e.wasClicked());
        return true;
    }
}
