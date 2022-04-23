package p131c.p421j.p424b;

import android.content.Context;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.mopub.common.UrlAction;
import com.mopub.common.UrlHandler;
import com.mopub.mobileads.BaseHtmlWebView;
import com.mopub.mobileads.HtmlWebViewListener;
import com.mopub.mobileads.MoPubErrorCode;
import java.util.EnumSet;
/* renamed from: c.j.b.f */
/* loaded from: classes2-dex2jar.jar:c/j/b/f.class */
public class C6652f extends WebViewClient {

    /* renamed from: a */
    public final EnumSet<UrlAction> f20543a = EnumSet.of(UrlAction.HANDLE_MOPUB_SCHEME, UrlAction.IGNORE_ABOUT_SCHEME, UrlAction.HANDLE_PHONE_SCHEME, UrlAction.OPEN_APP_MARKET, UrlAction.OPEN_NATIVE_BROWSER, UrlAction.OPEN_IN_APP_BROWSER, UrlAction.HANDLE_SHARE_TWEET, UrlAction.FOLLOW_DEEP_LINK_WITH_FALLBACK, UrlAction.FOLLOW_DEEP_LINK);

    /* renamed from: b */
    public final Context f20544b;

    /* renamed from: c */
    public final String f20545c;

    /* renamed from: d */
    public final HtmlWebViewListener f20546d;

    /* renamed from: e */
    public final BaseHtmlWebView f20547e;

    /* renamed from: c.j.b.f$a */
    /* loaded from: classes2-dex2jar.jar:c/j/b/f$a.class */
    public class C6653a implements UrlHandler.MoPubSchemeListener {
        public C6653a() {
        }

        @Override // com.mopub.common.UrlHandler.MoPubSchemeListener
        public void onClose() {
            C6652f.this.f20546d.onCollapsed();
        }

        @Override // com.mopub.common.UrlHandler.MoPubSchemeListener
        public void onCrash() {
        }

        @Override // com.mopub.common.UrlHandler.MoPubSchemeListener
        public void onFailLoad() {
            C6652f.this.f20547e.stopLoading();
            C6652f.this.f20546d.onFailed(MoPubErrorCode.UNSPECIFIED);
        }

        @Override // com.mopub.common.UrlHandler.MoPubSchemeListener
        public void onFinishLoad() {
            C6652f.this.f20546d.onLoaded(C6652f.this.f20547e);
        }
    }

    /* renamed from: c.j.b.f$b */
    /* loaded from: classes2-dex2jar.jar:c/j/b/f$b.class */
    public class C6654b implements UrlHandler.ResultActions {
        public C6654b() {
        }

        @Override // com.mopub.common.UrlHandler.ResultActions
        public void urlHandlingFailed(String str, UrlAction urlAction) {
        }

        @Override // com.mopub.common.UrlHandler.ResultActions
        public void urlHandlingSucceeded(String str, UrlAction urlAction) {
            if (C6652f.this.f20547e.wasClicked()) {
                C6652f.this.f20546d.onClicked();
                C6652f.this.f20547e.onResetUserClick();
            }
        }
    }

    public C6652f(HtmlWebViewListener htmlWebViewListener, BaseHtmlWebView baseHtmlWebView, String str, String str2) {
        this.f20546d = htmlWebViewListener;
        this.f20547e = baseHtmlWebView;
        this.f20545c = str2;
        this.f20544b = baseHtmlWebView.getContext();
    }

    @Override // android.webkit.WebViewClient
    public boolean shouldOverrideUrlLoading(WebView webView, String str) {
        new UrlHandler.Builder().withDspCreativeId(this.f20545c).withSupportedUrlActions(this.f20543a).withResultActions(new C6654b()).withMoPubSchemeListener(new C6653a()).build().handleUrl(this.f20544b, str, this.f20547e.wasClicked());
        return true;
    }
}
