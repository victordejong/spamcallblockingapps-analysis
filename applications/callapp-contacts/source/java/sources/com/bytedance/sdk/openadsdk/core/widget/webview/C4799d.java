package com.bytedance.sdk.openadsdk.core.widget.webview;

import android.os.Handler;
import android.os.Looper;
import android.view.ViewGroup;
import android.webkit.WebSettings;
import com.bytedance.sdk.openadsdk.core.C4600n;
import com.bytedance.sdk.openadsdk.core.C4804z;
import com.bytedance.sdk.openadsdk.utils.C5478q;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
/* renamed from: com.bytedance.sdk.openadsdk.core.widget.webview.d */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/widget/webview/d.class */
public class C4799d {

    /* renamed from: c */
    private static final byte[] f17636c = new byte[0];

    /* renamed from: d */
    private static int f17637d = 10;

    /* renamed from: e */
    private static int f17638e = 3;

    /* renamed from: g */
    private static volatile C4799d f17639g;

    /* renamed from: a */
    private List<WeakReference<SSWebView>> f17640a;

    /* renamed from: b */
    private List<WeakReference<SSWebView>> f17641b;

    /* renamed from: f */
    private final AtomicBoolean f17642f = new AtomicBoolean(false);

    private C4799d() {
        this.f17640a = new ArrayList();
        this.f17641b = new ArrayList();
        this.f17640a = new ArrayList();
        this.f17641b = new ArrayList();
    }

    /* renamed from: a */
    public static C4799d m33919a() {
        if (f17639g == null) {
            synchronized (C4799d.class) {
                try {
                    if (f17639g == null) {
                        f17639g = new C4799d();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f17639g;
    }

    /* renamed from: d */
    public void m33914d() {
        for (int i = 0; i < f17638e; i++) {
            SSWebView sSWebView = new SSWebView(C4600n.m34815a());
            sSWebView.loadUrl("about:blank");
            this.f17640a.add(new WeakReference<>(sSWebView));
        }
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:20:0x018f -> B:17:0x0158). Please submit an issue!!! */
    /* renamed from: a */
    public void m33918a(ViewGroup viewGroup, WeakReference<SSWebView> weakReference, boolean z) {
        C5478q.m32106e("webviewpool", "===start removeWebView available:" + this.f17640a.size() + " ,inuse:" + this.f17641b.size());
        if (!z || weakReference == null || weakReference.get() == null) {
            return;
        }
        try {
            SSWebView sSWebView = weakReference.get();
            viewGroup.removeView(sSWebView);
            sSWebView.loadUrl("");
            sSWebView.stopLoading();
            sSWebView.setWebChromeClient(null);
            sSWebView.setWebViewClient(null);
            sSWebView.clearCache(true);
            sSWebView.clearHistory();
            sSWebView.getSettings().setJavaScriptEnabled(true);
            sSWebView.getSettings().setCacheMode(2);
            sSWebView.getSettings().setAppCacheEnabled(false);
            sSWebView.getSettings().setSupportZoom(false);
            sSWebView.getSettings().setUseWideViewPort(true);
            sSWebView.getSettings().setJavaScriptCanOpenWindowsAutomatically(true);
            sSWebView.getSettings().setDomStorageEnabled(true);
            sSWebView.getSettings().setBuiltInZoomControls(false);
            sSWebView.getSettings().setLayoutAlgorithm(WebSettings.LayoutAlgorithm.NORMAL);
            sSWebView.getSettings().setLoadWithOverviewMode(false);
            sSWebView.getSettings().setUserAgentString("android_client");
            sSWebView.getSettings().setDefaultTextEncodingName("UTF-8");
            sSWebView.getSettings().setDefaultFontSize(16);
            C4804z.m33900a(C4600n.m34815a(), sSWebView);
            C4804z.m33899a(sSWebView);
            synchronized (f17636c) {
                this.f17641b.remove(weakReference);
                if (this.f17640a.size() < f17638e) {
                    SSWebView sSWebView2 = new SSWebView(C4600n.m34815a());
                    sSWebView2.loadUrl("about:blank");
                    this.f17640a.add(new WeakReference<>(sSWebView2));
                }
            }
        } catch (Exception e) {
        }
        C5478q.m32106e("webviewpool", "===end removeWebView available:" + this.f17640a.size() + " ,inuse:" + this.f17641b.size());
    }

    /* renamed from: b */
    public void m33916b() {
        if (this.f17642f.getAndSet(true)) {
            return;
        }
        if (Looper.myLooper() == Looper.getMainLooper()) {
            m33914d();
        } else {
            new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.widget.webview.d.1
                @Override // java.lang.Runnable
                public void run() {
                    C4799d.this.m33914d();
                }
            });
        }
    }

    /* renamed from: c */
    public WeakReference<SSWebView> m33915c() {
        WeakReference<SSWebView> weakReference;
        C5478q.m32106e("webviewpool", "===start getWebView available:" + this.f17640a.size() + " ,inuse:" + this.f17641b.size());
        synchronized (f17636c) {
            try {
                if (this.f17640a.size() <= 0 || this.f17640a.get(0) == null) {
                    weakReference = new WeakReference<>(new SSWebView(C4600n.m34815a()));
                    this.f17641b.add(weakReference);
                } else {
                    weakReference = this.f17640a.get(0);
                    if (weakReference.get() != null) {
                        this.f17640a.remove(0);
                        this.f17641b.add(weakReference);
                    } else {
                        this.f17640a.remove(0);
                        weakReference = new WeakReference<>(new SSWebView(C4600n.m34815a()));
                        this.f17641b.add(weakReference);
                    }
                }
                C5478q.m32106e("webviewpool", "===end getWebView available:" + this.f17640a.size() + " ,inuse:" + this.f17641b.size());
                weakReference.get().loadUrl("about:blank");
            } catch (Exception e) {
                weakReference = new WeakReference<>(new SSWebView(C4600n.m34815a()));
                this.f17641b.add(weakReference);
            }
        }
        return weakReference;
    }
}
