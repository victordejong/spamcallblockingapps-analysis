package p000;

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
/* renamed from: xf1 */
/* loaded from: classes3-dex2jar.jar:xf1.class */
public class xf1 extends WebViewClient {

    /* renamed from: b */
    public static final EnumSet<UrlAction> f8699b = EnumSet.of(UrlAction.HANDLE_PHONE_SCHEME, UrlAction.OPEN_APP_MARKET, UrlAction.OPEN_IN_APP_BROWSER, UrlAction.HANDLE_SHARE_TWEET, UrlAction.FOLLOW_DEEP_LINK_WITH_FALLBACK, UrlAction.FOLLOW_DEEP_LINK);

    /* renamed from: a */
    public MoPubBrowser f8700a;

    /* renamed from: xf1$a */
    /* loaded from: classes3-dex2jar.jar:xf1$a.class */
    public class C1732a implements UrlHandler.ResultActions {
        public C1732a() {
            xf1.this = r4;
        }

        @Override // com.mopub.common.UrlHandler.ResultActions
        public void urlHandlingFailed(String str, UrlAction urlAction) {
        }

        @Override // com.mopub.common.UrlHandler.ResultActions
        public void urlHandlingSucceeded(String str, UrlAction urlAction) {
            if (urlAction.equals(UrlAction.OPEN_IN_APP_BROWSER)) {
                xf1.this.f8700a.getWebView().loadUrl(str);
            } else {
                xf1.this.f8700a.finish();
            }
        }
    }

    public xf1(MoPubBrowser moPubBrowser) {
        this.f8700a = moPubBrowser;
    }

    @Override // android.webkit.WebViewClient
    public void onPageFinished(WebView webView, String str) {
        super.onPageFinished(webView, str);
        this.f8700a.getBackButton().setImageDrawable((webView.canGoBack() ? Drawables.LEFT_ARROW : Drawables.UNLEFT_ARROW).createDrawable(this.f8700a));
        this.f8700a.getForwardButton().setImageDrawable((webView.canGoForward() ? Drawables.RIGHT_ARROW : Drawables.UNRIGHT_ARROW).createDrawable(this.f8700a));
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
        this.f8700a.finish();
        return true;
    }

    @Override // android.webkit.WebViewClient
    public boolean shouldOverrideUrlLoading(WebView webView, String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        return new UrlHandler.Builder().withSupportedUrlActions(f8699b).withoutMoPubBrowser().withResultActions(new C1732a()).build().handleResolvedUrl(this.f8700a.getApplicationContext(), str, true, null);
    }
}
