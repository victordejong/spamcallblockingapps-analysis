package p1727n3.p1795i.p1799b.p1800h.p1801m;

import androidx.constraintlayout.widget.ConstraintLayout;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import n3.i.b.h.e;
import p1727n3.p1795i.p1799b.p1800h.C26363d;
import p1727n3.p1795i.p1799b.p1800h.C26365g;
import p1727n3.p1795i.p1799b.p1800h.C26367i;
import p1727n3.p1795i.p1799b.p1800h.p1801m.C26370b;
/* renamed from: n3.i.b.h.m.e */
/* loaded from: classes-dex2jar.jar:n3/i/b/h/m/e.class */
public class C26374e {

    /* renamed from: a */
    public e f73791a;

    /* renamed from: d */
    public e f73794d;

    /* renamed from: b */
    public boolean f73792b = true;

    /* renamed from: c */
    public boolean f73793c = true;

    /* renamed from: e */
    public ArrayList<AbstractC26381o> f73795e = new ArrayList<>();

    /* renamed from: f */
    public C26370b.AbstractC26372b f73796f = null;

    /* renamed from: g */
    public C26370b.C26371a f73797g = new C26370b.C26371a();

    /* renamed from: h */
    public ArrayList<C26378l> f73798h = new ArrayList<>();

    public C26374e(e eVar) {
        new ArrayList();
        this.f73791a = eVar;
        this.f73794d = eVar;
    }

    /* renamed from: a */
    public final void m2031a(C26375f c26375f, int i, int i2, C26375f c26375f2, ArrayList<C26378l> arrayList, C26378l c26378l) {
        m mVar = c26375f.f73802d;
        if (mVar.f73832c == null) {
            e eVar = this.f73791a;
            if (mVar == eVar.f73699d || mVar == eVar.f73701e) {
                return;
            }
            C26378l c26378l2 = c26378l;
            if (c26378l == null) {
                c26378l2 = new C26378l(mVar, i2);
                arrayList.add(c26378l2);
            }
            mVar.f73832c = c26378l2;
            c26378l2.f73823b.add(mVar);
            for (AbstractC26373d abstractC26373d : mVar.f73837h.f73809k) {
                if (abstractC26373d instanceof C26375f) {
                    m2031a((C26375f) abstractC26373d, i, 0, c26375f2, arrayList, c26378l2);
                }
            }
            for (AbstractC26373d abstractC26373d2 : mVar.f73838i.f73809k) {
                if (abstractC26373d2 instanceof C26375f) {
                    m2031a((C26375f) abstractC26373d2, i, 1, c26375f2, arrayList, c26378l2);
                }
            }
            if (i == 1 && (mVar instanceof m)) {
                for (AbstractC26373d abstractC26373d3 : mVar.k.f73809k) {
                    if (abstractC26373d3 instanceof C26375f) {
                        m2031a((C26375f) abstractC26373d3, i, 2, c26375f2, arrayList, c26378l2);
                    }
                }
            }
            for (C26375f c26375f3 : mVar.f73837h.f73810l) {
                m2031a(c26375f3, i, 0, c26375f2, arrayList, c26378l2);
            }
            for (C26375f c26375f4 : mVar.f73838i.f73810l) {
                m2031a(c26375f4, i, 1, c26375f2, arrayList, c26378l2);
            }
            if (i != 1 || !(mVar instanceof m)) {
                return;
            }
            for (C26375f c26375f5 : mVar.k.f73810l) {
                m2031a(c26375f5, i, 2, c26375f2, arrayList, c26378l2);
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:51:0x011e, code lost:
        if (r0.f73674H.f73646f == null) goto L52;
     */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m2030b(n3.i.b.h.e r9) {
        /*
            Method dump skipped, instructions count: 1468
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p1727n3.p1795i.p1799b.p1800h.p1801m.C26374e.m2030b(n3.i.b.h.e):boolean");
    }

    /* renamed from: c */
    public void m2029c() {
        HashSet hashSet;
        ArrayList<AbstractC26381o> arrayList = this.f73795e;
        arrayList.clear();
        this.f73794d.f73699d.f();
        this.f73794d.f73701e.f();
        arrayList.add(this.f73794d.f73699d);
        arrayList.add(this.f73794d.f73701e);
        Iterator<C26363d> it = this.f73794d.f73777H0.iterator();
        HashSet hashSet2 = null;
        while (it.hasNext()) {
            C26363d next = it.next();
            if (next instanceof C26365g) {
                arrayList.add(new i(next));
            } else {
                if (next.m2092B()) {
                    if (next.f73695b == null) {
                        next.f73695b = new c(next, 0);
                    }
                    HashSet hashSet3 = hashSet2;
                    if (hashSet2 == null) {
                        hashSet3 = new HashSet();
                    }
                    hashSet3.add(next.f73695b);
                    hashSet2 = hashSet3;
                } else {
                    arrayList.add(next.f73699d);
                }
                if (next.m2091C()) {
                    if (next.f73697c == null) {
                        next.f73697c = new c(next, 1);
                    }
                    hashSet = hashSet2;
                    if (hashSet2 == null) {
                        hashSet = new HashSet();
                    }
                    hashSet.add(next.f73697c);
                } else {
                    arrayList.add(next.f73701e);
                    hashSet = hashSet2;
                }
                hashSet2 = hashSet;
                if (next instanceof C26367i) {
                    arrayList.add(new j(next));
                    hashSet2 = hashSet;
                }
            }
        }
        if (hashSet2 != null) {
            arrayList.addAll(hashSet2);
        }
        Iterator<AbstractC26381o> it2 = arrayList.iterator();
        while (it2.hasNext()) {
            it2.next().m2004f();
        }
        Iterator<AbstractC26381o> it3 = arrayList.iterator();
        while (it3.hasNext()) {
            AbstractC26381o next2 = it3.next();
            if (next2.f73831b != this.f73794d) {
                next2.m2006d();
            }
        }
        this.f73798h.clear();
        C26378l.f73821c = 0;
        m2027e(this.f73791a.f73699d, 0, this.f73798h);
        m2027e(this.f73791a.f73701e, 1, this.f73798h);
        this.f73792b = false;
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0064  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x006e  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0080  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x008a  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00cc  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x01e8  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0216  */
    /* JADX WARN: Type inference failed for: r0v121, types: [long] */
    /* JADX WARN: Type inference failed for: r0v130, types: [long] */
    /* JADX WARN: Type inference failed for: r0v138, types: [long] */
    /* JADX WARN: Type inference failed for: r0v140, types: [long] */
    /* JADX WARN: Type inference failed for: r0v19, types: [long] */
    /* JADX WARN: Type inference failed for: r0v50, types: [long] */
    /* JADX WARN: Type inference failed for: r0v64, types: [long] */
    /* JADX WARN: Type inference failed for: r0v70, types: [long] */
    /* JADX WARN: Type inference failed for: r0v77, types: [long] */
    /* JADX WARN: Type inference failed for: r0v94, types: [long] */
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int m2028d(n3.i.b.h.e r8, int r9) {
        /*
            Method dump skipped, instructions count: 655
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p1727n3.p1795i.p1799b.p1800h.p1801m.C26374e.m2028d(n3.i.b.h.e, int):int");
    }

    /* renamed from: e */
    public final void m2027e(AbstractC26381o abstractC26381o, int i, ArrayList<C26378l> arrayList) {
        for (AbstractC26373d abstractC26373d : abstractC26381o.f73837h.f73809k) {
            if (abstractC26373d instanceof C26375f) {
                m2031a((C26375f) abstractC26373d, i, 0, abstractC26381o.f73838i, arrayList, null);
            } else if (abstractC26373d instanceof AbstractC26381o) {
                m2031a(((AbstractC26381o) abstractC26373d).f73837h, i, 0, abstractC26381o.f73838i, arrayList, null);
            }
        }
        for (AbstractC26373d abstractC26373d2 : abstractC26381o.f73838i.f73809k) {
            if (abstractC26373d2 instanceof C26375f) {
                m2031a((C26375f) abstractC26373d2, i, 1, abstractC26381o.f73837h, arrayList, null);
            } else if (abstractC26373d2 instanceof AbstractC26381o) {
                m2031a(((AbstractC26381o) abstractC26373d2).f73838i, i, 1, abstractC26381o.f73837h, arrayList, null);
            }
        }
        if (i == 1) {
            for (AbstractC26373d abstractC26373d3 : ((m) abstractC26381o).k.f73809k) {
                if (abstractC26373d3 instanceof C26375f) {
                    m2031a((C26375f) abstractC26373d3, i, 2, null, arrayList, null);
                }
            }
        }
    }

    /* renamed from: f */
    public final void m2026f(C26363d c26363d, C26363d.EnumC26364a enumC26364a, int i, C26363d.EnumC26364a enumC26364a2, int i2) {
        C26370b.C26371a c26371a = this.f73797g;
        c26371a.f73781a = enumC26364a;
        c26371a.f73782b = enumC26364a2;
        c26371a.f73783c = i;
        c26371a.f73784d = i2;
        ((ConstraintLayout.C0113b) this.f73796f).m43023b(c26363d, c26371a);
        c26363d.m2079S(this.f73797g.f73785e);
        c26363d.m2084N(this.f73797g.f73786f);
        C26370b.C26371a c26371a2 = this.f73797g;
        c26363d.f73660A = c26371a2.f73788h;
        c26363d.m2087K(c26371a2.f73787g);
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x0092, code lost:
        if (r0 == 1) goto L21;
     */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0151  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0164  */
    /* renamed from: g */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m2025g() {
        /*
            Method dump skipped, instructions count: 415
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p1727n3.p1795i.p1799b.p1800h.p1801m.C26374e.m2025g():void");
    }
}
