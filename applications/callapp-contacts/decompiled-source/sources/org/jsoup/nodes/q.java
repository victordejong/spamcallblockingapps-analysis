package org.jsoup.nodes;

import java.io.IOException;
import java.util.Iterator;
import org.jsoup.a.c;
import org.jsoup.nodes.f;
/* loaded from: classes5-dex2jar.jar:org/jsoup/nodes/q.class */
public final class q extends l {

    /* renamed from: b  reason: collision with root package name */
    private final boolean f39303b;

    public q(String str, boolean z) {
        c.a((Object) str);
        this.f39300a = str;
        this.f39303b = z;
    }

    @Override // org.jsoup.nodes.m
    public final String a() {
        return "#declaration";
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
        String str = "!";
        appendable.append("<").append(this.f39303b ? "!" : "?").append(k());
        Iterator<a> it2 = j().iterator();
        while (it2.hasNext()) {
            a next = it2.next();
            if (!next.f39256a.equals("#declaration")) {
                appendable.append(' ');
                next.a(appendable, aVar);
            }
        }
        if (!this.f39303b) {
            str = "?";
        }
        appendable.append(str).append(">");
    }

    @Override // org.jsoup.nodes.m
    final void b(Appendable appendable, int i, f.a aVar) {
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
        return (q) super.clone();
    }

    @Override // org.jsoup.nodes.m
    public final /* synthetic */ Object clone() throws CloneNotSupportedException {
        return (q) super.clone();
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
