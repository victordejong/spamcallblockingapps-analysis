package com.criteo.publisher.p242b;

import android.content.ComponentName;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.criteo.publisher.C8520q;
/* renamed from: com.criteo.publisher.b.a */
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/b/a.class */
public final class C8254a extends WebViewClient {

    /* renamed from: a */
    private final AbstractC8257c f29804a;

    /* renamed from: b */
    private final ComponentName f29805b;

    /* renamed from: c */
    private final C8255b f29806c = C8520q.m25449a().m25391r();

    public C8254a(AbstractC8257c abstractC8257c, ComponentName componentName) {
        this.f29804a = abstractC8257c;
        this.f29805b = componentName;
    }

    @Override // android.webkit.WebViewClient
    public final boolean shouldOverrideUrlLoading(WebView webView, String str) {
        this.f29806c.m25960a(str, this.f29805b, this.f29804a);
        return true;
    }
}
