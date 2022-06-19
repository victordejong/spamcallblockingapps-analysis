package com.criteo.publisher.p254l;

import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.amazonaws.services.p101s3.util.Mimetypes;
import com.criteo.publisher.AbstractRunnableC8529v;
import com.criteo.publisher.model.C8507t;
import java.lang.ref.Reference;
/* renamed from: com.criteo.publisher.l.b */
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/l/b.class */
public final class C8385b extends AbstractRunnableC8529v {

    /* renamed from: a */
    private final Reference<? extends WebView> f30090a;

    /* renamed from: b */
    private final C8507t f30091b;

    /* renamed from: c */
    private final WebViewClient f30092c;

    /* renamed from: d */
    private final String f30093d;

    public C8385b(Reference<? extends WebView> reference, WebViewClient webViewClient, C8507t c8507t, String str) {
        this.f30090a = reference;
        this.f30092c = webViewClient;
        this.f30091b = c8507t;
        this.f30093d = str;
    }

    @Override // com.criteo.publisher.AbstractRunnableC8529v
    /* renamed from: a */
    public final void mo25368a() {
        WebView webView = this.f30090a.get();
        if (webView != null) {
            String replace = this.f30091b.m25528c().replace(this.f30091b.m25527d(), this.f30093d);
            webView.getSettings().setJavaScriptEnabled(true);
            webView.setWebViewClient(this.f30092c);
            webView.loadDataWithBaseURL("", replace, Mimetypes.MIMETYPE_HTML, "UTF-8", "");
        }
    }
}
