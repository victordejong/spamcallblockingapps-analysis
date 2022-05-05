package com.criteo.publisher.p023p;

import android.content.ComponentName;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.criteo.publisher.C1974i;
/* renamed from: com.criteo.publisher.p.a */
/* loaded from: classes-dex2jar.jar:com/criteo/publisher/p/a.class */
public class C2086a extends WebViewClient {
    @NonNull

    /* renamed from: a */
    public final AbstractC2089c f2332a;
    @Nullable

    /* renamed from: b */
    public final ComponentName f2333b;
    @NonNull

    /* renamed from: c */
    public final C2087b f2334c = C1974i.m35912U().m35923J();

    public C2086a(@NonNull AbstractC2089c cVar, @Nullable ComponentName componentName) {
        this.f2332a = cVar;
        this.f2333b = componentName;
    }

    @Override // android.webkit.WebViewClient
    public boolean shouldOverrideUrlLoading(WebView webView, String str) {
        this.f2334c.m35711a(str, this.f2333b, this.f2332a);
        return true;
    }
}
