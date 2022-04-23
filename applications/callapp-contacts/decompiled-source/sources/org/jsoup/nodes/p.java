package org.jsoup.nodes;

import java.io.IOException;
import org.jsoup.b.c;
import org.jsoup.nodes.f;
/* loaded from: classes5-dex2jar.jar:org/jsoup/nodes/p.class */
public class p extends l {
    public p(String str) {
        this.f39300a = str;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean a(StringBuilder sb) {
        return sb.length() != 0 && sb.charAt(sb.length() - 1) == ' ';
    }

    @Override // org.jsoup.nodes.m
    public String a() {
        return "#text";
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
    void a(Appendable appendable, int i, f.a aVar) throws IOException {
        boolean z = aVar.e;
        if (z && ((this.h == 0 && (this.g instanceof h) && ((h) this.g).e.f39234d && !c.a(k())) || (aVar.f && z().size() > 0 && !c.a(k())))) {
            c(appendable, i, aVar);
        }
        i.a(appendable, k(), aVar, false, z && !h.d(this.g), z && (this.g instanceof f));
    }

    /* renamed from: b */
    public p clone() {
        return (p) super.clone();
    }

    @Override // org.jsoup.nodes.m
    void b(Appendable appendable, int i, f.a aVar) {
    }

    @Override // org.jsoup.nodes.l, org.jsoup.nodes.m
    public final /* bridge */ /* synthetic */ boolean b(String str) {
        return super.b(str);
    }

    @Override // org.jsoup.nodes.l, org.jsoup.nodes.m
    public final /* bridge */ /* synthetic */ String c(String str) {
        return super.c(str);
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
    public String toString() {
        return aB_();
    }
}
