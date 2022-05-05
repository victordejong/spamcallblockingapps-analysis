package com.taiwanmobile.p055pt.adp.view.webview.client;

import android.content.Context;
import android.os.Build;
import android.view.View;
import android.webkit.ConsoleMessage;
import android.webkit.GeolocationPermissions;
import android.webkit.JsPromptResult;
import android.webkit.JsResult;
import android.webkit.PermissionRequest;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import java.lang.ref.WeakReference;
import p081h.p447o.p448a.p449a.C10831c;
/* renamed from: com.taiwanmobile.pt.adp.view.webview.client.WebChromeClientBase */
/* loaded from: classes2-dex2jar.jar:com/taiwanmobile/pt/adp/view/webview/client/WebChromeClientBase.class */
public class WebChromeClientBase extends WebChromeClient {

    /* renamed from: a */
    public WeakReference<Context> f10078a;

    public WebChromeClientBase(Context context) {
        this.f10078a = null;
        this.f10078a = new WeakReference<>(context);
    }

    @Override // android.webkit.WebChromeClient
    public void onCloseWindow(WebView webView) {
        C10831c.m10518c("WebChromeClientBase", "onCloseWindow invoked!!");
        super.onCloseWindow(webView);
    }

    @Override // android.webkit.WebChromeClient
    public boolean onConsoleMessage(ConsoleMessage consoleMessage) {
        C10831c.m10518c("WebChromeClientBase", "onConsoleMessage(" + consoleMessage.message() + ") invoked!!");
        return super.onConsoleMessage(consoleMessage);
    }

    @Override // android.webkit.WebChromeClient
    public void onGeolocationPermissionsShowPrompt(String str, GeolocationPermissions.Callback callback) {
        WeakReference<Context> weakReference = this.f10078a;
        if (!(weakReference == null || weakReference.get() == null)) {
            C10831c.m10518c("WebChromeClientBase", "onGeolocationPermissionsShowPrompt");
        }
        callback.invoke(str, true, false);
    }

    @Override // android.webkit.WebChromeClient
    public boolean onJsAlert(WebView webView, String str, String str2, JsResult jsResult) {
        C10831c.m10518c("WebChromeClientBase", "onJsAlert(" + str2 + ") invoked!!");
        return super.onJsAlert(webView, str, str2, jsResult);
    }

    @Override // android.webkit.WebChromeClient
    public boolean onJsBeforeUnload(WebView webView, String str, String str2, JsResult jsResult) {
        C10831c.m10518c("WebChromeClientBase", "onJsBeforeUnload invoked!!");
        return super.onJsBeforeUnload(webView, str, str2, jsResult);
    }

    @Override // android.webkit.WebChromeClient
    public boolean onJsConfirm(WebView webView, String str, String str2, JsResult jsResult) {
        C10831c.m10518c("WebChromeClientBase", "onJsConfirm invoked!!");
        return super.onJsConfirm(webView, str, str2, jsResult);
    }

    @Override // android.webkit.WebChromeClient
    public boolean onJsPrompt(WebView webView, String str, String str2, String str3, JsPromptResult jsPromptResult) {
        C10831c.m10518c("WebChromeClientBase", "onJsPrompt invoked!!");
        return super.onJsPrompt(webView, str, str2, str3, jsPromptResult);
    }

    @Override // android.webkit.WebChromeClient
    public void onPermissionRequest(PermissionRequest permissionRequest) {
        if (Build.VERSION.SDK_INT >= 21) {
            permissionRequest.grant(permissionRequest.getResources());
        } else {
            C10831c.m10518c("WebChromeClientBase", "Android version is smaller than 5.0.");
        }
    }

    @Override // android.webkit.WebChromeClient
    public void onShowCustomView(View view, WebChromeClient.CustomViewCallback customViewCallback) {
        C10831c.m10518c("WebChromeClientBase", "onShowCustomView invoked!!");
        super.onShowCustomView(view, customViewCallback);
    }
}
