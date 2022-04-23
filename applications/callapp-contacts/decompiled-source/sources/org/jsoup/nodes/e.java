package org.jsoup.nodes;

import java.io.IOException;
import org.jsoup.nodes.f;
/* loaded from: classes5-dex2jar.jar:org/jsoup/nodes/e.class */
public final class e extends l {
    public e(String str) {
        this.f39300a = str;
    }

    @Override // org.jsoup.nodes.m
    public final String a() {
        return "#data";
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
        appendable.append(k());
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
        return (e) super.clone();
    }

    @Override // org.jsoup.nodes.m
    public final /* synthetic */ Object clone() throws CloneNotSupportedException {
        return (e) super.clone();
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
