package p000;

import android.content.Context;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.mopub.common.UrlAction;
import com.mopub.common.UrlHandler;
import com.mopub.mobileads.BaseHtmlWebView;
import com.mopub.mobileads.MoPubErrorCode;
import java.util.EnumSet;
/* renamed from: dh1 */
/* loaded from: classes3-dex2jar.jar:dh1.class */
public class dh1 extends WebViewClient {

    /* renamed from: a */
    public final EnumSet<UrlAction> f5881a = EnumSet.of(UrlAction.HANDLE_MOPUB_SCHEME, UrlAction.IGNORE_ABOUT_SCHEME, UrlAction.HANDLE_PHONE_SCHEME, UrlAction.OPEN_APP_MARKET, UrlAction.OPEN_NATIVE_BROWSER, UrlAction.OPEN_IN_APP_BROWSER, UrlAction.HANDLE_SHARE_TWEET, UrlAction.FOLLOW_DEEP_LINK_WITH_FALLBACK, UrlAction.FOLLOW_DEEP_LINK);

    /* renamed from: b */
    public final Context f5882b;

    /* renamed from: c */
    public final String f5883c;

    /* renamed from: d */
    public BaseHtmlWebView.BaseWebViewListener f5884d;

    /* renamed from: e */
    public final BaseHtmlWebView f5885e;

    /* renamed from: dh1$a */
    /* loaded from: classes3-dex2jar.jar:dh1$a.class */
    public class C1293a implements UrlHandler.MoPubSchemeListener {
        public C1293a() {
            dh1.this = r4;
        }

        @Override // com.mopub.common.UrlHandler.MoPubSchemeListener
        public void onClose() {
            if (dh1.this.f5884d != null) {
                dh1.this.f5884d.onClose();
            }
        }

        @Override // com.mopub.common.UrlHandler.MoPubSchemeListener
        public void onCrash() {
            if (dh1.this.f5884d != null) {
                dh1.this.f5884d.onFailed();
            }
        }

        @Override // com.mopub.common.UrlHandler.MoPubSchemeListener
        public void onFailLoad() {
            dh1.this.f5885e.stopLoading();
            if (dh1.this.f5884d != null) {
                dh1.this.f5884d.onFailedToLoad(MoPubErrorCode.HTML_LOAD_ERROR);
            }
        }

        @Override // com.mopub.common.UrlHandler.MoPubSchemeListener
        public void onFinishLoad() {
            dh1.this.f5885e.setPageLoaded();
            if (dh1.this.f5884d != null) {
                dh1.this.f5884d.onLoaded(dh1.this.f5885e);
            }
        }
    }

    /* renamed from: dh1$b */
    /* loaded from: classes3-dex2jar.jar:dh1$b.class */
    public class C1294b implements UrlHandler.ResultActions {
        public C1294b() {
            dh1.this = r4;
        }

        @Override // com.mopub.common.UrlHandler.ResultActions
        public void urlHandlingFailed(String str, UrlAction urlAction) {
        }

        @Override // com.mopub.common.UrlHandler.ResultActions
        public void urlHandlingSucceeded(String str, UrlAction urlAction) {
            if (dh1.this.f5885e.wasClicked()) {
                if (dh1.this.f5884d != null) {
                    dh1.this.f5884d.onClicked();
                }
                dh1.this.f5885e.onResetUserClick();
            }
        }
    }

    public dh1(BaseHtmlWebView baseHtmlWebView, BaseHtmlWebView.BaseWebViewListener baseWebViewListener, String str) {
        this.f5885e = baseHtmlWebView;
        this.f5883c = str;
        this.f5882b = baseHtmlWebView.getContext();
        this.f5884d = baseWebViewListener;
    }

    @Override // android.webkit.WebViewClient
    public boolean shouldOverrideUrlLoading(WebView webView, String str) {
        new UrlHandler.Builder().withDspCreativeId(this.f5883c).withSupportedUrlActions(this.f5881a).withResultActions(new C1294b()).withMoPubSchemeListener(new C1293a()).build().handleUrl(this.f5882b, str, this.f5885e.wasClicked());
        return true;
    }
}
