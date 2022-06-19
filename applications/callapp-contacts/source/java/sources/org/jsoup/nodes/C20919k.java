package org.jsoup.nodes;

import org.jsoup.p592c.C20815h;
import org.jsoup.select.C20933c;
/* renamed from: org.jsoup.nodes.k */
/* loaded from: classes5-dex2jar.jar:org/jsoup/nodes/k.class */
public final class C20919k extends C20911h {

    /* renamed from: a */
    private final C20933c f67498a = new C20933c();

    public C20919k(C20815h c20815h, String str, C20901b c20901b) {
        super(c20815h, str, c20901b);
    }

    /* renamed from: b */
    public final C20919k m249b(C20911h c20911h) {
        this.f67498a.add(c20911h);
        return this;
    }

    @Override // org.jsoup.nodes.C20911h, org.jsoup.nodes.AbstractC20921m
    /* renamed from: c */
    public final /* synthetic */ AbstractC20921m mo209c() {
        return (C20919k) super.clone();
    }

    @Override // org.jsoup.nodes.C20911h, org.jsoup.nodes.AbstractC20921m
    public final /* synthetic */ Object clone() throws CloneNotSupportedException {
        return (C20919k) super.clone();
    }

    @Override // org.jsoup.nodes.C20911h
    /* renamed from: d */
    public final /* bridge */ /* synthetic */ C20911h mo248d() {
        return (C20919k) super.clone();
    }

    @Override // org.jsoup.nodes.AbstractC20921m
    /* renamed from: g */
    public final void mo232g(AbstractC20921m abstractC20921m) {
        super.mo232g(abstractC20921m);
        this.f67498a.remove(abstractC20921m);
    }
}
