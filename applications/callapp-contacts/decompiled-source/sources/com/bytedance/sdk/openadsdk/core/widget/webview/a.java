package com.bytedance.sdk.openadsdk.core.widget.webview;

import android.content.Context;
import android.os.Build;
import android.webkit.WebSettings;
import android.webkit.WebView;
import com.bytedance.sdk.openadsdk.utils.q;
import java.lang.ref.WeakReference;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/widget/webview/a.class */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private WeakReference<Context> f9347a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f9348b = true;

    /* renamed from: c  reason: collision with root package name */
    private boolean f9349c = true;

    /* renamed from: d  reason: collision with root package name */
    private boolean f9350d = true;
    private boolean e = true;
    private boolean f = true;
    private boolean g = true;
    private boolean h = true;

    private a(Context context) {
        this.f9347a = new WeakReference<>(context);
    }

    public static a a(Context context) {
        return new a(context);
    }

    private void a(WebSettings webSettings) {
        try {
            if (Build.VERSION.SDK_INT >= 17) {
                webSettings.setMediaPlaybackRequiresUserGesture(false);
            }
        } catch (Throwable th) {
            q.b(th.toString());
        }
    }

    private void b(WebView webView) {
        try {
            webView.removeJavascriptInterface("searchBoxJavaBridge_");
            webView.removeJavascriptInterface("accessibility");
            webView.removeJavascriptInterface("accessibilityTraversal");
        } catch (Throwable th) {
            q.b(th.toString());
        }
    }

    public a a(boolean z) {
        this.h = z;
        return this;
    }

    public void a(WebView webView) {
        if (webView != null && this.f9347a.get() != null) {
            b(webView);
            WebSettings settings = webView.getSettings();
            a(settings);
            if (settings != null) {
                try {
                    settings.setJavaScriptEnabled(true);
                } catch (Exception e) {
                    e.printStackTrace();
                }
                try {
                    if (this.f9349c) {
                        settings.setSupportZoom(true);
                        settings.setBuiltInZoomControls(true);
                    } else {
                        settings.setSupportZoom(false);
                    }
                } catch (Throwable th) {
                    th.printStackTrace();
                }
                settings.setLoadWithOverviewMode(true);
                settings.setUseWideViewPort(this.f9350d);
                settings.setDomStorageEnabled(this.e);
                settings.setAllowFileAccess(this.f);
                settings.setBlockNetworkImage(true ^ this.g);
                try {
                    if (Build.VERSION.SDK_INT >= 11 && !this.h) {
                        webView.setLayerType(0, null);
                    } else if (Build.VERSION.SDK_INT >= 16 && this.h) {
                        webView.setLayerType(2, null);
                    }
                } catch (Throwable th2) {
                    th2.printStackTrace();
                }
            }
        }
    }

    public a b(boolean z) {
        this.f9349c = z;
        return this;
    }
}
