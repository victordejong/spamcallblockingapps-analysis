package com.mopub.mobileads.util;

import android.webkit.CookieManager;
import android.webkit.JsPromptResult;
import android.webkit.JsResult;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import com.mopub.common.MoPub;
import com.mopub.common.Preconditions;
import com.mopub.common.logging.MoPubLog;
/* loaded from: classes3-dex2jar.jar:com/mopub/mobileads/util/WebViews.class */
public class WebViews {

    /* renamed from: com.mopub.mobileads.util.WebViews$a */
    /* loaded from: classes3-dex2jar.jar:com/mopub/mobileads/util/WebViews$a.class */
    public static final class C2700a extends WebChromeClient {
        @Override // android.webkit.WebChromeClient
        public boolean onJsAlert(WebView webView, String str, String str2, JsResult jsResult) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, str2);
            jsResult.confirm();
            return true;
        }

        @Override // android.webkit.WebChromeClient
        public boolean onJsBeforeUnload(WebView webView, String str, String str2, JsResult jsResult) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, str2);
            jsResult.confirm();
            return true;
        }

        @Override // android.webkit.WebChromeClient
        public boolean onJsConfirm(WebView webView, String str, String str2, JsResult jsResult) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, str2);
            jsResult.confirm();
            return true;
        }

        @Override // android.webkit.WebChromeClient
        public boolean onJsPrompt(WebView webView, String str, String str2, String str3, JsPromptResult jsPromptResult) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, str2);
            jsPromptResult.confirm();
            return true;
        }
    }

    public static void manageThirdPartyCookies(WebView webView) {
        Preconditions.checkNotNull(webView);
        CookieManager.getInstance().setAcceptThirdPartyCookies(webView, MoPub.canCollectPersonalInformation());
    }

    public static void manageWebCookies() {
        CookieManager cookieManager = CookieManager.getInstance();
        if (MoPub.canCollectPersonalInformation()) {
            cookieManager.setAcceptCookie(true);
            CookieManager.setAcceptFileSchemeCookies(true);
            return;
        }
        cookieManager.setAcceptCookie(false);
        CookieManager.setAcceptFileSchemeCookies(false);
        cookieManager.removeSessionCookies(null);
        cookieManager.removeAllCookies(null);
        cookieManager.flush();
    }

    public static void onPause(WebView webView, boolean z) {
        if (z) {
            webView.stopLoading();
            webView.loadUrl("");
        }
        webView.onPause();
    }

    public static void setDisableJSChromeClient(WebView webView) {
        webView.setWebChromeClient(new C2700a());
    }
}
