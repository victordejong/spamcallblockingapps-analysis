package com.criteo.publisher.l;

import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.amazonaws.services.s3.util.Mimetypes;
import com.criteo.publisher.model.t;
import com.criteo.publisher.v;
import java.lang.ref.Reference;
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/l/b.class */
public final class b extends v {

    /* renamed from: a  reason: collision with root package name */
    private final Reference<? extends WebView> f17420a;

    /* renamed from: b  reason: collision with root package name */
    private final t f17421b;

    /* renamed from: c  reason: collision with root package name */
    private final WebViewClient f17422c;

    /* renamed from: d  reason: collision with root package name */
    private final String f17423d;

    public b(Reference<? extends WebView> reference, WebViewClient webViewClient, t tVar, String str) {
        this.f17420a = reference;
        this.f17422c = webViewClient;
        this.f17421b = tVar;
        this.f17423d = str;
    }

    @Override // com.criteo.publisher.v
    public final void a() {
        WebView webView = (WebView) this.f17420a.get();
        if (webView != null) {
            String replace = this.f17421b.c().replace(this.f17421b.d(), this.f17423d);
            webView.getSettings().setJavaScriptEnabled(true);
            webView.setWebViewClient(this.f17422c);
            webView.loadDataWithBaseURL("", replace, Mimetypes.MIMETYPE_HTML, "UTF-8", "");
        }
    }
}
