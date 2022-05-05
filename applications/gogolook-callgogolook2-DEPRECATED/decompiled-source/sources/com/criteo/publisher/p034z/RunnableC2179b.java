package com.criteo.publisher.p034z;

import android.util.Log;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import androidx.annotation.NonNull;
import com.criteo.publisher.model.C2042p;
import java.lang.ref.Reference;
/* renamed from: com.criteo.publisher.z.b */
/* loaded from: classes-dex2jar.jar:com/criteo/publisher/z/b.class */
public class RunnableC2179b implements Runnable {
    @NonNull

    /* renamed from: a */
    public final Reference<? extends WebView> f2511a;
    @NonNull

    /* renamed from: b */
    public final C2042p f2512b;
    @NonNull

    /* renamed from: c */
    public final WebViewClient f2513c;
    @NonNull

    /* renamed from: d */
    public final String f2514d;

    public RunnableC2179b(@NonNull Reference<? extends WebView> reference, @NonNull WebViewClient webViewClient, @NonNull C2042p pVar, @NonNull String str) {
        this.f2511a = reference;
        this.f2513c = webViewClient;
        this.f2512b = pVar;
        this.f2514d = str;
    }

    @NonNull
    /* renamed from: a */
    private String m35523a() {
        return this.f2512b.m35836c().replace(this.f2512b.m35835d(), this.f2514d);
    }

    /* renamed from: b */
    private void m35522b() {
        WebView webView = (WebView) this.f2511a.get();
        if (webView != null) {
            String a = m35523a();
            webView.getSettings().setJavaScriptEnabled(true);
            webView.setWebViewClient(this.f2513c);
            webView.loadDataWithBaseURL("", a, "text/html", "UTF-8", "");
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            m35522b();
        } catch (Throwable th) {
            Log.e("Criteo.BLT", "Internal BLT exec error.", th);
        }
    }
}
