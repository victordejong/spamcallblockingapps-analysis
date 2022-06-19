package androidx.constraintlayout.p026a.p027a.p028a;

import androidx.constraintlayout.p026a.p027a.C0541e;
import androidx.constraintlayout.p026a.p027a.C0544f;
import androidx.constraintlayout.p026a.p027a.C0547h;
import androidx.constraintlayout.p026a.p027a.C0550j;
import androidx.constraintlayout.p026a.p027a.p028a.C0513b;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
/* renamed from: androidx.constraintlayout.a.a.a.e */
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/a/a/a/e.class */
public final class C0518e {

    /* renamed from: a */
    public C0544f f1942a;

    /* renamed from: d */
    public C0544f f1945d;

    /* renamed from: b */
    public boolean f1943b = true;

    /* renamed from: c */
    public boolean f1944c = true;

    /* renamed from: e */
    public ArrayList<AbstractC0533p> f1946e = new ArrayList<>();

    /* renamed from: h */
    private ArrayList<C0528m> f1949h = new ArrayList<>();

    /* renamed from: f */
    public C0513b.AbstractC0515b f1947f = null;

    /* renamed from: i */
    private C0513b.C0514a f1950i = new C0513b.C0514a();

    /* renamed from: g */
    ArrayList<C0528m> f1948g = new ArrayList<>();

    public C0518e(C0544f c0544f) {
        this.f1942a = c0544f;
        this.f1945d = c0544f;
    }

    /* renamed from: a */
    private void m45361a(C0519f c0519f, int i, int i2, C0519f c0519f2, ArrayList<C0528m> arrayList, C0528m c0528m) {
        AbstractC0533p abstractC0533p = c0519f.f1954d;
        if (abstractC0533p.f1995e != null || abstractC0533p == this.f1942a.f2114i || abstractC0533p == this.f1942a.f2115j) {
            return;
        }
        C0528m c0528m2 = c0528m;
        if (c0528m == null) {
            c0528m2 = new C0528m(abstractC0533p, i2);
            arrayList.add(c0528m2);
        }
        abstractC0533p.f1995e = c0528m2;
        c0528m2.f1972f.add(abstractC0533p);
        c0528m2.f1971e = abstractC0533p;
        for (AbstractC0517d abstractC0517d : abstractC0533p.f2000j.f1961k) {
            if (abstractC0517d instanceof C0519f) {
                m45361a((C0519f) abstractC0517d, i, 0, c0519f2, arrayList, c0528m2);
            }
        }
        for (AbstractC0517d abstractC0517d2 : abstractC0533p.f2001k.f1961k) {
            if (abstractC0517d2 instanceof C0519f) {
                m45361a((C0519f) abstractC0517d2, i, 1, c0519f2, arrayList, c0528m2);
            }
        }
        if (i == 1 && (abstractC0533p instanceof C0529n)) {
            for (AbstractC0517d abstractC0517d3 : ((C0529n) abstractC0533p).f1975a.f1961k) {
                if (abstractC0517d3 instanceof C0519f) {
                    m45361a((C0519f) abstractC0517d3, i, 2, c0519f2, arrayList, c0528m2);
                }
            }
        }
        for (C0519f c0519f3 : abstractC0533p.f2000j.f1962l) {
            if (c0519f3 == c0519f2) {
                c0528m2.f1969c = true;
            }
            m45361a(c0519f3, i, 0, c0519f2, arrayList, c0528m2);
        }
        for (C0519f c0519f4 : abstractC0533p.f2001k.f1962l) {
            if (c0519f4 == c0519f2) {
                c0528m2.f1969c = true;
            }
            m45361a(c0519f4, i, 1, c0519f2, arrayList, c0528m2);
        }
        if (i != 1 || !(abstractC0533p instanceof C0529n)) {
            return;
        }
        for (C0519f c0519f5 : ((C0529n) abstractC0533p).f1975a.f1962l) {
            m45361a(c0519f5, i, 2, c0519f2, arrayList, c0528m2);
        }
    }

    /* renamed from: a */
    private void m45360a(AbstractC0533p abstractC0533p, int i, ArrayList<C0528m> arrayList) {
        for (AbstractC0517d abstractC0517d : abstractC0533p.f2000j.f1961k) {
            if (abstractC0517d instanceof C0519f) {
                m45361a((C0519f) abstractC0517d, i, 0, abstractC0533p.f2001k, arrayList, null);
            } else if (abstractC0517d instanceof AbstractC0533p) {
                m45361a(((AbstractC0533p) abstractC0517d).f2000j, i, 0, abstractC0533p.f2001k, arrayList, null);
            }
        }
        for (AbstractC0517d abstractC0517d2 : abstractC0533p.f2001k.f1961k) {
            if (abstractC0517d2 instanceof C0519f) {
                m45361a((C0519f) abstractC0517d2, i, 1, abstractC0533p.f2000j, arrayList, null);
            } else if (abstractC0517d2 instanceof AbstractC0533p) {
                m45361a(((AbstractC0533p) abstractC0517d2).f2001k, i, 1, abstractC0533p.f2000j, arrayList, null);
            }
        }
        if (i == 1) {
            for (AbstractC0517d abstractC0517d3 : ((C0529n) abstractC0533p).f1975a.f1961k) {
                if (abstractC0517d3 instanceof C0519f) {
                    m45361a((C0519f) abstractC0517d3, i, 2, null, arrayList, null);
                }
            }
        }
    }

    /* renamed from: a */
    private void m45359a(C0541e c0541e, C0541e.EnumC0543a enumC0543a, int i, C0541e.EnumC0543a enumC0543a2, int i2) {
        this.f1950i.f1930d = enumC0543a;
        this.f1950i.f1931e = enumC0543a2;
        this.f1950i.f1932f = i;
        this.f1950i.f1933g = i2;
        this.f1947f.mo44732a(c0541e, this.f1950i);
        c0541e.m45271g(this.f1950i.f1934h);
        c0541e.m45269h(this.f1950i.f1935i);
        c0541e.f2044C = this.f1950i.f1937k;
        c0541e.m45264k(this.f1950i.f1936j);
    }

    /* renamed from: a */
    private void m45356a(ArrayList<AbstractC0533p> arrayList) {
        HashSet hashSet;
        arrayList.clear();
        this.f1945d.f2114i.mo45318c();
        this.f1945d.f2115j.mo45318c();
        arrayList.add(this.f1945d.f2114i);
        arrayList.add(this.f1945d.f2115j);
        Iterator<C0541e> it2 = this.f1945d.f2231be.iterator();
        HashSet hashSet2 = null;
        while (it2.hasNext()) {
            C0541e next = it2.next();
            if (next instanceof C0547h) {
                arrayList.add(new C0524j(next));
            } else {
                if (next.m45248w()) {
                    if (next.f2112g == null) {
                        next.f2112g = new C0516c(next, 0);
                    }
                    HashSet hashSet3 = hashSet2;
                    if (hashSet2 == null) {
                        hashSet3 = new HashSet();
                    }
                    hashSet3.add(next.f2112g);
                    hashSet2 = hashSet3;
                } else {
                    arrayList.add(next.f2114i);
                }
                if (next.m45247x()) {
                    if (next.f2113h == null) {
                        next.f2113h = new C0516c(next, 1);
                    }
                    hashSet = hashSet2;
                    if (hashSet2 == null) {
                        hashSet = new HashSet();
                    }
                    hashSet.add(next.f2113h);
                } else {
                    arrayList.add(next.f2115j);
                    hashSet = hashSet2;
                }
                hashSet2 = hashSet;
                if (next instanceof C0550j) {
                    arrayList.add(new C0525k(next));
                    hashSet2 = hashSet;
                }
            }
        }
        if (hashSet2 != null) {
            arrayList.addAll(hashSet2);
        }
        Iterator<AbstractC0533p> it3 = arrayList.iterator();
        while (it3.hasNext()) {
            it3.next().mo45318c();
        }
        Iterator<AbstractC0533p> it4 = arrayList.iterator();
        while (it4.hasNext()) {
            AbstractC0533p next2 = it4.next();
            if (next2.f1994d != this.f1945d) {
                next2.mo45315f();
            }
        }
    }

    /* JADX WARN: Type inference failed for: r0v9, types: [long] */
    /* renamed from: a */
    public final int m45357a(C0544f c0544f, int i) {
        int size = this.f1948g.size();
        char c = 0;
        for (int i2 = 0; i2 < size; i2++) {
            c = Math.max((long) c, this.f1948g.get(i2).m45334a(c0544f, i));
        }
        return c;
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x0080, code lost:
        if (r0 == 1) goto L21;
     */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0157  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0168  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m45362a() {
        /*
            Method dump skipped, instructions count: 414
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.p026a.p027a.p028a.C0518e.m45362a():void");
    }

    /* JADX WARN: Code restructure failed: missing block: B:51:0x0106, code lost:
        if (r0.f2051J.f2036f == null) goto L52;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m45358a(androidx.constraintlayout.p026a.p027a.C0544f r8) {
        /*
            Method dump skipped, instructions count: 1525
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.p026a.p027a.p028a.C0518e.m45358a(androidx.constraintlayout.a.a.f):boolean");
    }

    /* renamed from: b */
    public final void m45355b() {
        m45356a(this.f1946e);
        this.f1948g.clear();
        C0528m.f1967a = 0;
        m45360a(this.f1942a.f2114i, 0, this.f1948g);
        m45360a(this.f1942a.f2115j, 1, this.f1948g);
        this.f1943b = false;
    }
}
