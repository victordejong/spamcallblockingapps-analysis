package p269w;

import androidx.constraintlayout.widget.ConstraintLayout;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import p258v.C4564c;
import p258v.C4566d;
import p258v.C4567e;
import p258v.C4568f;
import p258v.C4570h;
import p269w.C4694b;
/* renamed from: w.e */
/* loaded from: classes-dex2jar.jar:w/e.class */
public class C4699e {

    /* renamed from: a */
    public C4567e f14518a;

    /* renamed from: d */
    public C4567e f14521d;

    /* renamed from: b */
    public boolean f14519b = true;

    /* renamed from: c */
    public boolean f14520c = true;

    /* renamed from: e */
    public ArrayList<AbstractC4711p> f14522e = new ArrayList<>();

    /* renamed from: f */
    public C4694b.AbstractC4696b f14523f = null;

    /* renamed from: g */
    public C4694b.C4695a f14524g = new C4694b.C4695a();

    /* renamed from: h */
    public ArrayList<C4707m> f14525h = new ArrayList<>();

    public C4699e(C4567e c4567e) {
        new ArrayList();
        this.f14518a = c4567e;
        this.f14521d = c4567e;
    }

    /* renamed from: a */
    public final void m591a(C4700f c4700f, int i, int i2, C4700f c4700f2, ArrayList<C4707m> arrayList, C4707m c4707m) {
        AbstractC4711p abstractC4711p = c4700f.f14529d;
        if (abstractC4711p.f14556c == null) {
            C4567e c4567e = this.f14518a;
            if (abstractC4711p == c4567e.f14080d || abstractC4711p == c4567e.f14082e) {
                return;
            }
            C4707m c4707m2 = c4707m;
            if (c4707m == null) {
                c4707m2 = new C4707m(abstractC4711p, i2);
                arrayList.add(c4707m2);
            }
            abstractC4711p.f14556c = c4707m2;
            c4707m2.f14545b.add(abstractC4711p);
            for (AbstractC4698d abstractC4698d : abstractC4711p.f14561h.f14536k) {
                if (abstractC4698d instanceof C4700f) {
                    m591a((C4700f) abstractC4698d, i, 0, c4700f2, arrayList, c4707m2);
                }
            }
            for (AbstractC4698d abstractC4698d2 : abstractC4711p.f14562i.f14536k) {
                if (abstractC4698d2 instanceof C4700f) {
                    m591a((C4700f) abstractC4698d2, i, 1, c4700f2, arrayList, c4707m2);
                }
            }
            if (i == 1 && (abstractC4711p instanceof C4708n)) {
                for (AbstractC4698d abstractC4698d3 : ((C4708n) abstractC4711p).f14546k.f14536k) {
                    if (abstractC4698d3 instanceof C4700f) {
                        m591a((C4700f) abstractC4698d3, i, 2, c4700f2, arrayList, c4707m2);
                    }
                }
            }
            for (C4700f c4700f3 : abstractC4711p.f14561h.f14537l) {
                m591a(c4700f3, i, 0, c4700f2, arrayList, c4707m2);
            }
            for (C4700f c4700f4 : abstractC4711p.f14562i.f14537l) {
                m591a(c4700f4, i, 1, c4700f2, arrayList, c4707m2);
            }
            if (i != 1 || !(abstractC4711p instanceof C4708n)) {
                return;
            }
            for (C4700f c4700f5 : ((C4708n) abstractC4711p).f14546k.f14537l) {
                m591a(c4700f5, i, 2, c4700f2, arrayList, c4707m2);
            }
        }
    }

    /* renamed from: b */
    public final boolean m590b(C4567e c4567e) {
        int i;
        int i2;
        int i3;
        int i4;
        Iterator<C4566d> it2 = c4567e.f14146r0.iterator();
        while (it2.hasNext()) {
            C4566d next = it2.next();
            int[] iArr = next.f14068U;
            int i5 = iArr[0];
            int i6 = iArr[1];
            if (next.f14091i0 == 8) {
                next.f14074a = true;
            } else {
                float f = next.f14113w;
                if (f < 1.0f && i5 == 3) {
                    next.f14108r = 2;
                }
                float f2 = next.f14116z;
                if (f2 < 1.0f && i6 == 3) {
                    next.f14109s = 2;
                }
                if (next.f14072Y > 0.0f) {
                    if (i5 == 3 && (i6 == 2 || i6 == 1)) {
                        next.f14108r = 3;
                    } else if (i6 == 3 && (i5 == 2 || i5 == 1)) {
                        next.f14109s = 3;
                    } else if (i5 == 3 && i6 == 3) {
                        if (next.f14108r == 0) {
                            next.f14108r = 3;
                        }
                        if (next.f14109s == 0) {
                            next.f14109s = 3;
                        }
                    }
                }
                if (i5 == 3 && next.f14108r == 1 && (next.f14057J.f14035f == null || next.f14059L.f14035f == null)) {
                    i5 = 2;
                }
                if (i6 == 3 && next.f14109s == 1 && (next.f14058K.f14035f == null || next.f14060M.f14035f == null)) {
                    i6 = 2;
                }
                C4706l c4706l = next.f14080d;
                c4706l.f14557d = i5;
                int i7 = next.f14108r;
                c4706l.f14554a = i7;
                C4708n c4708n = next.f14082e;
                c4708n.f14557d = i6;
                int i8 = next.f14109s;
                c4708n.f14554a = i8;
                if ((i5 == 4 || i5 == 1 || i5 == 2) && (i6 == 4 || i6 == 1 || i6 == 2)) {
                    int m795u = next.m795u();
                    if (i5 == 4) {
                        i2 = (c4567e.m795u() - next.f14057J.f14036g) - next.f14059L.f14036g;
                        i = 1;
                    } else {
                        int i9 = i5;
                        i2 = m795u;
                        i = i9;
                    }
                    int m803l = next.m803l();
                    if (i6 == 4) {
                        i4 = (c4567e.m803l() - next.f14058K.f14036g) - next.f14060M.f14036g;
                        i3 = 1;
                    } else {
                        i3 = i6;
                        i4 = m803l;
                    }
                    m586f(next, i, i2, i3, i4);
                    next.f14080d.f14558e.mo583c(next.m795u());
                    next.f14082e.f14558e.mo583c(next.m803l());
                    next.f14074a = true;
                } else {
                    if (i5 == 3 && (i6 == 2 || i6 == 1)) {
                        if (i7 == 3) {
                            if (i6 == 2) {
                                m586f(next, 2, 0, 2, 0);
                            }
                            int m803l2 = next.m803l();
                            m586f(next, 1, (int) ((m803l2 * next.f14072Y) + 0.5f), 1, m803l2);
                            next.f14080d.f14558e.mo583c(next.m795u());
                            next.f14082e.f14558e.mo583c(next.m803l());
                            next.f14074a = true;
                        } else if (i7 == 1) {
                            m586f(next, 2, 0, i6, 0);
                            next.f14080d.f14558e.f14538m = next.m795u();
                        } else if (i7 == 2) {
                            int[] iArr2 = c4567e.f14068U;
                            if (iArr2[0] == 1 || iArr2[0] == 4) {
                                m586f(next, 1, (int) ((f * c4567e.m795u()) + 0.5f), i6, next.m803l());
                                next.f14080d.f14558e.mo583c(next.m795u());
                                next.f14082e.f14558e.mo583c(next.m803l());
                                next.f14074a = true;
                            }
                        } else {
                            C4564c[] c4564cArr = next.f14065R;
                            if (c4564cArr[0].f14035f == null || c4564cArr[1].f14035f == null) {
                                m586f(next, 2, 0, i6, 0);
                                next.f14080d.f14558e.mo583c(next.m795u());
                                next.f14082e.f14558e.mo583c(next.m803l());
                                next.f14074a = true;
                            }
                        }
                    }
                    if (i6 == 3 && (i5 == 2 || i5 == 1)) {
                        if (i8 == 3) {
                            if (i5 == 2) {
                                m586f(next, 2, 0, 2, 0);
                            }
                            int m795u2 = next.m795u();
                            float f3 = next.f14072Y;
                            float f4 = f3;
                            if (next.f14073Z == -1) {
                                f4 = 1.0f / f3;
                            }
                            m586f(next, 1, m795u2, 1, (int) ((m795u2 * f4) + 0.5f));
                            next.f14080d.f14558e.mo583c(next.m795u());
                            next.f14082e.f14558e.mo583c(next.m803l());
                            next.f14074a = true;
                        } else if (i8 == 1) {
                            m586f(next, i5, 0, 2, 0);
                            next.f14082e.f14558e.f14538m = next.m803l();
                        } else if (i8 == 2) {
                            int[] iArr3 = c4567e.f14068U;
                            if (iArr3[1] == 1 || iArr3[1] == 4) {
                                m586f(next, i5, next.m795u(), 1, (int) ((f2 * c4567e.m803l()) + 0.5f));
                                next.f14080d.f14558e.mo583c(next.m795u());
                                next.f14082e.f14558e.mo583c(next.m803l());
                                next.f14074a = true;
                            }
                        } else {
                            C4564c[] c4564cArr2 = next.f14065R;
                            if (c4564cArr2[2].f14035f == null || c4564cArr2[3].f14035f == null) {
                                m586f(next, 2, 0, i6, 0);
                                next.f14080d.f14558e.mo583c(next.m795u());
                                next.f14082e.f14558e.mo583c(next.m803l());
                                next.f14074a = true;
                            }
                        }
                    }
                    if (i5 == 3 && i6 == 3) {
                        if (i7 == 1 || i8 == 1) {
                            m586f(next, 2, 0, 2, 0);
                            next.f14080d.f14558e.f14538m = next.m795u();
                            next.f14082e.f14558e.f14538m = next.m803l();
                        } else if (i8 == 2 && i7 == 2) {
                            int[] iArr4 = c4567e.f14068U;
                            if (iArr4[0] == 1 && iArr4[1] == 1) {
                                m586f(next, 1, (int) ((f * c4567e.m795u()) + 0.5f), 1, (int) ((f2 * c4567e.m803l()) + 0.5f));
                                next.f14080d.f14558e.mo583c(next.m795u());
                                next.f14082e.f14558e.mo583c(next.m803l());
                                next.f14074a = true;
                            }
                        }
                    }
                }
            }
        }
        return false;
    }

    /* renamed from: c */
    public void m589c() {
        HashSet hashSet;
        ArrayList<AbstractC4711p> arrayList = this.f14522e;
        arrayList.clear();
        this.f14521d.f14080d.mo556f();
        this.f14521d.f14082e.mo556f();
        arrayList.add(this.f14521d.f14080d);
        arrayList.add(this.f14521d.f14082e);
        Iterator<C4566d> it2 = this.f14521d.f14146r0.iterator();
        HashSet hashSet2 = null;
        while (it2.hasNext()) {
            C4566d next = it2.next();
            if (next instanceof C4568f) {
                arrayList.add(new C4704j(next));
            } else {
                if (next.m825A()) {
                    if (next.f14076b == null) {
                        next.f14076b = new C4697c(next, 0);
                    }
                    HashSet hashSet3 = hashSet2;
                    if (hashSet2 == null) {
                        hashSet3 = new HashSet();
                    }
                    hashSet3.add(next.f14076b);
                    hashSet2 = hashSet3;
                } else {
                    arrayList.add(next.f14080d);
                }
                if (next.m824B()) {
                    if (next.f14078c == null) {
                        next.f14078c = new C4697c(next, 1);
                    }
                    hashSet = hashSet2;
                    if (hashSet2 == null) {
                        hashSet = new HashSet();
                    }
                    hashSet.add(next.f14078c);
                } else {
                    arrayList.add(next.f14082e);
                    hashSet = hashSet2;
                }
                hashSet2 = hashSet;
                if (next instanceof C4570h) {
                    arrayList.add(new C4705k(next));
                    hashSet2 = hashSet;
                }
            }
        }
        if (hashSet2 != null) {
            arrayList.addAll(hashSet2);
        }
        Iterator<AbstractC4711p> it3 = arrayList.iterator();
        while (it3.hasNext()) {
            it3.next().mo556f();
        }
        Iterator<AbstractC4711p> it4 = arrayList.iterator();
        while (it4.hasNext()) {
            AbstractC4711p next2 = it4.next();
            if (next2.f14555b != this.f14521d) {
                next2.mo558d();
            }
        }
        this.f14525h.clear();
        C4707m.f14543c = 0;
        m587e(this.f14518a.f14080d, 0, this.f14525h);
        m587e(this.f14518a.f14082e, 1, this.f14525h);
        this.f14519b = false;
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
    public final int m588d(p258v.C4567e r8, int r9) {
        /*
            Method dump skipped, instructions count: 655
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p269w.C4699e.m588d(v.e, int):int");
    }

    /* renamed from: e */
    public final void m587e(AbstractC4711p abstractC4711p, int i, ArrayList<C4707m> arrayList) {
        for (AbstractC4698d abstractC4698d : abstractC4711p.f14561h.f14536k) {
            if (abstractC4698d instanceof C4700f) {
                m591a((C4700f) abstractC4698d, i, 0, abstractC4711p.f14562i, arrayList, null);
            } else if (abstractC4698d instanceof AbstractC4711p) {
                m591a(((AbstractC4711p) abstractC4698d).f14561h, i, 0, abstractC4711p.f14562i, arrayList, null);
            }
        }
        for (AbstractC4698d abstractC4698d2 : abstractC4711p.f14562i.f14536k) {
            if (abstractC4698d2 instanceof C4700f) {
                m591a((C4700f) abstractC4698d2, i, 1, abstractC4711p.f14561h, arrayList, null);
            } else if (abstractC4698d2 instanceof AbstractC4711p) {
                m591a(((AbstractC4711p) abstractC4698d2).f14562i, i, 1, abstractC4711p.f14561h, arrayList, null);
            }
        }
        if (i == 1) {
            for (AbstractC4698d abstractC4698d3 : ((C4708n) abstractC4711p).f14546k.f14536k) {
                if (abstractC4698d3 instanceof C4700f) {
                    m591a((C4700f) abstractC4698d3, i, 2, null, arrayList, null);
                }
            }
        }
    }

    /* renamed from: f */
    public final void m586f(C4566d c4566d, int i, int i2, int i3, int i4) {
        C4694b.C4695a c4695a = this.f14524g;
        c4695a.f14506a = i;
        c4695a.f14507b = i3;
        c4695a.f14508c = i2;
        c4695a.f14509d = i4;
        ((ConstraintLayout.C0307b) this.f14523f).m8367b(c4566d, c4695a);
        c4566d.m811S(this.f14524g.f14510e);
        c4566d.m816N(this.f14524g.f14511f);
        C4694b.C4695a c4695a2 = this.f14524g;
        c4566d.f14052E = c4695a2.f14513h;
        c4566d.m819K(c4695a2.f14512g);
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x007b, code lost:
        if (r0 == 1) goto L21;
     */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0128  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0139  */
    /* renamed from: g */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m585g() {
        /*
            Method dump skipped, instructions count: 363
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p269w.C4699e.m585g():void");
    }
}
