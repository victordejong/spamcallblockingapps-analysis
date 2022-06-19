package com.bytedance.sdk.openadsdk.p167g.p168a;

import android.content.Context;
import android.text.TextUtils;
import android.webkit.WebView;
import com.bytedance.sdk.openadsdk.p167g.p168a.AbstractC4886k;
import java.util.LinkedHashSet;
import java.util.Set;
/* renamed from: com.bytedance.sdk.openadsdk.g.a.j */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/g/a/j.class */
public class C4885j {

    /* renamed from: a */
    WebView f17848a;

    /* renamed from: b */
    AbstractC4870a f17849b;

    /* renamed from: d */
    C4883h f17851d;

    /* renamed from: e */
    Context f17852e;

    /* renamed from: f */
    boolean f17853f;

    /* renamed from: g */
    boolean f17854g;

    /* renamed from: h */
    boolean f17855h;

    /* renamed from: i */
    AbstractC4891m f17856i;

    /* renamed from: j */
    AbstractC4892n f17857j;

    /* renamed from: n */
    boolean f17861n;

    /* renamed from: o */
    boolean f17862o;

    /* renamed from: p */
    AbstractC4886k.AbstractC4889b f17863p;

    /* renamed from: c */
    String f17850c = "IESJSBridge";

    /* renamed from: k */
    String f17858k = "host";

    /* renamed from: l */
    final Set<String> f17859l = new LinkedHashSet();

    /* renamed from: m */
    final Set<String> f17860m = new LinkedHashSet();

    C4885j() {
    }

    public C4885j(WebView webView) {
        this.f17848a = webView;
    }

    /* renamed from: c */
    private void m33646c() {
        if (!(this.f17848a == null && !this.f17861n && this.f17849b == null) && ((!TextUtils.isEmpty(this.f17850c) || this.f17848a == null) && this.f17851d != null)) {
            return;
        }
        throw new IllegalArgumentException("Requested arguments aren't set properly when building JsBridge.");
    }

    /* renamed from: a */
    public C4885j m33652a() {
        this.f17862o = true;
        return this;
    }

    /* renamed from: a */
    public C4885j m33651a(AbstractC4890l abstractC4890l) {
        this.f17851d = C4883h.m33662a(abstractC4890l);
        return this;
    }

    /* renamed from: a */
    public C4885j m33650a(String str) {
        this.f17850c = str;
        return this;
    }

    /* renamed from: a */
    public C4885j m33649a(boolean z) {
        this.f17853f = z;
        return this;
    }

    /* renamed from: b */
    public C4885j m33647b(boolean z) {
        this.f17854g = z;
        return this;
    }

    /* renamed from: b */
    public C4897q m33648b() {
        m33646c();
        return new C4897q(this);
    }
}
