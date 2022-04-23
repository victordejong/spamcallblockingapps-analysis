package org.jsoup.nodes;

import java.io.IOException;
import org.jsoup.c.g;
import org.jsoup.nodes.f;
/* loaded from: classes5-dex2jar.jar:org/jsoup/nodes/d.class */
public final class d extends l {
    public d(String str) {
        this.f39300a = str;
    }

    @Override // org.jsoup.nodes.m
    public final String a() {
        return "#comment";
    }

    @Override // org.jsoup.nodes.l, org.jsoup.nodes.m
    public final /* bridge */ /* synthetic */ String a(String str) {
        return super.a(str);
    }

    @Override // org.jsoup.nodes.l, org.jsoup.nodes.m
    public final /* bridge */ /* synthetic */ m a(String str, String str2) {
        return super.a(str, str2);
    }

    @Override // org.jsoup.nodes.m
    final void a(Appendable appendable, int i, f.a aVar) throws IOException {
        if (aVar.e && ((this.h == 0 && (this.g instanceof h) && ((h) this.g).e.f39234d) || aVar.f)) {
            c(appendable, i, aVar);
        }
        appendable.append("<!--").append(k()).append("-->");
    }

    @Override // org.jsoup.nodes.m
    final void b(Appendable appendable, int i, f.a aVar) {
    }

    public final boolean b() {
        String k = k();
        if (k.length() > 1) {
            return k.startsWith("!") || k.startsWith("?");
        }
        return false;
    }

    @Override // org.jsoup.nodes.l, org.jsoup.nodes.m
    public final /* bridge */ /* synthetic */ boolean b(String str) {
        return super.b(str);
    }

    @Override // org.jsoup.nodes.l, org.jsoup.nodes.m
    public final /* bridge */ /* synthetic */ String c(String str) {
        return super.c(str);
    }

    @Override // org.jsoup.nodes.m
    public final /* bridge */ /* synthetic */ m c() {
        return (d) super.clone();
    }

    @Override // org.jsoup.nodes.m
    public final /* synthetic */ Object clone() throws CloneNotSupportedException {
        return (d) super.clone();
    }

    public final q d() {
        q qVar;
        String k = k();
        f a2 = g.a().a("<" + k.substring(1, k.length() - 1) + ">", g());
        if (a2.m().size() > 0) {
            h l = a2.l();
            qVar = new q(n.b(a2).f39229b.a(l.e.f39231a), k.startsWith("!"));
            qVar.j().a(l.j());
        } else {
            qVar = null;
        }
        return qVar;
    }

    @Override // org.jsoup.nodes.l, org.jsoup.nodes.m
    public final /* bridge */ /* synthetic */ m e() {
        return super.e();
    }

    @Override // org.jsoup.nodes.l, org.jsoup.nodes.m
    public final /* bridge */ /* synthetic */ int f() {
        return super.f();
    }

    @Override // org.jsoup.nodes.l, org.jsoup.nodes.m
    public final /* bridge */ /* synthetic */ String g() {
        return super.g();
    }

    @Override // org.jsoup.nodes.m
    public final String toString() {
        return aB_();
    }
}
