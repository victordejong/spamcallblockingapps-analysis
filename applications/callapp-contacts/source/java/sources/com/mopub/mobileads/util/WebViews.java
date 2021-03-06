package com.mopub.mobileads.util;

import android.os.Build;
import android.webkit.CookieManager;
import android.webkit.JsPromptResult;
import android.webkit.JsResult;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import com.mopub.common.MoPub;
import com.mopub.common.Preconditions;
import com.mopub.common.logging.MoPubLog;
/* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/util/WebViews.class */
public class WebViews {
    public static void manageThirdPartyCookies(WebView webView) {
        Preconditions.checkNotNull(webView);
        CookieManager cookieManager = CookieManager.getInstance();
        if (Build.VERSION.SDK_INT >= 21) {
            cookieManager.setAcceptThirdPartyCookies(webView, MoPub.canCollectPersonalInformation());
        }
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
        if (Build.VERSION.SDK_INT < 21) {
            cookieManager.removeSessionCookie();
            cookieManager.removeAllCookie();
            return;
        }
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
        webView.setWebChromeClient(new WebChromeClient() { // from class: com.mopub.mobileads.util.WebViews.1
            @Override // android.webkit.WebChromeClient
            public final boolean onJsAlert(WebView webView2, String str, String str2, JsResult jsResult) {
                MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, str2);
                jsResult.confirm();
                return true;
            }

            @Override // android.webkit.WebChromeClient
            public final boolean onJsBeforeUnload(WebView webView2, String str, String str2, JsResult jsResult) {
                MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, str2);
                jsResult.confirm();
                return true;
            }

            @Override // android.webkit.WebChromeClient
            public final boolean onJsConfirm(WebView webView2, String str, String str2, JsResult jsResult) {
                MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, str2);
                jsResult.confirm();
                return true;
            }

            @Override // android.webkit.WebChromeClient
            public final boolean onJsPrompt(WebView webView2, String str, String str2, String str3, JsPromptResult jsPromptResult) {
                MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, str2);
                jsPromptResult.confirm();
                return true;
            }
        });
    }
}
