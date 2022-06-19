package com.mopub.mobileads;

import android.content.Context;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.mopub.common.UrlAction;
import com.mopub.common.UrlHandler;
import com.mopub.mobileads.BaseHtmlWebView;
import java.util.EnumSet;
/* renamed from: com.mopub.mobileads.c */
/* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/c.class */
public final class C16859c extends WebViewClient {

    /* renamed from: a */
    private final EnumSet<UrlAction> f59675a = EnumSet.of(UrlAction.HANDLE_MOPUB_SCHEME, UrlAction.IGNORE_ABOUT_SCHEME, UrlAction.HANDLE_PHONE_SCHEME, UrlAction.OPEN_APP_MARKET, UrlAction.OPEN_NATIVE_BROWSER, UrlAction.OPEN_IN_APP_BROWSER, UrlAction.HANDLE_SHARE_TWEET, UrlAction.FOLLOW_DEEP_LINK_WITH_FALLBACK, UrlAction.FOLLOW_DEEP_LINK);

    /* renamed from: b */
    private final Context f59676b;

    /* renamed from: c */
    private final String f59677c;

    /* renamed from: d */
    private BaseHtmlWebView.BaseWebViewListener f59678d;

    /* renamed from: e */
    private final BaseHtmlWebView f59679e;

    public C16859c(BaseHtmlWebView baseHtmlWebView, BaseHtmlWebView.BaseWebViewListener baseWebViewListener, String str) {
        this.f59679e = baseHtmlWebView;
        this.f59677c = str;
        this.f59676b = baseHtmlWebView.getContext();
        this.f59678d = baseWebViewListener;
    }

    @Override // android.webkit.WebViewClient
    public final boolean shouldOverrideUrlLoading(WebView webView, String str) {
        new UrlHandler.Builder().withDspCreativeId(this.f59677c).withSupportedUrlActions(this.f59675a).withResultActions(new UrlHandler.ResultActions() { // from class: com.mopub.mobileads.c.2
            @Override // com.mopub.common.UrlHandler.ResultActions
            public final void urlHandlingFailed(String str2, UrlAction urlAction) {
            }

            @Override // com.mopub.common.UrlHandler.ResultActions
            public final void urlHandlingSucceeded(String str2, UrlAction urlAction) {
                if (C16859c.this.f59679e.wasClicked()) {
                    if (C16859c.this.f59678d != null) {
                        C16859c.this.f59678d.onClicked();
                    }
                    C16859c.this.f59679e.onResetUserClick();
                }
            }
        }).withMoPubSchemeListener(new UrlHandler.MoPubSchemeListener() { // from class: com.mopub.mobileads.c.1
            @Override // com.mopub.common.UrlHandler.MoPubSchemeListener
            public final void onClose() {
                if (C16859c.this.f59678d != null) {
                    C16859c.this.f59678d.onClose();
                }
            }

            @Override // com.mopub.common.UrlHandler.MoPubSchemeListener
            public final void onCrash() {
                if (C16859c.this.f59678d != null) {
                    C16859c.this.f59678d.onFailed();
                }
            }

            @Override // com.mopub.common.UrlHandler.MoPubSchemeListener
            public final void onFailLoad() {
                C16859c.this.f59679e.stopLoading();
                if (C16859c.this.f59678d != null) {
                    C16859c.this.f59678d.onFailedToLoad(MoPubErrorCode.HTML_LOAD_ERROR);
                }
            }

            @Override // com.mopub.common.UrlHandler.MoPubSchemeListener
            public final void onFinishLoad() {
                C16859c.this.f59679e.setPageLoaded();
                if (C16859c.this.f59678d != null) {
                    C16859c.this.f59678d.onLoaded(C16859c.this.f59679e);
                }
            }
        }).build().handleUrl(this.f59676b, str, this.f59679e.wasClicked());
        return true;
    }
}
