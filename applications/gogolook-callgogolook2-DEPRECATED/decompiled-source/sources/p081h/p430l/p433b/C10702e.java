package p081h.p430l.p433b;

import android.content.Context;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import androidx.annotation.NonNull;
import com.mopub.common.UrlAction;
import com.mopub.common.UrlHandler;
import com.mopub.mobileads.BaseHtmlWebView;
import com.mopub.mobileads.HtmlWebViewListener;
import com.mopub.mobileads.MoPubErrorCode;
import java.util.EnumSet;
/* renamed from: h.l.b.e */
/* loaded from: classes2-dex2jar.jar:h/l/b/e.class */
public class C10702e extends WebViewClient {

    /* renamed from: a */
    public final EnumSet<UrlAction> f24393a = EnumSet.of(UrlAction.HANDLE_MOPUB_SCHEME, UrlAction.IGNORE_ABOUT_SCHEME, UrlAction.HANDLE_PHONE_SCHEME, UrlAction.OPEN_APP_MARKET, UrlAction.OPEN_NATIVE_BROWSER, UrlAction.OPEN_IN_APP_BROWSER, UrlAction.HANDLE_SHARE_TWEET, UrlAction.FOLLOW_DEEP_LINK_WITH_FALLBACK, UrlAction.FOLLOW_DEEP_LINK);

    /* renamed from: b */
    public final Context f24394b;

    /* renamed from: c */
    public final String f24395c;

    /* renamed from: d */
    public final HtmlWebViewListener f24396d;

    /* renamed from: e */
    public final BaseHtmlWebView f24397e;

    /* renamed from: h.l.b.e$a */
    /* loaded from: classes2-dex2jar.jar:h/l/b/e$a.class */
    public class C10703a implements UrlHandler.MoPubSchemeListener {
        public C10703a() {
        }

        @Override // com.mopub.common.UrlHandler.MoPubSchemeListener
        public void onClose() {
            C10702e.this.f24396d.onCollapsed();
        }

        @Override // com.mopub.common.UrlHandler.MoPubSchemeListener
        public void onCrash() {
        }

        @Override // com.mopub.common.UrlHandler.MoPubSchemeListener
        public void onFailLoad() {
            C10702e.this.f24397e.stopLoading();
            C10702e.this.f24396d.onFailed(MoPubErrorCode.UNSPECIFIED);
        }

        @Override // com.mopub.common.UrlHandler.MoPubSchemeListener
        public void onFinishLoad() {
            C10702e.this.f24396d.onLoaded(C10702e.this.f24397e);
        }
    }

    /* renamed from: h.l.b.e$b */
    /* loaded from: classes2-dex2jar.jar:h/l/b/e$b.class */
    public class C10704b implements UrlHandler.ResultActions {
        public C10704b() {
        }

        @Override // com.mopub.common.UrlHandler.ResultActions
        public void urlHandlingFailed(@NonNull String str, @NonNull UrlAction urlAction) {
        }

        @Override // com.mopub.common.UrlHandler.ResultActions
        public void urlHandlingSucceeded(@NonNull String str, @NonNull UrlAction urlAction) {
            if (C10702e.this.f24397e.wasClicked()) {
                C10702e.this.f24396d.onClicked();
                C10702e.this.f24397e.onResetUserClick();
            }
        }
    }

    public C10702e(HtmlWebViewListener htmlWebViewListener, BaseHtmlWebView baseHtmlWebView, String str, String str2) {
        this.f24396d = htmlWebViewListener;
        this.f24397e = baseHtmlWebView;
        this.f24395c = str2;
        this.f24394b = baseHtmlWebView.getContext();
    }

    @Override // android.webkit.WebViewClient
    public boolean shouldOverrideUrlLoading(WebView webView, String str) {
        new UrlHandler.Builder().withDspCreativeId(this.f24395c).withSupportedUrlActions(this.f24393a).withResultActions(new C10704b()).withMoPubSchemeListener(new C10703a()).build().handleUrl(this.f24394b, str, this.f24397e.wasClicked());
        return true;
    }
}
