package org.jsoup.nodes;

import java.io.IOException;
import java.util.Iterator;
import org.jsoup.nodes.C20906f;
import org.jsoup.p590a.C20779c;
/* renamed from: org.jsoup.nodes.q */
/* loaded from: classes5-dex2jar.jar:org/jsoup/nodes/q.class */
public final class C20926q extends AbstractC20920l {

    /* renamed from: b */
    private final boolean f67505b;

    public C20926q(String str, boolean z) {
        C20779c.m507a((Object) str);
        this.f67500a = str;
        this.f67505b = z;
    }

    @Override // org.jsoup.nodes.AbstractC20921m
    /* renamed from: a */
    public final String mo215a() {
        return "#declaration";
    }

    @Override // org.jsoup.nodes.AbstractC20920l, org.jsoup.nodes.AbstractC20921m
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ String mo213a(String str) {
        return super.mo213a(str);
    }

    @Override // org.jsoup.nodes.AbstractC20920l, org.jsoup.nodes.AbstractC20921m
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ AbstractC20921m mo212a(String str, String str2) {
        return super.mo212a(str, str2);
    }

    @Override // org.jsoup.nodes.AbstractC20921m
    /* renamed from: a */
    final void mo214a(Appendable appendable, int i, C20906f.C20907a c20907a) throws IOException {
        appendable.append("<").append(this.f67505b ? "!" : "?").append(m246k());
        Iterator<C20900a> it2 = mo227j().iterator();
        while (it2.hasNext()) {
            C20900a next = it2.next();
            if (!next.f67448a.equals("#declaration")) {
                appendable.append(' ');
                next.m318a(appendable, c20907a);
            }
        }
        appendable.append(this.f67505b ? "!" : "?").append(">");
    }

    @Override // org.jsoup.nodes.AbstractC20921m
    /* renamed from: b */
    final void mo211b(Appendable appendable, int i, C20906f.C20907a c20907a) {
    }

    @Override // org.jsoup.nodes.AbstractC20920l, org.jsoup.nodes.AbstractC20921m
    /* renamed from: b */
    public final /* bridge */ /* synthetic */ boolean mo210b(String str) {
        return super.mo210b(str);
    }

    @Override // org.jsoup.nodes.AbstractC20920l, org.jsoup.nodes.AbstractC20921m
    /* renamed from: c */
    public final /* bridge */ /* synthetic */ String mo208c(String str) {
        return super.mo208c(str);
    }

    @Override // org.jsoup.nodes.AbstractC20921m
    /* renamed from: c */
    public final /* bridge */ /* synthetic */ AbstractC20921m mo209c() {
        return (C20926q) super.clone();
    }

    @Override // org.jsoup.nodes.AbstractC20921m
    public final /* synthetic */ Object clone() throws CloneNotSupportedException {
        return (C20926q) super.clone();
    }

    @Override // org.jsoup.nodes.AbstractC20920l, org.jsoup.nodes.AbstractC20921m
    /* renamed from: e */
    public final /* bridge */ /* synthetic */ AbstractC20921m mo207e() {
        return super.mo207e();
    }

    @Override // org.jsoup.nodes.AbstractC20920l, org.jsoup.nodes.AbstractC20921m
    /* renamed from: f */
    public final /* bridge */ /* synthetic */ int mo206f() {
        return super.mo206f();
    }

    @Override // org.jsoup.nodes.AbstractC20920l, org.jsoup.nodes.AbstractC20921m
    /* renamed from: g */
    public final /* bridge */ /* synthetic */ String mo205g() {
        return super.mo205g();
    }

    @Override // org.jsoup.nodes.AbstractC20921m
    public final String toString() {
        return aB_();
    }
}
