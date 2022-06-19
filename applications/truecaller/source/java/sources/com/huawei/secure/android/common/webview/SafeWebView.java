package com.huawei.secure.android.common.webview;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.graphics.Bitmap;
import android.net.http.SslError;
import android.os.Message;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.webkit.ClientCertRequest;
import android.webkit.HttpAuthHandler;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.SafeBrowsingResponse;
import android.webkit.SslErrorHandler;
import android.webkit.URLUtil;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.huawei.secure.android.common.util.LogsUtil;
import com.huawei.secure.android.common.webview.WebViewLoadCallBack;
import java.util.Arrays;
import java.util.Map;
/* loaded from: classes3-dex2jar.jar:com/huawei/secure/android/common/webview/SafeWebView.class */
public class SafeWebView extends WebView {

    /* renamed from: f */
    private static final String f8166f = "SafeWebView";

    /* renamed from: a */
    private String f8167a;

    /* renamed from: b */
    private String[] f8168b;

    /* renamed from: c */
    private String[] f8169c;

    /* renamed from: d */
    private String[] f8170d;

    /* renamed from: e */
    private WebViewLoadCallBack f8171e;

    /* renamed from: com.huawei.secure.android.common.webview.SafeWebView$b */
    /* loaded from: classes3-dex2jar.jar:com/huawei/secure/android/common/webview/SafeWebView$b.class */
    public static class DialogInterface$OnClickListenerC2505b implements DialogInterface.OnClickListener {

        /* renamed from: a */
        private final SslErrorHandler f8172a;

        public DialogInterface$OnClickListenerC2505b(SslErrorHandler sslErrorHandler) {
            this.f8172a = sslErrorHandler;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            this.f8172a.cancel();
        }
    }

    /* renamed from: com.huawei.secure.android.common.webview.SafeWebView$c */
    /* loaded from: classes3-dex2jar.jar:com/huawei/secure/android/common/webview/SafeWebView$c.class */
    public static class DialogInterface$OnClickListenerC2506c implements DialogInterface.OnClickListener {

        /* renamed from: a */
        private final SslErrorHandler f8173a;

        public DialogInterface$OnClickListenerC2506c(SslErrorHandler sslErrorHandler) {
            this.f8173a = sslErrorHandler;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            this.f8173a.proceed();
        }
    }

    /* renamed from: com.huawei.secure.android.common.webview.SafeWebView$d */
    /* loaded from: classes3-dex2jar.jar:com/huawei/secure/android/common/webview/SafeWebView$d.class */
    public final class C2507d extends WebViewClient {

        /* renamed from: a */
        private WebViewClient f8174a;

        /* renamed from: b */
        private boolean f8175b;

        private C2507d(WebViewClient webViewClient, boolean z) {
            SafeWebView.this = r4;
            this.f8174a = webViewClient;
            this.f8175b = z;
        }

        @Override // android.webkit.WebViewClient
        public void doUpdateVisitedHistory(WebView webView, String str, boolean z) {
            WebViewClient webViewClient = this.f8174a;
            if (webViewClient != null) {
                webViewClient.doUpdateVisitedHistory(webView, str, z);
            } else {
                super.doUpdateVisitedHistory(webView, str, z);
            }
        }

        @Override // android.webkit.WebViewClient
        public void onFormResubmission(WebView webView, Message message, Message message2) {
            WebViewClient webViewClient = this.f8174a;
            if (webViewClient != null) {
                webViewClient.onFormResubmission(webView, message, message2);
            } else {
                super.onFormResubmission(webView, message, message2);
            }
        }

        @Override // android.webkit.WebViewClient
        public void onLoadResource(WebView webView, String str) {
            WebViewClient webViewClient = this.f8174a;
            if (webViewClient != null) {
                webViewClient.onLoadResource(webView, str);
            } else {
                super.onLoadResource(webView, str);
            }
        }

        @Override // android.webkit.WebViewClient
        public void onPageCommitVisible(WebView webView, String str) {
            WebViewClient webViewClient = this.f8174a;
            if (webViewClient != null) {
                webViewClient.onPageCommitVisible(webView, str);
            } else {
                super.onPageCommitVisible(webView, str);
            }
        }

        @Override // android.webkit.WebViewClient
        public void onPageFinished(WebView webView, String str) {
            WebViewClient webViewClient = this.f8174a;
            if (webViewClient != null) {
                webViewClient.onPageFinished(webView, str);
            } else {
                super.onPageFinished(webView, str);
            }
        }

        @Override // android.webkit.WebViewClient
        public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
            WebViewClient webViewClient = this.f8174a;
            if (webViewClient != null && !this.f8175b) {
                webViewClient.onPageStarted(webView, str, bitmap);
            } else if (!SafeWebView.this.isWhiteListUrl(str)) {
                SafeWebView.this.onCheckError(webView, str);
            } else {
                super.onPageStarted(webView, str, bitmap);
            }
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedClientCertRequest(WebView webView, ClientCertRequest clientCertRequest) {
            WebViewClient webViewClient = this.f8174a;
            if (webViewClient != null) {
                webViewClient.onReceivedClientCertRequest(webView, clientCertRequest);
            } else {
                super.onReceivedClientCertRequest(webView, clientCertRequest);
            }
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedError(WebView webView, int i, String str, String str2) {
            WebViewClient webViewClient = this.f8174a;
            if (webViewClient != null) {
                webViewClient.onReceivedError(webView, i, str, str2);
            } else {
                super.onReceivedError(webView, i, str, str2);
            }
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
            WebViewClient webViewClient = this.f8174a;
            if (webViewClient != null) {
                webViewClient.onReceivedError(webView, webResourceRequest, webResourceError);
            } else {
                super.onReceivedError(webView, webResourceRequest, webResourceError);
            }
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedHttpAuthRequest(WebView webView, HttpAuthHandler httpAuthHandler, String str, String str2) {
            WebViewClient webViewClient = this.f8174a;
            if (webViewClient != null) {
                webViewClient.onReceivedHttpAuthRequest(webView, httpAuthHandler, str, str2);
            } else {
                super.onReceivedHttpAuthRequest(webView, httpAuthHandler, str, str2);
            }
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedHttpError(WebView webView, WebResourceRequest webResourceRequest, WebResourceResponse webResourceResponse) {
            WebViewClient webViewClient = this.f8174a;
            if (webViewClient != null) {
                webViewClient.onReceivedHttpError(webView, webResourceRequest, webResourceResponse);
            } else {
                super.onReceivedHttpError(webView, webResourceRequest, webResourceResponse);
            }
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedLoginRequest(WebView webView, String str, String str2, String str3) {
            WebViewClient webViewClient = this.f8174a;
            if (webViewClient != null) {
                webViewClient.onReceivedLoginRequest(webView, str, str2, str3);
            } else {
                super.onReceivedLoginRequest(webView, str, str2, str3);
            }
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedSslError(WebView webView, SslErrorHandler sslErrorHandler, SslError sslError) {
            WebViewClient webViewClient = this.f8174a;
            if (webViewClient != null) {
                webViewClient.onReceivedSslError(webView, sslErrorHandler, sslError);
            } else {
                super.onReceivedSslError(webView, sslErrorHandler, sslError);
            }
        }

        @Override // android.webkit.WebViewClient
        public boolean onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
            WebViewClient webViewClient = this.f8174a;
            return webViewClient != null ? webViewClient.onRenderProcessGone(webView, renderProcessGoneDetail) : super.onRenderProcessGone(webView, renderProcessGoneDetail);
        }

        @Override // android.webkit.WebViewClient
        public void onSafeBrowsingHit(WebView webView, WebResourceRequest webResourceRequest, int i, SafeBrowsingResponse safeBrowsingResponse) {
            WebViewClient webViewClient = this.f8174a;
            if (webViewClient != null) {
                webViewClient.onSafeBrowsingHit(webView, webResourceRequest, i, safeBrowsingResponse);
            } else {
                super.onSafeBrowsingHit(webView, webResourceRequest, i, safeBrowsingResponse);
            }
        }

        @Override // android.webkit.WebViewClient
        public void onScaleChanged(WebView webView, float f, float f2) {
            WebViewClient webViewClient = this.f8174a;
            if (webViewClient != null) {
                webViewClient.onScaleChanged(webView, f, f2);
            } else {
                super.onScaleChanged(webView, f, f2);
            }
        }

        @Override // android.webkit.WebViewClient
        public void onTooManyRedirects(WebView webView, Message message, Message message2) {
            WebViewClient webViewClient = this.f8174a;
            if (webViewClient != null) {
                webViewClient.onTooManyRedirects(webView, message, message2);
            } else {
                super.onTooManyRedirects(webView, message, message2);
            }
        }

        @Override // android.webkit.WebViewClient
        public void onUnhandledKeyEvent(WebView webView, KeyEvent keyEvent) {
            WebViewClient webViewClient = this.f8174a;
            if (webViewClient != null) {
                webViewClient.onUnhandledKeyEvent(webView, keyEvent);
            } else {
                super.onUnhandledKeyEvent(webView, keyEvent);
            }
        }

        @Override // android.webkit.WebViewClient
        public WebResourceResponse shouldInterceptRequest(WebView webView, WebResourceRequest webResourceRequest) {
            WebViewClient webViewClient = this.f8174a;
            return webViewClient != null ? webViewClient.shouldInterceptRequest(webView, webResourceRequest) : super.shouldInterceptRequest(webView, webResourceRequest);
        }

        @Override // android.webkit.WebViewClient
        public WebResourceResponse shouldInterceptRequest(WebView webView, String str) {
            WebViewClient webViewClient = this.f8174a;
            return webViewClient != null ? webViewClient.shouldInterceptRequest(webView, str) : super.shouldInterceptRequest(webView, str);
        }

        @Override // android.webkit.WebViewClient
        public boolean shouldOverrideKeyEvent(WebView webView, KeyEvent keyEvent) {
            WebViewClient webViewClient = this.f8174a;
            return webViewClient != null ? webViewClient.shouldOverrideKeyEvent(webView, keyEvent) : super.shouldOverrideKeyEvent(webView, keyEvent);
        }

        @Override // android.webkit.WebViewClient
        public boolean shouldOverrideUrlLoading(WebView webView, WebResourceRequest webResourceRequest) {
            WebViewClient webViewClient = this.f8174a;
            return webViewClient != null ? webViewClient.shouldOverrideUrlLoading(webView, webResourceRequest) : super.shouldOverrideUrlLoading(webView, webResourceRequest);
        }

        @Override // android.webkit.WebViewClient
        public boolean shouldOverrideUrlLoading(WebView webView, String str) {
            WebViewClient webViewClient = this.f8174a;
            return webViewClient != null ? webViewClient.shouldOverrideUrlLoading(webView, str) : super.shouldOverrideUrlLoading(webView, str);
        }
    }

    public SafeWebView(Context context) {
        super(context);
        m36866a();
    }

    public SafeWebView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        m36866a();
    }

    public SafeWebView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        m36866a();
    }

    public SafeWebView(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        m36866a();
    }

    /* renamed from: a */
    private void m36866a() {
        SafeWebSettings.initWebviewAndSettings(this);
        setWebViewClient(null);
    }

    /* renamed from: a */
    private boolean m36865a(String str) {
        return URLUtil.isHttpUrl(str);
    }

    public String getDefaultErrorPage() {
        return this.f8167a;
    }

    public WebViewLoadCallBack getWebViewLoadCallBack() {
        return this.f8171e;
    }

    @Deprecated
    public String[] getWhitelist() {
        String[] strArr = this.f8168b;
        return strArr == null ? null : (String[]) Arrays.copyOf(strArr, strArr.length);
    }

    public String[] getWhitelistNotMathcSubDomain() {
        String[] strArr = this.f8169c;
        return strArr == null ? null : (String[]) Arrays.copyOf(strArr, strArr.length);
    }

    public String[] getWhitelistWithPath() {
        String[] strArr = this.f8170d;
        return strArr == null ? null : (String[]) Arrays.copyOf(strArr, strArr.length);
    }

    public boolean isWhiteListUrl(String str) {
        if (TextUtils.isEmpty(str)) {
            LogsUtil.m36921e(f8166f, "url is null");
            return false;
        } else if (!URLUtil.isNetworkUrl(str)) {
            return true;
        } else {
            String[] whitelistWithPath = getWhitelistWithPath();
            String[] whitelistNotMathcSubDomain = getWhitelistNotMathcSubDomain();
            return (whitelistWithPath == null || whitelistWithPath.length == 0) ? (whitelistNotMathcSubDomain == null || whitelistNotMathcSubDomain.length == 0) ? UriUtil.isUrlHostInWhitelist(str, getWhitelist()) : UriUtil.isUrlHostSameWhitelist(str, whitelistNotMathcSubDomain) : UriUtil.isUrlHostAndPathInWhitelist(str, whitelistWithPath);
        }
    }

    @Override // android.webkit.WebView
    public void loadDataWithBaseURL(String str, String str2, String str3, String str4, String str5) {
        if (!m36865a(str)) {
            super.loadDataWithBaseURL(str, str2, str3, str4, str5);
        } else if (!TextUtils.isEmpty(this.f8167a)) {
            super.loadDataWithBaseURL(this.f8167a, str2, str3, str4, str5);
        } else if (getWebViewLoadCallBack() == null) {
        } else {
            getWebViewLoadCallBack().onCheckError(str, WebViewLoadCallBack.ErrorCode.HTTP_URL);
        }
    }

    @Override // android.webkit.WebView
    public void loadUrl(String str) {
        if (!m36865a(str)) {
            super.loadUrl(str);
        } else if (!TextUtils.isEmpty(this.f8167a)) {
            super.loadUrl(this.f8167a);
        } else if (getWebViewLoadCallBack() == null) {
        } else {
            getWebViewLoadCallBack().onCheckError(str, WebViewLoadCallBack.ErrorCode.HTTP_URL);
        }
    }

    @Override // android.webkit.WebView
    public void loadUrl(String str, Map<String, String> map) {
        if (!m36865a(str)) {
            super.loadUrl(str, map);
        } else if (!TextUtils.isEmpty(this.f8167a)) {
            super.loadUrl(this.f8167a, map);
        } else if (getWebViewLoadCallBack() == null) {
        } else {
            getWebViewLoadCallBack().onCheckError(str, WebViewLoadCallBack.ErrorCode.HTTP_URL);
        }
    }

    public final void onCheckError(WebView webView, String str) {
        LogsUtil.m36920e(f8166f, "onCheckError url is not in white list ", str);
        webView.stopLoading();
        String defaultErrorPage = getDefaultErrorPage();
        if (!TextUtils.isEmpty(defaultErrorPage)) {
            webView.loadUrl(defaultErrorPage);
        } else if (getWebViewLoadCallBack() == null) {
        } else {
            getWebViewLoadCallBack().onCheckError(str, WebViewLoadCallBack.ErrorCode.URL_NOT_IN_WHITE_LIST);
        }
    }

    @Override // android.webkit.WebView
    public void postUrl(String str, byte[] bArr) {
        if (!m36865a(str)) {
            super.postUrl(str, bArr);
        } else if (!TextUtils.isEmpty(this.f8167a)) {
            super.postUrl(this.f8167a, bArr);
        } else if (getWebViewLoadCallBack() == null) {
        } else {
            getWebViewLoadCallBack().onCheckError(str, WebViewLoadCallBack.ErrorCode.HTTP_URL);
        }
    }

    public void setDefaultErrorPage(String str) {
        this.f8167a = str;
    }

    @Override // android.webkit.WebView
    public void setWebViewClient(WebViewClient webViewClient) {
        super.setWebViewClient(new C2507d(webViewClient, true));
    }

    public void setWebViewClient(WebViewClient webViewClient, boolean z) {
        super.setWebViewClient(new C2507d(webViewClient, z));
    }

    public void setWebViewLoadCallBack(WebViewLoadCallBack webViewLoadCallBack) {
        this.f8171e = webViewLoadCallBack;
    }

    @Deprecated
    public void setWhitelist(String[] strArr) {
        this.f8168b = strArr == null ? null : (String[]) Arrays.copyOf(strArr, strArr.length);
    }

    public void setWhitelistNotMathcSubDomain(String[] strArr) {
        this.f8169c = strArr == null ? null : (String[]) Arrays.copyOf(strArr, strArr.length);
    }

    public void setWhitelistWithPath(String[] strArr) {
        this.f8170d = strArr == null ? null : (String[]) Arrays.copyOf(strArr, strArr.length);
    }

    @Deprecated
    public final void showNoticeWhenSSLErrorOccurred(String str, String str2, String str3, String str4, SslErrorHandler sslErrorHandler) {
        AlertDialog.Builder builder = new AlertDialog.Builder(getContext());
        if (!TextUtils.isEmpty(str)) {
            builder.setTitle(str);
        }
        DialogInterface$OnClickListenerC2506c dialogInterface$OnClickListenerC2506c = new DialogInterface$OnClickListenerC2506c(sslErrorHandler);
        DialogInterface$OnClickListenerC2505b dialogInterface$OnClickListenerC2505b = new DialogInterface$OnClickListenerC2505b(sslErrorHandler);
        builder.setMessage(str2);
        builder.setPositiveButton(str3, dialogInterface$OnClickListenerC2506c);
        builder.setNegativeButton(str4, dialogInterface$OnClickListenerC2505b);
        builder.create().show();
    }
}
