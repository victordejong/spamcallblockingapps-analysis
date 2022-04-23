package com.bytedance.sdk.openadsdk.g.a;

import android.content.Context;
import android.text.TextUtils;
import android.webkit.WebView;
import com.bytedance.sdk.openadsdk.g.a.k;
import java.util.LinkedHashSet;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/g/a/j.class */
public class j {

    /* renamed from: a  reason: collision with root package name */
    WebView f9533a;

    /* renamed from: b  reason: collision with root package name */
    a f9534b;

    /* renamed from: d  reason: collision with root package name */
    h f9536d;
    Context e;
    boolean f;
    boolean g;
    boolean h;
    m i;
    n j;
    boolean n;
    boolean o;
    k.b p;

    /* renamed from: c  reason: collision with root package name */
    String f9535c = "IESJSBridge";
    String k = "host";
    final Set<String> l = new LinkedHashSet();
    final Set<String> m = new LinkedHashSet();

    j() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public j(WebView webView) {
        this.f9533a = webView;
    }

    private void c() {
        if ((this.f9533a == null && !this.n && this.f9534b == null) || ((TextUtils.isEmpty(this.f9535c) && this.f9533a != null) || this.f9536d == null)) {
            throw new IllegalArgumentException("Requested arguments aren't set properly when building JsBridge.");
        }
    }

    public j a() {
        this.o = true;
        return this;
    }

    public j a(l lVar) {
        this.f9536d = h.a(lVar);
        return this;
    }

    public j a(String str) {
        this.f9535c = str;
        return this;
    }

    public j a(boolean z) {
        this.f = z;
        return this;
    }

    public j b(boolean z) {
        this.g = z;
        return this;
    }

    public q b() {
        c();
        return new q(this);
    }
}
