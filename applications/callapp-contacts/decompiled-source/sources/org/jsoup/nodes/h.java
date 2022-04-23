package org.jsoup.nodes;

import java.io.IOException;
import java.lang.ref.WeakReference;
import java.util.Collections;
import java.util.List;
import java.util.regex.Pattern;
import org.apache.commons.lang3.StringUtils;
import org.jsoup.a.c;
import org.jsoup.nodes.f;
import org.jsoup.select.g;
/* loaded from: classes5-dex2jar.jar:org/jsoup/nodes/h.class */
public class h extends m {

    /* renamed from: a  reason: collision with root package name */
    private static final List<m> f39280a = Collections.emptyList();

    /* renamed from: b  reason: collision with root package name */
    private static final Pattern f39281b = Pattern.compile("\\s+");

    /* renamed from: c  reason: collision with root package name */
    private static final String f39282c = b.h("baseUri");

    /* renamed from: d  reason: collision with root package name */
    private WeakReference<List<h>> f39283d;
    public org.jsoup.c.h e;
    public List<m> f;
    private b i;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5-dex2jar.jar:org/jsoup/nodes/h$a.class */
    public static final class a extends org.jsoup.a.a<m> {

        /* renamed from: a  reason: collision with root package name */
        private final h f39286a;

        a(h hVar, int i) {
            super(i);
            this.f39286a = hVar;
        }

        @Override // org.jsoup.a.a
        public final void a() {
            this.f39286a.o();
        }
    }

    public h(String str) {
        this(org.jsoup.c.h.a(str), "", null);
    }

    public h(org.jsoup.c.h hVar, String str) {
        this(hVar, str, null);
    }

    public h(org.jsoup.c.h hVar, String str, b bVar) {
        c.a(hVar);
        this.f = f39280a;
        this.i = bVar;
        this.e = hVar;
        if (str != null) {
            f(str);
        }
    }

    private static <E extends h> int a(h hVar, List<E> list) {
        int size = list.size();
        for (int i = 0; i < size; i++) {
            if (list.get(i) == hVar) {
                return i;
            }
        }
        return 0;
    }

    private void a(StringBuilder sb) {
        for (m mVar : this.f) {
            if (mVar instanceof p) {
                b(sb, (p) mVar);
            } else if (mVar instanceof h) {
                a((h) mVar, sb);
            }
        }
    }

    private static void a(h hVar, StringBuilder sb) {
        if (hVar.e.f39231a.equals("br") && !p.a(sb)) {
            sb.append(StringUtils.SPACE);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void b(StringBuilder sb, p pVar) {
        String k = pVar.k();
        if (d(pVar.g) || (pVar instanceof c)) {
            sb.append(k);
        } else {
            org.jsoup.b.c.a(sb, k, p.a(sb));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean d(m mVar) {
        if (!(mVar instanceof h)) {
            return false;
        }
        h hVar = (h) mVar;
        int i = 0;
        while (!hVar.e.g) {
            h hVar2 = (h) hVar.g;
            i++;
            if (i >= 6) {
                return false;
            }
            hVar = hVar2;
            if (hVar2 == null) {
                return false;
            }
        }
        return true;
    }

    @Override // org.jsoup.nodes.m
    public final <T extends Appendable> T a(T t) {
        int size = this.f.size();
        for (int i = 0; i < size; i++) {
            this.f.get(i).b(t);
        }
        return t;
    }

    @Override // org.jsoup.nodes.m
    public String a() {
        return this.e.f39231a;
    }

    public final h a(m mVar) {
        c.a(mVar);
        i(mVar);
        h();
        this.f.add(mVar);
        mVar.h = this.f.size() - 1;
        return this;
    }

    @Override // org.jsoup.nodes.m
    void a(Appendable appendable, int i, f.a aVar) throws IOException {
        if (aVar.e) {
            if (this.e.f39234d || (((h) this.g) != null && ((h) this.g).e.f39234d) || aVar.f) {
                boolean z = false;
                if (!this.e.f39233c) {
                    z = false;
                    if (!this.e.e) {
                        z = false;
                        if (((h) this.g).e.f39233c) {
                            z = false;
                            if (B() != null) {
                                z = false;
                                if (!aVar.f) {
                                    z = true;
                                }
                            }
                        }
                    }
                }
                if (!z && (!(appendable instanceof StringBuilder) || ((StringBuilder) appendable).length() > 0)) {
                    c(appendable, i, aVar);
                }
            }
        }
        appendable.append('<').append(this.e.f39231a);
        b bVar = this.i;
        if (bVar != null) {
            bVar.a(appendable, aVar);
        }
        if (!this.f.isEmpty() || !this.e.a()) {
            appendable.append('>');
        } else if (aVar.h != f.a.EnumC0751a.f39273a || !this.e.e) {
            appendable.append(" />");
        } else {
            appendable.append('>');
        }
    }

    /* renamed from: b */
    public final h a(String str, String str2) {
        super.a(str, str2);
        return this;
    }

    public final h b(m mVar) {
        c.a(mVar);
        a(0, mVar);
        return this;
    }

    @Override // org.jsoup.nodes.m
    void b(Appendable appendable, int i, f.a aVar) throws IOException {
        if (!this.f.isEmpty() || !this.e.a()) {
            if (aVar.e && !this.f.isEmpty() && (this.e.f39234d || (aVar.f && (this.f.size() > 1 || (this.f.size() == 1 && !(this.f.get(0) instanceof p)))))) {
                c(appendable, i, aVar);
            }
            appendable.append("</").append(this.e.f39231a).append('>');
        }
    }

    /* renamed from: c */
    public final h f(m mVar) {
        return (h) super.f(mVar);
    }

    /* renamed from: d */
    public h clone() {
        return (h) super.clone();
    }

    @Override // org.jsoup.nodes.m
    protected final void d(String str) {
        j().b(f39282c, str);
    }

    @Override // org.jsoup.nodes.m
    public final /* synthetic */ m e() {
        this.f.clear();
        return this;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.jsoup.nodes.m
    public final /* synthetic */ m e(m mVar) {
        h hVar = (h) super.e(mVar);
        b bVar = this.i;
        hVar.i = bVar != null ? bVar.clone() : null;
        a aVar = new a(hVar, this.f.size());
        hVar.f = aVar;
        aVar.addAll(this.f);
        hVar.f(g());
        return hVar;
    }

    public final boolean e(String str) {
        if (!i()) {
            return false;
        }
        String e = this.i.e("class");
        int length = e.length();
        int length2 = str.length();
        if (length == 0 || length < length2) {
            return false;
        }
        if (length == length2) {
            return str.equalsIgnoreCase(e);
        }
        boolean z = false;
        int i = 0;
        for (int i2 = 0; i2 < length; i2++) {
            if (Character.isWhitespace(e.charAt(i2))) {
                z = z;
                i = i;
                if (!z) {
                    continue;
                } else if (i2 - i == length2 && e.regionMatches(true, i, str, 0, length2)) {
                    return true;
                } else {
                    z = false;
                    i = i;
                }
            } else {
                z = z;
                i = i;
                if (!z) {
                    i = i2;
                    z = true;
                }
            }
        }
        if (!z || length - i != length2) {
            return false;
        }
        return e.regionMatches(true, i, str, 0, length2);
    }

    @Override // org.jsoup.nodes.m
    public final int f() {
        return this.f.size();
    }

    @Override // org.jsoup.nodes.m
    public final String g() {
        String str = f39282c;
        for (h hVar = this; hVar != null; hVar = (h) hVar.g) {
            if (hVar.i() && hVar.i.f(str)) {
                return hVar.i.d(str);
            }
        }
        return "";
    }

    @Override // org.jsoup.nodes.m
    protected final List<m> h() {
        if (this.f == f39280a) {
            this.f = new a(this, 4);
        }
        return this.f;
    }

    @Override // org.jsoup.nodes.m
    protected final boolean i() {
        return this.i != null;
    }

    @Override // org.jsoup.nodes.m
    public final b j() {
        if (!i()) {
            this.i = new b();
        }
        return this.i;
    }

    public final String k() {
        return i() ? this.i.e("id") : "";
    }

    public final h l() {
        return n().get(0);
    }

    public final org.jsoup.select.c m() {
        return new org.jsoup.select.c(n());
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x0014, code lost:
        if (r0 == null) goto L_0x0017;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.List<org.jsoup.nodes.h> n() {
        /*
            r5 = this;
            r0 = r5
            java.lang.ref.WeakReference<java.util.List<org.jsoup.nodes.h>> r0 = r0.f39283d
            r6 = r0
            r0 = r6
            if (r0 == 0) goto L_0x0017
            r0 = r6
            java.lang.Object r0 = r0.get()
            java.util.List r0 = (java.util.List) r0
            r7 = r0
            r0 = r7
            r6 = r0
            r0 = r7
            if (r0 != 0) goto L_0x0066
        L_0x0017:
            r0 = r5
            java.util.List<org.jsoup.nodes.m> r0 = r0.f
            int r0 = r0.size()
            r8 = r0
            java.util.ArrayList r0 = new java.util.ArrayList
            r1 = r0
            r2 = r8
            r1.<init>(r2)
            r6 = r0
            r0 = 0
            r9 = r0
        L_0x002d:
            r0 = r9
            r1 = r8
            if (r0 >= r1) goto L_0x005a
            r0 = r5
            java.util.List<org.jsoup.nodes.m> r0 = r0.f
            r1 = r9
            java.lang.Object r0 = r0.get(r1)
            org.jsoup.nodes.m r0 = (org.jsoup.nodes.m) r0
            r7 = r0
            r0 = r7
            boolean r0 = r0 instanceof org.jsoup.nodes.h
            if (r0 == 0) goto L_0x0054
            r0 = r6
            r1 = r7
            org.jsoup.nodes.h r1 = (org.jsoup.nodes.h) r1
            boolean r0 = r0.add(r1)
        L_0x0054:
            int r9 = r9 + 1
            goto L_0x002d
        L_0x005a:
            r0 = r5
            java.lang.ref.WeakReference r1 = new java.lang.ref.WeakReference
            r2 = r1
            r3 = r6
            r2.<init>(r3)
            r0.f39283d = r1
        L_0x0066:
            r0 = r6
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.jsoup.nodes.h.n():java.util.List");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.jsoup.nodes.m
    public final void o() {
        super.o();
        this.f39283d = null;
    }

    public final h p() {
        List<h> n;
        int a2;
        if (this.g != null && (a2 = a(this, (n = ((h) this.g).n()))) > 0) {
            return n.get(a2 - 1);
        }
        return null;
    }

    public final int q() {
        if (((h) this.g) == null) {
            return 0;
        }
        return a(this, ((h) this.g).n());
    }

    public final String r() {
        final StringBuilder a2 = org.jsoup.b.c.a();
        org.jsoup.select.f.a(new g() { // from class: org.jsoup.nodes.h.1
            @Override // org.jsoup.select.g
            public final void a(m mVar, int i) {
                if (mVar instanceof p) {
                    h.b(a2, (p) mVar);
                } else if (mVar instanceof h) {
                    h hVar = (h) mVar;
                    if (a2.length() <= 0) {
                        return;
                    }
                    if ((hVar.e.f39233c || hVar.e.f39231a.equals("br")) && !p.a(a2)) {
                        a2.append(' ');
                    }
                }
            }

            @Override // org.jsoup.select.g
            public final void b(m mVar, int i) {
                if ((mVar instanceof h) && ((h) mVar).e.f39233c && (mVar.A() instanceof p) && !p.a(a2)) {
                    a2.append(' ');
                }
            }
        }, this);
        return org.jsoup.b.c.a(a2).trim();
    }

    public final String s() {
        StringBuilder a2 = org.jsoup.b.c.a();
        a(a2);
        return org.jsoup.b.c.a(a2).trim();
    }

    public final String t() {
        StringBuilder a2 = org.jsoup.b.c.a();
        for (m mVar : this.f) {
            if (mVar instanceof e) {
                a2.append(((e) mVar).k());
            } else if (mVar instanceof d) {
                a2.append(((d) mVar).k());
            } else if (mVar instanceof h) {
                a2.append(((h) mVar).t());
            } else if (mVar instanceof c) {
                a2.append(((c) mVar).k());
            }
        }
        return org.jsoup.b.c.a(a2);
    }

    @Override // org.jsoup.nodes.m
    public final /* bridge */ /* synthetic */ m u() {
        return (h) super.u();
    }

    @Override // org.jsoup.nodes.m
    public final /* bridge */ /* synthetic */ m v() {
        return (h) this.g;
    }
}
