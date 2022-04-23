package p131c.p421j.p422a;

import android.graphics.Bitmap;
import android.text.TextUtils;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.mopub.common.MoPubBrowser;
import com.mopub.common.UrlAction;
import com.mopub.common.UrlHandler;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.util.Drawables;
import com.mopub.mobileads.MoPubErrorCode;
import java.util.EnumSet;
/* renamed from: c.j.a.c */
/* loaded from: classes2-dex2jar.jar:c/j/a/c.class */
public class C6632c extends WebViewClient {

    /* renamed from: b */
    public static final EnumSet<UrlAction> f20468b = EnumSet.of(UrlAction.HANDLE_PHONE_SCHEME, UrlAction.OPEN_APP_MARKET, UrlAction.OPEN_IN_APP_BROWSER, UrlAction.HANDLE_SHARE_TWEET, UrlAction.FOLLOW_DEEP_LINK_WITH_FALLBACK, UrlAction.FOLLOW_DEEP_LINK);

    /* renamed from: a */
    public MoPubBrowser f20469a;

    /* renamed from: c.j.a.c$a */
    /* loaded from: classes2-dex2jar.jar:c/j/a/c$a.class */
    public class C6633a implements UrlHandler.ResultActions {
        public C6633a() {
        }

        @Override // com.mopub.common.UrlHandler.ResultActions
        public void urlHandlingFailed(String str, UrlAction urlAction) {
        }

        @Override // com.mopub.common.UrlHandler.ResultActions
        public void urlHandlingSucceeded(String str, UrlAction urlAction) {
            if (urlAction.equals(UrlAction.OPEN_IN_APP_BROWSER)) {
                C6632c.this.f20469a.getWebView().loadUrl(str);
            } else {
                C6632c.this.f20469a.finish();
            }
        }
    }

    public C6632c(MoPubBrowser moPubBrowser) {
        this.f20469a = moPubBrowser;
    }

    @Override // android.webkit.WebViewClient
    public void onPageFinished(WebView webView, String str) {
        super.onPageFinished(webView, str);
        this.f20469a.getBackButton().setImageDrawable(webView.canGoBack() ? Drawables.LEFT_ARROW.createDrawable(this.f20469a) : Drawables.UNLEFT_ARROW.createDrawable(this.f20469a));
        this.f20469a.getForwardButton().setImageDrawable(webView.canGoForward() ? Drawables.RIGHT_ARROW.createDrawable(this.f20469a) : Drawables.UNRIGHT_ARROW.createDrawable(this.f20469a));
    }

    @Override // android.webkit.WebViewClient
    public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
        super.onPageStarted(webView, str, bitmap);
    }

    @Override // android.webkit.WebViewClient
    public void onReceivedError(WebView webView, int i, String str, String str2) {
        MoPubLog.SdkLogEvent sdkLogEvent = MoPubLog.SdkLogEvent.CUSTOM;
        MoPubLog.log(sdkLogEvent, "MoPubBrowser error: " + str);
    }

    @Override // android.webkit.WebViewClient
    public boolean onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
        MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, (renderProcessGoneDetail == null || !renderProcessGoneDetail.didCrash()) ? MoPubErrorCode.RENDER_PROCESS_GONE_UNSPECIFIED : MoPubErrorCode.RENDER_PROCESS_GONE_WITH_CRASH);
        this.f20469a.finish();
        return true;
    }

    @Override // android.webkit.WebViewClient
    public boolean shouldOverrideUrlLoading(WebView webView, String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        return new UrlHandler.Builder().withSupportedUrlActions(f20468b).withoutMoPubBrowser().withResultActions(new C6633a()).build().handleResolvedUrl(this.f20469a.getApplicationContext(), str, true, null);
    }
}
