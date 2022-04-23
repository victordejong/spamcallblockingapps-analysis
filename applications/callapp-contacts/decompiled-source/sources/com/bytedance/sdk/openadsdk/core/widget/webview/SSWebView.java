package com.bytedance.sdk.openadsdk.core.widget.webview;

import android.content.Context;
import android.graphics.Paint;
import android.os.Build;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.accessibility.AccessibilityManager;
import android.webkit.DownloadListener;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import java.lang.reflect.Method;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/widget/webview/SSWebView.class */
public class SSWebView extends WebView {
    public SSWebView(Context context) {
        super(context);
        a(context);
    }

    public SSWebView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        a(context);
    }

    public SSWebView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        a(context);
    }

    private void a(Context context) {
        b(context);
    }

    private static void b(Context context) {
        if (Build.VERSION.SDK_INT == 17 && context != null) {
            try {
                AccessibilityManager accessibilityManager = (AccessibilityManager) context.getSystemService("accessibility");
                if (accessibilityManager != null && accessibilityManager.isEnabled()) {
                    Method declaredMethod = accessibilityManager.getClass().getDeclaredMethod("setState", Integer.TYPE);
                    declaredMethod.setAccessible(true);
                    declaredMethod.invoke(accessibilityManager, 0);
                }
            } catch (Throwable th) {
            }
        }
    }

    @Override // android.webkit.WebView
    public boolean canGoBack() {
        try {
            return super.canGoBack();
        } catch (Exception e) {
            return false;
        }
    }

    @Override // android.webkit.WebView
    public boolean canGoBackOrForward(int i) {
        try {
            return super.canGoBackOrForward(i);
        } catch (Exception e) {
            return false;
        }
    }

    @Override // android.webkit.WebView
    public boolean canGoForward() {
        try {
            return super.canGoForward();
        } catch (Exception e) {
            return false;
        }
    }

    @Override // android.webkit.WebView
    public void clearCache(boolean z) {
        try {
            super.clearCache(z);
        } catch (Exception e) {
        }
    }

    @Override // android.webkit.WebView
    public void clearFormData() {
        try {
            super.clearFormData();
        } catch (Exception e) {
        }
    }

    @Override // android.webkit.WebView
    public void clearHistory() {
        try {
            super.clearHistory();
        } catch (Exception e) {
        }
    }

    @Override // android.webkit.WebView, android.view.View
    public void computeScroll() {
        try {
            super.computeScroll();
        } catch (Exception e) {
        }
    }

    @Override // android.webkit.WebView
    public int getContentHeight() {
        try {
            return super.getContentHeight();
        } catch (Exception e) {
            return 1;
        }
    }

    @Override // android.webkit.WebView
    public String getOriginalUrl() {
        try {
            String originalUrl = super.getOriginalUrl();
            String str = originalUrl;
            if (originalUrl != null) {
                str = originalUrl;
                if (originalUrl.startsWith("data:text/html")) {
                    String url = super.getUrl();
                    str = originalUrl;
                    if (url != null) {
                        str = originalUrl;
                        if (url.startsWith("file://")) {
                            str = url;
                        }
                    }
                }
            }
            return str;
        } catch (Exception e) {
            return null;
        }
    }

    @Override // android.webkit.WebView
    public int getProgress() {
        try {
            return super.getProgress();
        } catch (Exception e) {
            return 100;
        }
    }

    @Override // android.webkit.WebView
    public String getUrl() {
        try {
            return super.getUrl();
        } catch (Exception e) {
            return null;
        }
    }

    @Override // android.webkit.WebView
    public void goBack() {
        try {
            super.goBack();
        } catch (Exception e) {
        }
    }

    @Override // android.webkit.WebView
    public void goBackOrForward(int i) {
        try {
            super.goBackOrForward(i);
        } catch (Exception e) {
        }
    }

    @Override // android.webkit.WebView
    public void goForward() {
        try {
            super.goForward();
        } catch (Exception e) {
        }
    }

    @Override // android.webkit.WebView
    public void loadData(String str, String str2, String str3) {
        try {
            super.loadData(str, str2, str3);
        } catch (Exception e) {
        }
    }

    @Override // android.webkit.WebView
    public void loadDataWithBaseURL(String str, String str2, String str3, String str4, String str5) {
        try {
            super.loadDataWithBaseURL(str, str2, str3, str4, str5);
        } catch (Exception e) {
        }
    }

    @Override // android.webkit.WebView
    public void loadUrl(String str) {
        try {
            super.loadUrl(str);
        } catch (Exception e) {
        }
    }

    @Override // android.webkit.WebView
    public void loadUrl(String str, Map<String, String> map) {
        try {
            super.loadUrl(str, map);
        } catch (Exception e) {
        }
    }

    @Override // android.webkit.WebView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        try {
            return super.onTouchEvent(motionEvent);
        } catch (Throwable th) {
            return false;
        }
    }

    @Override // android.webkit.WebView
    public void postUrl(String str, byte[] bArr) {
        try {
            super.postUrl(str, bArr);
        } catch (Exception e) {
        }
    }

    @Override // android.webkit.WebView
    public void reload() {
        try {
            super.reload();
        } catch (Exception e) {
        }
    }

    @Override // android.webkit.WebView, android.view.View
    public void setBackgroundColor(int i) {
        try {
            super.setBackgroundColor(i);
        } catch (Exception e) {
        }
    }

    @Override // android.webkit.WebView
    public void setDownloadListener(DownloadListener downloadListener) {
        try {
            super.setDownloadListener(downloadListener);
        } catch (Exception e) {
        }
    }

    @Override // android.webkit.WebView, android.view.View
    public void setLayerType(int i, Paint paint) {
        try {
            super.setLayerType(i, paint);
        } catch (Throwable th) {
        }
    }

    @Override // android.webkit.WebView
    public void setNetworkAvailable(boolean z) {
        try {
            super.setNetworkAvailable(z);
        } catch (Exception e) {
        }
    }

    @Override // android.webkit.WebView, android.view.View
    public void setOverScrollMode(int i) {
        try {
            super.setOverScrollMode(i);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    @Override // android.webkit.WebView
    public void setWebChromeClient(WebChromeClient webChromeClient) {
        try {
            super.setWebChromeClient(webChromeClient);
        } catch (Exception e) {
        }
    }

    @Override // android.webkit.WebView
    public void setWebViewClient(WebViewClient webViewClient) {
        try {
            super.setWebViewClient(webViewClient);
        } catch (Exception e) {
        }
    }

    @Override // android.webkit.WebView
    public void stopLoading() {
        try {
            super.stopLoading();
        } catch (Exception e) {
        }
    }
}
