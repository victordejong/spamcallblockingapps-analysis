package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.Canvas;
import android.view.MotionEvent;
import android.webkit.ValueCallback;
import android.webkit.WebViewClient;
import com.google.android.gms.ads.internal.C2341q;
import javax.annotation.ParametersAreNonnullByDefault;
import javax.annotation.concurrent.GuardedBy;
@ParametersAreNonnullByDefault
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/aex.class */
public class aex extends aew implements afc {

    /* renamed from: a */
    private final aev f8084a;
    @GuardedBy("this")

    /* renamed from: b */
    private boolean f8085b;
    @GuardedBy("this")

    /* renamed from: c */
    private boolean f8086c;

    public aex(Context context, aev aevVar) {
        super(context);
        C2341q.m14740g().m7087e();
        this.f8084a = aevVar;
        super.setWebViewClient(aevVar);
    }

    /* renamed from: a */
    private final void m13416a() {
        synchronized (this) {
            if (!this.f8086c) {
                this.f8086c = true;
                C2341q.m14740g().m7086f();
            }
        }
    }

    /* renamed from: B */
    public final boolean m13419B() {
        boolean z;
        synchronized (this) {
            z = this.f8085b;
        }
        return z;
    }

    /* renamed from: C */
    public void mo13418C() {
        synchronized (this) {
            C3556uu.m7052a("Destroying WebView!");
            m13416a();
            C3650yg.f17646e.execute(new Runnable(this) { // from class: com.google.android.gms.internal.ads.afa

                /* renamed from: a */
                private final aex f8094a;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f8094a = this;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.f8094a.m13417O();
                }
            });
        }
    }

    /* renamed from: O */
    public final /* synthetic */ void m13417O() {
        super.destroy();
    }

    @Override // com.google.android.gms.internal.ads.afc
    /* renamed from: a */
    public final void mo13412a(aey aeyVar) {
        synchronized (this) {
            C3556uu.m7052a("Blank page loaded, 1...");
            mo13418C();
        }
    }

    @Override // com.google.android.gms.internal.ads.aew, android.webkit.WebView
    public /* bridge */ /* synthetic */ void addJavascriptInterface(Object obj, String str) {
        super.addJavascriptInterface(obj, str);
    }

    @Override // com.google.android.gms.internal.ads.aew, com.google.android.gms.internal.ads.AbstractC3212ia
    /* renamed from: d */
    public /* bridge */ /* synthetic */ void mo7733d(String str) {
        super.mo7733d(str);
    }

    @Override // android.webkit.WebView
    public void destroy() {
        synchronized (this) {
            if (!this.f8085b) {
                this.f8085b = true;
                this.f8084a.m13421a(this);
                mo13415g(false);
                C3556uu.m7052a("Initiating WebView self destruct sequence in 3...");
                C3556uu.m7052a("Loading blank page in WebView, 2...");
                try {
                    super.loadUrl("about:blank");
                } catch (UnsatisfiedLinkError e) {
                    C2341q.m14740g().m7095a(e, "AdWebViewImpl.loadUrlUnsafe");
                    C3556uu.m6744e("#007 Could not call remote method.", e);
                }
            }
        }
    }

    @Override // android.webkit.WebView
    @TargetApi(19)
    public void evaluateJavascript(String str, ValueCallback<String> valueCallback) {
        synchronized (this) {
            if (m13419B()) {
                C3556uu.m6745e("#004 The webview is destroyed. Ignoring action.");
                if (valueCallback != null) {
                    valueCallback.onReceiveValue(null);
                }
            } else {
                super.evaluateJavascript(str, valueCallback);
            }
        }
    }

    protected void finalize() {
        try {
            synchronized (this) {
                if (!m13419B()) {
                    mo13415g(true);
                }
                m13416a();
            }
        } finally {
            super.finalize();
        }
    }

    @GuardedBy("this")
    /* renamed from: g */
    protected void mo13415g(boolean z) {
    }

    @Override // android.webkit.WebView
    public void loadData(String str, String str2, String str3) {
        synchronized (this) {
            if (!m13419B()) {
                super.loadData(str, str2, str3);
            } else {
                C3556uu.m6745e("#004 The webview is destroyed. Ignoring action.");
            }
        }
    }

    @Override // android.webkit.WebView
    public void loadDataWithBaseURL(String str, String str2, String str3, String str4, String str5) {
        synchronized (this) {
            if (!m13419B()) {
                super.loadDataWithBaseURL(str, str2, str3, str4, str5);
            } else {
                C3556uu.m6745e("#004 The webview is destroyed. Ignoring action.");
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.aew, android.webkit.WebView
    public void loadUrl(String str) {
        synchronized (this) {
            if (!m13419B()) {
                super.loadUrl(str);
            } else {
                C3556uu.m6745e("#004 The webview is destroyed. Ignoring action.");
            }
        }
    }

    @Override // android.webkit.WebView, android.view.View
    @TargetApi(21)
    public void onDraw(Canvas canvas) {
        if (m13419B()) {
            return;
        }
        super.onDraw(canvas);
    }

    @Override // android.webkit.WebView, com.google.android.gms.internal.ads.act
    public void onPause() {
        if (m13419B()) {
            return;
        }
        super.onPause();
    }

    @Override // android.webkit.WebView, com.google.android.gms.internal.ads.act
    public void onResume() {
        if (m13419B()) {
            return;
        }
        super.onResume();
    }

    @Override // android.webkit.WebView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        return !m13419B() && super.onTouchEvent(motionEvent);
    }

    @Override // android.webkit.WebView
    public void setWebViewClient(WebViewClient webViewClient) {
    }

    @Override // android.webkit.WebView
    public void stopLoading() {
        if (m13419B()) {
            return;
        }
        super.stopLoading();
    }
}
