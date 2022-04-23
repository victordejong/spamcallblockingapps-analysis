package com.criteo.publisher.b;

import android.content.ComponentName;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.criteo.publisher.q;
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/b/a.class */
public final class a extends WebViewClient {

    /* renamed from: a  reason: collision with root package name */
    private final c f17198a;

    /* renamed from: b  reason: collision with root package name */
    private final ComponentName f17199b;

    /* renamed from: c  reason: collision with root package name */
    private final b f17200c = q.a().r();

    public a(c cVar, ComponentName componentName) {
        this.f17198a = cVar;
        this.f17199b = componentName;
    }

    @Override // android.webkit.WebViewClient
    public final boolean shouldOverrideUrlLoading(WebView webView, String str) {
        this.f17200c.a(str, this.f17199b, this.f17198a);
        return true;
    }
}
