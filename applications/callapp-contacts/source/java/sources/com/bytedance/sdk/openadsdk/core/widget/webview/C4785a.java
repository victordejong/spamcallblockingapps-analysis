package com.bytedance.sdk.openadsdk.core.widget.webview;

import android.content.Context;
import android.os.Build;
import android.webkit.WebSettings;
import android.webkit.WebView;
import com.bytedance.sdk.openadsdk.utils.C5478q;
import java.lang.ref.WeakReference;
/* renamed from: com.bytedance.sdk.openadsdk.core.widget.webview.a */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/widget/webview/a.class */
public class C4785a {

    /* renamed from: a */
    private WeakReference<Context> f17583a;

    /* renamed from: b */
    private boolean f17584b = true;

    /* renamed from: c */
    private boolean f17585c = true;

    /* renamed from: d */
    private boolean f17586d = true;

    /* renamed from: e */
    private boolean f17587e = true;

    /* renamed from: f */
    private boolean f17588f = true;

    /* renamed from: g */
    private boolean f17589g = true;

    /* renamed from: h */
    private boolean f17590h = true;

    private C4785a(Context context) {
        this.f17583a = new WeakReference<>(context);
    }

    /* renamed from: a */
    public static C4785a m33991a(Context context) {
        return new C4785a(context);
    }

    /* renamed from: a */
    private void m33990a(WebSettings webSettings) {
        try {
            if (Build.VERSION.SDK_INT < 17) {
                return;
            }
            webSettings.setMediaPlaybackRequiresUserGesture(false);
        } catch (Throwable th) {
            C5478q.m32113b(th.toString());
        }
    }

    /* renamed from: b */
    private void m33987b(WebView webView) {
        try {
            webView.removeJavascriptInterface("searchBoxJavaBridge_");
            webView.removeJavascriptInterface("accessibility");
            webView.removeJavascriptInterface("accessibilityTraversal");
        } catch (Throwable th) {
            C5478q.m32113b(th.toString());
        }
    }

    /* renamed from: a */
    public C4785a m33988a(boolean z) {
        this.f17590h = z;
        return this;
    }

    /* renamed from: a */
    public void m33989a(WebView webView) {
        if (webView == null || this.f17583a.get() == null) {
            return;
        }
        m33987b(webView);
        WebSettings settings = webView.getSettings();
        m33990a(settings);
        if (settings == null) {
            return;
        }
        try {
            settings.setJavaScriptEnabled(true);
        } catch (Exception e) {
            e.printStackTrace();
        }
        try {
            if (this.f17585c) {
                settings.setSupportZoom(true);
                settings.setBuiltInZoomControls(true);
            } else {
                settings.setSupportZoom(false);
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
        settings.setLoadWithOverviewMode(true);
        settings.setUseWideViewPort(this.f17586d);
        settings.setDomStorageEnabled(this.f17587e);
        settings.setAllowFileAccess(this.f17588f);
        settings.setBlockNetworkImage(true ^ this.f17589g);
        try {
            if (Build.VERSION.SDK_INT >= 11 && !this.f17590h) {
                webView.setLayerType(0, null);
            } else if (Build.VERSION.SDK_INT < 16 || !this.f17590h) {
            } else {
                webView.setLayerType(2, null);
            }
        } catch (Throwable th2) {
            th2.printStackTrace();
        }
    }

    /* renamed from: b */
    public C4785a m33986b(boolean z) {
        this.f17585c = z;
        return this;
    }
}
