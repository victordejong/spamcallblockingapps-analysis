package com.callapp.contacts.util.webview;

import android.webkit.CookieManager;
import android.webkit.CookieSyncManager;
import android.webkit.ValueCallback;
import android.webkit.WebView;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.util.CLog;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/webview/WebViewUtils.class */
public class WebViewUtils {

    /* renamed from: a */
    private static String f28529a = "javascript: ";

    /* renamed from: a */
    public static void m26868a(WebView webView, String str) {
        try {
            webView.evaluateJavascript(str, new ValueCallback<String>() { // from class: com.callapp.contacts.util.webview.WebViewUtils.1
                @Override // android.webkit.ValueCallback
                public final /* bridge */ /* synthetic */ void onReceiveValue(String str2) {
                }
            });
        } catch (Exception e) {
            CLog.m27609a(WebViewUtils.class, e);
        }
    }

    /* renamed from: a */
    public static void m26867a(String str) {
        String[] split;
        CookieSyncManager.createInstance(CallAppApplication.get()).sync();
        CookieManager cookieManager = CookieManager.getInstance();
        String cookie = cookieManager.getCookie(str);
        if (cookie == null) {
            return;
        }
        for (String str2 : cookie.split(";")) {
            if (str2.split("=").length > 0) {
                cookieManager.setCookie(str, split[0].trim() + "=;expires=Sat, 1 Jan 2000 00:00:01 UTC;");
            }
        }
        cookieManager.removeExpiredCookie();
    }
}
