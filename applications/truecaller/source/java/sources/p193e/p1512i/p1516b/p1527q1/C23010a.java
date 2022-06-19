package p193e.p1512i.p1516b.p1527q1;

import android.content.ComponentName;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import e.i.b.k1;
import p1727n3.p1789g0.C26232y;
import p193e.p1512i.p1516b.C23144w;
import p193e.p1512i.p1516b.C23157x2;
/* renamed from: e.i.b.q1.a */
/* loaded from: classes-dex2jar.jar:e/i/b/q1/a.class */
public class C23010a extends WebViewClient {

    /* renamed from: a */
    public final AbstractC23013c f63776a;

    /* renamed from: b */
    public final ComponentName f63777b;

    /* renamed from: c */
    public final C23011b f63778c;

    public C23010a(AbstractC23013c abstractC23013c, ComponentName componentName) {
        this.f63776a = abstractC23013c;
        this.f63777b = componentName;
        C23157x2 m7454h = C23157x2.m7454h();
        this.f63778c = (C23011b) C26232y.m2364e(m7454h.f64124a, C23011b.class, new k1(new C23144w(m7454h)));
    }

    @Override // android.webkit.WebViewClient
    public boolean shouldOverrideUrlLoading(WebView webView, String str) {
        this.f63778c.m7589a(str, this.f63777b, this.f63776a);
        return true;
    }
}
