package com.bytedance.sdk.openadsdk.p167g.p168a;

import android.webkit.WebView;
import com.bytedance.sdk.openadsdk.p167g.p168a.AbstractC4874d;
import java.util.ArrayList;
import java.util.List;
/* renamed from: com.bytedance.sdk.openadsdk.g.a.q */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/g/a/q.class */
public class C4897q {

    /* renamed from: a */
    static C4907v f17879a;

    /* renamed from: b */
    private final AbstractC4870a f17880b;

    /* renamed from: c */
    private final WebView f17881c;

    /* renamed from: d */
    private final C4885j f17882d;

    /* renamed from: e */
    private final List<AbstractC4892n> f17883e;

    /* renamed from: f */
    private AbstractC4893o f17884f;

    /* renamed from: g */
    private volatile boolean f17885g = false;

    public C4897q(C4885j c4885j) {
        C4907v c4907v;
        ArrayList arrayList = new ArrayList();
        this.f17883e = arrayList;
        this.f17882d = c4885j;
        C4902u m33594a = (!c4885j.f17855h || (c4907v = f17879a) == null) ? null : c4907v.m33594a(c4885j.f17858k);
        if (c4885j.f17848a != null) {
            C4911y c4911y = new C4911y();
            this.f17880b = c4911y;
            c4911y.m33691a(c4885j, m33594a);
        } else {
            AbstractC4870a abstractC4870a = c4885j.f17849b;
            this.f17880b = abstractC4870a;
            abstractC4870a.m33691a(c4885j, m33594a);
        }
        this.f17881c = c4885j.f17848a;
        arrayList.add(c4885j.f17857j);
        C4884i.m33655a(c4885j.f17853f);
        C4910x.m33588a(c4885j.f17854g);
    }

    /* renamed from: a */
    public static C4885j m33614a(WebView webView) {
        return new C4885j(webView);
    }

    /* renamed from: a */
    private void m33615a() {
        if (this.f17885g) {
            C4884i.m33658a(new IllegalStateException("JsBridge2 is already released!!!"));
        }
    }

    /* renamed from: a */
    public C4897q m33613a(String str, AbstractC4874d.AbstractC4876b abstractC4876b) {
        return m33611a(str, (String) null, abstractC4876b);
    }

    /* renamed from: a */
    public C4897q m33612a(String str, AbstractC4877e<?, ?> abstractC4877e) {
        return m33610a(str, (String) null, abstractC4877e);
    }

    /* renamed from: a */
    public C4897q m33611a(String str, String str2, AbstractC4874d.AbstractC4876b abstractC4876b) {
        m33615a();
        this.f17880b.f17816g.m33669a(str, abstractC4876b);
        AbstractC4893o abstractC4893o = this.f17884f;
        if (abstractC4893o != null) {
            abstractC4893o.m33634a(str);
        }
        return this;
    }

    /* renamed from: a */
    public C4897q m33610a(String str, String str2, AbstractC4877e<?, ?> abstractC4877e) {
        m33615a();
        this.f17880b.f17816g.m33668a(str, abstractC4877e);
        AbstractC4893o abstractC4893o = this.f17884f;
        if (abstractC4893o != null) {
            abstractC4893o.m33634a(str);
        }
        return this;
    }
}
