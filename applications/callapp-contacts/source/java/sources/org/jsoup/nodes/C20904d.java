package org.jsoup.nodes;

import java.io.IOException;
import org.jsoup.nodes.C20906f;
import org.jsoup.p592c.C20814g;
/* renamed from: org.jsoup.nodes.d */
/* loaded from: classes5-dex2jar.jar:org/jsoup/nodes/d.class */
public final class C20904d extends AbstractC20920l {
    public C20904d(String str) {
        this.f67500a = str;
    }

    @Override // org.jsoup.nodes.AbstractC20921m
    /* renamed from: a */
    public final String mo215a() {
        return "#comment";
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
        if (c20907a.f67466e && ((this.f67502h == 0 && (this.f67501g instanceof C20911h) && ((C20911h) this.f67501g).f67481e.f67390d) || c20907a.f67467f)) {
            m237c(appendable, i, c20907a);
        }
        appendable.append("<!--").append(m246k()).append("-->");
    }

    @Override // org.jsoup.nodes.AbstractC20921m
    /* renamed from: b */
    final void mo211b(Appendable appendable, int i, C20906f.C20907a c20907a) {
    }

    /* renamed from: b */
    public final boolean m287b() {
        String k = m246k();
        if (k.length() > 1) {
            return k.startsWith("!") || k.startsWith("?");
        }
        return false;
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
        return (C20904d) super.clone();
    }

    @Override // org.jsoup.nodes.AbstractC20921m
    public final /* synthetic */ Object clone() throws CloneNotSupportedException {
        return (C20904d) super.clone();
    }

    /* renamed from: d */
    public final C20926q m286d() {
        C20926q c20926q;
        String k = m246k();
        C20906f m395a = C20814g.m397a().m395a("<" + k.substring(1, k.length() - 1) + ">", mo205g());
        if (m395a.m265m().size() > 0) {
            C20911h l = m395a.m266l();
            c20926q = new C20926q(C20923n.m218b(m395a).f67377b.m399a(l.f67481e.f67387a), k.startsWith("!"));
            c20926q.mo227j().m306a(l.mo227j());
        } else {
            c20926q = null;
        }
        return c20926q;
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
