package org.jsoup.c;

import com.mopub.common.AdType;
import java.io.Reader;
import java.util.ArrayList;
import java.util.List;
import org.jsoup.a.c;
import org.jsoup.c.i;
import org.jsoup.nodes.d;
import org.jsoup.nodes.e;
import org.jsoup.nodes.f;
import org.jsoup.nodes.h;
import org.jsoup.nodes.k;
import org.jsoup.nodes.m;
import org.jsoup.nodes.p;
/* loaded from: classes5-dex2jar.jar:org/jsoup/c/b.class */
public class b extends m {

    /* renamed from: a  reason: collision with root package name */
    static final String[] f39212a = {"applet", "caption", AdType.HTML, "marquee", "object", "table", "td", "th"};

    /* renamed from: b  reason: collision with root package name */
    static final String[] f39213b = {"ol", "ul"};

    /* renamed from: c  reason: collision with root package name */
    static final String[] f39214c = {"button"};

    /* renamed from: d  reason: collision with root package name */
    static final String[] f39215d = {AdType.HTML, "table"};
    static final String[] e = {"optgroup", "option"};
    static final String[] f = {"dd", "dt", "li", "optgroup", "option", "p", "rp", "rt"};
    static final String[] g = {"address", "applet", "area", "article", "aside", "base", "basefont", "bgsound", "blockquote", "body", "br", "button", "caption", "center", "col", "colgroup", "command", "dd", "details", "dir", "div", "dl", "dt", "embed", "fieldset", "figcaption", "figure", "footer", "form", "frame", "frameset", "h1", "h2", "h3", "h4", "h5", "h6", "head", "header", "hgroup", "hr", AdType.HTML, "iframe", "img", "input", "isindex", "li", "link", "listing", "marquee", "menu", "meta", "nav", "noembed", "noframes", "noscript", "object", "ol", "p", "param", "plaintext", "pre", "script", "section", "select", "style", "summary", "table", "tbody", "td", "textarea", "tfoot", "th", "thead", "title", "tr", "ul", "wbr", "xmp"};
    static final /* synthetic */ boolean q = true;
    private h A;
    private i.f B;
    private String[] C = {null};
    c h;
    c i;
    h j;
    k k;
    ArrayList<h> l;
    List<String> m;
    boolean n;
    boolean o;
    boolean p;
    private boolean z;

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(ArrayList<h> arrayList, h hVar, h hVar2) {
        int lastIndexOf = arrayList.lastIndexOf(hVar);
        c.a(lastIndexOf != -1);
        arrayList.set(lastIndexOf, hVar2);
    }

    private boolean a(String str, String[] strArr) {
        return a(str, f39212a, strArr);
    }

    private boolean a(String str, String[] strArr, String[] strArr2) {
        String[] strArr3 = this.C;
        strArr3[0] = str;
        return a(strArr3, strArr, strArr2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean a(ArrayList<h> arrayList, h hVar) {
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            if (arrayList.get(size) == hVar) {
                return true;
            }
        }
        return false;
    }

    private boolean a(String[] strArr, String[] strArr2, String[] strArr3) {
        int size = this.v.size() - 1;
        int i = size > 100 ? size - 100 : 0;
        while (size >= i) {
            String str = this.v.get(size).e.f39232b;
            if (org.jsoup.b.c.b(str, strArr)) {
                return true;
            }
            if (org.jsoup.b.c.b(str, strArr2)) {
                return false;
            }
            if (strArr3 != null && org.jsoup.b.c.b(str, strArr3)) {
                return false;
            }
            size--;
        }
        return false;
    }

    private void b(m mVar) {
        k kVar;
        if (this.v.isEmpty()) {
            this.u.a(mVar);
        } else if (this.o) {
            a(mVar);
        } else {
            p().a(mVar);
        }
        if (mVar instanceof h) {
            h hVar = (h) mVar;
            if (hVar.e.h && (kVar = this.k) != null) {
                kVar.b(hVar);
            }
        }
    }

    private void c(String... strArr) {
        for (int size = this.v.size() - 1; size >= 0; size--) {
            h hVar = this.v.get(size);
            if (!org.jsoup.b.c.a(hVar.e.f39232b, strArr) && !hVar.e.f39232b.equals(AdType.HTML)) {
                this.v.remove(size);
            } else {
                return;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean f(h hVar) {
        return org.jsoup.b.c.b(hVar.e.f39232b, g);
    }

    private void i(h hVar) {
        b((m) hVar);
        this.v.add(hVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.jsoup.c.m
    public final f a() {
        return f.f39224a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final h a(String str) {
        h hVar = new h(h.a(str, this.y), null);
        i(hVar);
        return hVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final h a(i.g gVar) {
        if (gVar.g != null && !gVar.g.b() && gVar.g.a(this.y) > 0) {
            n("Duplicate attribute");
        }
        if (gVar.f) {
            h b2 = b(gVar);
            this.v.add(b2);
            this.t.f39250c = l.Data;
            this.t.a(this.B.a().a(b2.e.f39231a));
            return b2;
        }
        h hVar = new h(h.a(gVar.j(), this.y), null, this.y.a(gVar.g));
        i(hVar);
        return hVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final k a(i.g gVar, boolean z) {
        k kVar = new k(h.a(gVar.j(), this.y), null, this.y.a(gVar.g));
        this.k = kVar;
        b((m) kVar);
        if (z) {
            this.v.add(kVar);
        }
        return kVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.jsoup.c.m
    public final void a(Reader reader, String str, g gVar) {
        super.a(reader, str, gVar);
        this.h = c.Initial;
        this.i = null;
        this.z = false;
        this.j = null;
        this.k = null;
        this.A = null;
        this.l = new ArrayList<>();
        this.m = new ArrayList();
        this.B = new i.f();
        this.n = true;
        this.o = false;
        this.p = false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(c cVar) {
        if (this.r.f39228a.a()) {
            this.r.f39228a.add(new d(this.s.b(), "Unexpected token [%s] when in state [%s]", this.x.getClass().getSimpleName(), cVar));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(i.b bVar) {
        h p = p();
        h hVar = p;
        if (p == null) {
            hVar = this.u;
        }
        String str = hVar.e.f39232b;
        String str2 = bVar.f39236b;
        hVar.a(bVar instanceof i.a ? new org.jsoup.nodes.c(str2) : (str.equals("script") || str.equals("style")) ? new e(str2) : new p(str2));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(i.c cVar) {
        b(new d(cVar.h()));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(h hVar) {
        if (!this.z) {
            String a2 = hVar.a("href");
            if (a2.length() != 0) {
                this.w = a2;
                this.z = true;
                this.u.f(a2);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(h hVar, h hVar2) {
        int lastIndexOf = this.v.lastIndexOf(hVar);
        c.a(lastIndexOf != -1);
        this.v.add(lastIndexOf + 1, hVar2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(m mVar) {
        h hVar;
        h b2 = b("table");
        boolean z = false;
        if (b2 == null) {
            hVar = this.v.get(0);
        } else if (((h) b2.g) != null) {
            hVar = null;
            z = true;
        } else {
            hVar = e(b2);
        }
        if (z) {
            c.a(b2);
            b2.f(mVar);
            return;
        }
        hVar.a(mVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(String... strArr) {
        for (int size = this.v.size() - 1; size >= 0; size--) {
            h hVar = this.v.get(size);
            this.v.remove(size);
            if (org.jsoup.b.c.b(hVar.e.f39232b, strArr)) {
                return;
            }
        }
    }

    @Override // org.jsoup.c.m
    public final /* bridge */ /* synthetic */ boolean a(String str, org.jsoup.nodes.b bVar) {
        return super.a(str, bVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.jsoup.c.m
    public final boolean a(i iVar) {
        this.x = iVar;
        return this.h.process(iVar, this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean a(i iVar, c cVar) {
        this.x = iVar;
        return cVar.process(iVar, this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final h b(String str) {
        for (int size = this.v.size() - 1; size >= 0; size--) {
            h hVar = this.v.get(size);
            if (hVar.e.f39232b.equals(str)) {
                return hVar;
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final h b(i.g gVar) {
        h a2 = h.a(gVar.j(), this.y);
        h hVar = new h(a2, null, this.y.a(gVar.g));
        b((m) hVar);
        if (gVar.f) {
            if (!a2.b()) {
                a2.f = true;
            } else if (!a2.e) {
                this.t.b("Tag cannot be self closing; not a void tag");
            }
        }
        return hVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void b() {
        this.i = this.h;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void b(h hVar) {
        this.v.add(hVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void b(h hVar, h hVar2) {
        a(this.v, hVar, hVar2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean b(String[] strArr) {
        return a(strArr, f39212a, (String[]) null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final f c() {
        return this.u;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final h c(String str) {
        for (int size = this.v.size() - 1; size >= 0; size--) {
            h hVar = this.v.get(size);
            this.v.remove(size);
            if (hVar.e.f39232b.equals(str)) {
                return hVar;
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean c(h hVar) {
        return a(this.v, hVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final String d() {
        return this.w;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void d(String str) {
        for (int size = this.v.size() - 1; size >= 0 && !this.v.get(size).e.f39232b.equals(str); size--) {
            this.v.remove(size);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean d(h hVar) {
        for (int size = this.v.size() - 1; size >= 0; size--) {
            if (this.v.get(size) == hVar) {
                this.v.remove(size);
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final h e() {
        return this.v.remove(this.v.size() - 1);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final h e(h hVar) {
        if (q || c(hVar)) {
            for (int size = this.v.size() - 1; size >= 0; size--) {
                if (this.v.get(size) == hVar) {
                    return this.v.get(size - 1);
                }
            }
            return null;
        }
        throw new AssertionError();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean e(String str) {
        return a(str, (String[]) null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final ArrayList<h> f() {
        return this.v;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean f(String str) {
        return a(str, f39213b);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void g() {
        c("table");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void g(h hVar) {
        h hVar2;
        int size = this.l.size() - 1;
        int i = 0;
        while (true) {
            if (size < 0 || (hVar2 = this.l.get(size)) == null) {
                break;
            }
            int i2 = i;
            if (hVar.e.f39232b.equals(hVar2.e.f39232b) && hVar.j().equals(hVar2.j())) {
                i2 = i + 1;
            }
            if (i2 == 3) {
                this.l.remove(size);
                break;
            } else {
                size--;
                i = i2;
            }
        }
        this.l.add(hVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean g(String str) {
        return a(str, f39214c);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void h() {
        c("tbody", "tfoot", "thead", "template");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void h(h hVar) {
        for (int size = this.l.size() - 1; size >= 0; size--) {
            if (this.l.get(size) == hVar) {
                this.l.remove(size);
                return;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean h(String str) {
        return a(str, f39215d, (String[]) null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void i() {
        c("tr", "template");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean i(String str) {
        for (int size = this.v.size() - 1; size >= 0; size--) {
            String str2 = this.v.get(size).e.f39232b;
            if (str2.equals(str)) {
                return true;
            }
            if (!org.jsoup.b.c.b(str2, e)) {
                return false;
            }
        }
        c.b("Should not be reachable");
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void j() {
        boolean z = false;
        for (int size = this.v.size() - 1; size >= 0; size--) {
            h hVar = this.v.get(size);
            if (size == 0) {
                hVar = this.A;
                z = true;
            }
            String str = hVar.e.f39232b;
            if ("select".equals(str)) {
                this.h = c.InSelect;
                return;
            } else if ("td".equals(str) || ("th".equals(str) && !z)) {
                this.h = c.InCell;
                return;
            } else if ("tr".equals(str)) {
                this.h = c.InRow;
                return;
            } else if ("tbody".equals(str) || "thead".equals(str) || "tfoot".equals(str)) {
                this.h = c.InTableBody;
                return;
            } else if ("caption".equals(str)) {
                this.h = c.InCaption;
                return;
            } else if ("colgroup".equals(str)) {
                this.h = c.InColumnGroup;
                return;
            } else if ("table".equals(str)) {
                this.h = c.InTable;
                return;
            } else if ("head".equals(str)) {
                this.h = c.InBody;
                return;
            } else if ("body".equals(str)) {
                this.h = c.InBody;
                return;
            } else if ("frameset".equals(str)) {
                this.h = c.InFrameset;
                return;
            } else if (AdType.HTML.equals(str)) {
                this.h = c.BeforeHead;
                return;
            } else if (z) {
                this.h = c.InBody;
                return;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void j(String str) {
        while (str != null && !p().e.f39232b.equals(str) && org.jsoup.b.c.b(p().e.f39232b, f)) {
            e();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final h k(String str) {
        h hVar;
        for (int size = this.l.size() - 1; size >= 0 && (hVar = this.l.get(size)) != null; size--) {
            if (hVar.e.f39232b.equals(str)) {
                return hVar;
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void k() {
        this.m = new ArrayList();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void l() {
        j(null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void m() {
        h hVar;
        boolean z = true;
        if (this.l.size() > 0) {
            ArrayList<h> arrayList = this.l;
            hVar = arrayList.get(arrayList.size() - 1);
        } else {
            hVar = null;
        }
        if (hVar != null && !c(hVar)) {
            int size = this.l.size() - 1;
            int i = size;
            while (i != 0) {
                int i2 = i - 1;
                h hVar2 = this.l.get(i2);
                hVar = hVar2;
                i = i2;
                if (hVar2 != null) {
                    hVar = hVar2;
                    i = i2;
                    if (c(hVar2)) {
                        i = i2;
                        hVar = hVar2;
                    }
                }
                z = false;
            }
            while (true) {
                int i3 = i;
                if (!z) {
                    i3 = i + 1;
                    hVar = this.l.get(i3);
                }
                c.a(hVar);
                h a2 = a(hVar.e.f39232b);
                a2.j().a(hVar.j());
                this.l.set(i3, a2);
                i = i3;
                if (i3 != size) {
                    z = false;
                } else {
                    return;
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void n() {
        while (!this.l.isEmpty()) {
            int size = this.l.size();
            if ((size > 0 ? this.l.remove(size - 1) : null) == null) {
                return;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void o() {
        this.l.add(null);
    }

    public String toString() {
        return "TreeBuilder{currentToken=" + this.x + ", state=" + this.h + ", currentElement=" + p() + '}';
    }
}
