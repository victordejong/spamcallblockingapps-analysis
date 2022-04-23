package com.bytedance.sdk.openadsdk.core.widget.webview;

import android.os.Handler;
import android.os.Looper;
import android.view.ViewGroup;
import android.webkit.WebSettings;
import com.bytedance.sdk.openadsdk.core.n;
import com.bytedance.sdk.openadsdk.core.z;
import com.bytedance.sdk.openadsdk.utils.q;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/widget/webview/d.class */
public class d {

    /* renamed from: c  reason: collision with root package name */
    private static final byte[] f9381c = new byte[0];

    /* renamed from: d  reason: collision with root package name */
    private static int f9382d = 10;
    private static int e = 3;
    private static volatile d g;

    /* renamed from: a  reason: collision with root package name */
    private List<WeakReference<SSWebView>> f9383a;

    /* renamed from: b  reason: collision with root package name */
    private List<WeakReference<SSWebView>> f9384b;
    private final AtomicBoolean f = new AtomicBoolean(false);

    private d() {
        this.f9383a = new ArrayList();
        this.f9384b = new ArrayList();
        this.f9383a = new ArrayList();
        this.f9384b = new ArrayList();
    }

    public static d a() {
        if (g == null) {
            synchronized (d.class) {
                try {
                    if (g == null) {
                        g = new d();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return g;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d() {
        for (int i = 0; i < e; i++) {
            SSWebView sSWebView = new SSWebView(n.a());
            sSWebView.loadUrl("about:blank");
            this.f9383a.add(new WeakReference<>(sSWebView));
        }
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:20:0x018f -> B:17:0x0158). Please submit an issue!!! */
    public void a(ViewGroup viewGroup, WeakReference<SSWebView> weakReference, boolean z) {
        q.e("webviewpool", "===start removeWebView available:" + this.f9383a.size() + " ,inuse:" + this.f9384b.size());
        if (z && weakReference != null && weakReference.get() != null) {
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
                z.a(n.a(), sSWebView);
                z.a(sSWebView);
                synchronized (f9381c) {
                    this.f9384b.remove(weakReference);
                    if (this.f9383a.size() < e) {
                        SSWebView sSWebView2 = new SSWebView(n.a());
                        sSWebView2.loadUrl("about:blank");
                        this.f9383a.add(new WeakReference<>(sSWebView2));
                    }
                }
            } catch (Exception e2) {
            }
            q.e("webviewpool", "===end removeWebView available:" + this.f9383a.size() + " ,inuse:" + this.f9384b.size());
        }
    }

    public void b() {
        if (!this.f.getAndSet(true)) {
            if (Looper.myLooper() == Looper.getMainLooper()) {
                d();
            } else {
                new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.widget.webview.d.1
                    @Override // java.lang.Runnable
                    public void run() {
                        d.this.d();
                    }
                });
            }
        }
    }

    public WeakReference<SSWebView> c() {
        WeakReference<SSWebView> weakReference;
        q.e("webviewpool", "===start getWebView available:" + this.f9383a.size() + " ,inuse:" + this.f9384b.size());
        synchronized (f9381c) {
            try {
                if (this.f9383a.size() <= 0 || this.f9383a.get(0) == null) {
                    weakReference = new WeakReference<>(new SSWebView(n.a()));
                    this.f9384b.add(weakReference);
                } else {
                    weakReference = this.f9383a.get(0);
                    if (weakReference.get() != null) {
                        this.f9383a.remove(0);
                        this.f9384b.add(weakReference);
                    } else {
                        this.f9383a.remove(0);
                        weakReference = new WeakReference<>(new SSWebView(n.a()));
                        this.f9384b.add(weakReference);
                    }
                }
                q.e("webviewpool", "===end getWebView available:" + this.f9383a.size() + " ,inuse:" + this.f9384b.size());
                weakReference.get().loadUrl("about:blank");
            } catch (Exception e2) {
                weakReference = new WeakReference<>(new SSWebView(n.a()));
                this.f9384b.add(weakReference);
            }
        }
        return weakReference;
    }
}
