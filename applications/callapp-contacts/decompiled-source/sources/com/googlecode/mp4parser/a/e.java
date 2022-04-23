package com.googlecode.mp4parser.a;

import com.b.a.a.a.c;
import com.b.a.a.a.f;
import com.b.a.a.a.g;
import com.b.a.a.ac;
import com.b.a.a.ae;
import com.b.a.a.af;
import com.b.a.a.ag;
import com.b.a.a.ah;
import com.b.a.a.b;
import com.b.a.a.b.a;
import com.b.a.a.d;
import com.b.a.a.j;
import com.b.a.a.m;
import com.b.a.a.p;
import com.b.a.a.s;
import com.b.a.a.u;
import com.b.a.a.v;
import com.b.a.a.x;
import com.b.a.d;
import com.googlecode.mp4parser.b.b.b.f;
import com.googlecode.mp4parser.c.i;
import com.googlecode.mp4parser.c.j;
import com.googlecode.mp4parser.h;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import okhttp3.internal.http2.Settings;
/* loaded from: classes4-dex2jar.jar:com/googlecode/mp4parser/a/e.class */
public class e extends a {
    static final /* synthetic */ boolean g = true;

    /* renamed from: d  reason: collision with root package name */
    private List<f> f33079d;
    ag e;
    d[] f;
    private v h;
    private long[] i;
    private List<d.a> j;
    private long[] k;
    private List<u.a> l;
    private h m = new h();
    private String n;
    private ac o;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r20v1 */
    /* JADX WARN: Type inference failed for: r20v2, types: [long] */
    /* JADX WARN: Type inference failed for: r20v3 */
    /* JADX WARN: Type inference failed for: r20v4 */
    /* JADX WARN: Type inference failed for: r20v5, types: [long] */
    /* JADX WARN: Type inference failed for: r20v6 */
    /* JADX WARN: Type inference failed for: r20v7 */
    /* JADX WARN: Type inference failed for: r36v0 */
    /* JADX WARN: Type inference failed for: r36v4 */
    public e(String str, ag agVar, com.b.a.d... dVarArr) {
        super(str);
        c cVar;
        m mVar = null;
        this.k = null;
        this.o = null;
        this.e = agVar;
        long a2 = agVar.a().a();
        this.f33079d = new a(agVar, dVarArr);
        x a3 = agVar.d().a().a();
        Iterator<b> it2 = agVar.d().b().iterator();
        while (true) {
            if (!it2.hasNext()) {
                break;
            }
            b next = it2.next();
            if (next instanceof m) {
                mVar = (m) next;
                break;
            }
        }
        this.n = mVar.a();
        ArrayList arrayList = new ArrayList();
        this.j = new ArrayList();
        this.l = new ArrayList();
        af f = a3.f();
        org.mp4parser.aspectj.lang.a a4 = org.mp4parser.aspectj.a.b.b.a(af.f7080d, f, f);
        h.a();
        h.a(a4);
        arrayList.addAll(f.f7081a);
        if (a3.h() != null) {
            List<d.a> list = this.j;
            com.b.a.a.d h = a3.h();
            org.mp4parser.aspectj.lang.a a5 = org.mp4parser.aspectj.a.b.b.a(com.b.a.a.d.f7109c, h, h);
            h.a();
            h.a(a5);
            list.addAll(h.f7111a);
        }
        if (a3.i() != null) {
            List<u.a> list2 = this.l;
            u i = a3.i();
            org.mp4parser.aspectj.lang.a a6 = org.mp4parser.aspectj.a.b.b.a(u.f7145b, i, i);
            h.a();
            h.a(a6);
            list2.addAll(i.f7148a);
        }
        if (a3.g() != null) {
            ae g2 = a3.g();
            org.mp4parser.aspectj.lang.a a7 = org.mp4parser.aspectj.a.b.b.a(ae.f7074b, g2, g2);
            h.a();
            h.a(a7);
            this.k = g2.f7077a;
        }
        String str2 = "subs";
        this.o = (ac) j.a((com.googlecode.mp4parser.b) a3, "subs");
        ArrayList arrayList2 = new ArrayList();
        arrayList2.addAll(((b) agVar.getParent()).getParent().a(com.b.a.a.a.b.class));
        for (com.b.a.d dVar : dVarArr) {
            arrayList2.addAll(dVar.a(com.b.a.a.a.b.class));
        }
        this.h = a3.a();
        List a8 = agVar.getParent().a(com.b.a.a.a.a.class);
        if (a8.size() > 0) {
            Iterator it3 = a8.iterator();
            ArrayList arrayList3 = arrayList2;
            while (it3.hasNext()) {
                Iterator it4 = ((com.b.a.a.a.a) it3.next()).a(com.b.a.a.a.d.class).iterator();
                while (it4.hasNext()) {
                    com.b.a.a.a.d dVar2 = (com.b.a.a.a.d) it4.next();
                    if (dVar2.a() == a2) {
                        if (j.a(((b) agVar.getParent()).getParent(), "/moof/traf/subs").size() > 0) {
                            this.o = new ac();
                        }
                        Iterator it5 = arrayList3.iterator();
                        long j = 1;
                        while (it5.hasNext()) {
                            Iterator it6 = ((com.b.a.a.a.b) it5.next()).a(com.b.a.a.a.e.class).iterator();
                            while (it6.hasNext()) {
                                com.b.a.a.a.e eVar = (com.b.a.a.a.e) it6.next();
                                if (eVar.a().b() == a2) {
                                    this.f33038c = a(a3.a(com.googlecode.mp4parser.b.b.b.e.class), j.a((com.b.a.a.e) eVar, "sgpd"), j.a((com.b.a.a.e) eVar, "sbgp"), this.f33038c, j - 1);
                                    ac acVar = (ac) j.a((com.googlecode.mp4parser.b) eVar, str2);
                                    it3 = it3;
                                    it4 = it4;
                                    a2 = a2;
                                    if (acVar != null) {
                                        long j2 = (j - 0) - 1;
                                        for (ac.a aVar : acVar.a()) {
                                            ac.a aVar2 = new ac.a();
                                            aVar2.f7068b.addAll(aVar.f7068b);
                                            if (j2 != 0) {
                                                aVar2.f7067a = j2 + aVar.f7067a;
                                                j2 = 0;
                                            } else {
                                                aVar2.f7067a = aVar.f7067a;
                                            }
                                            this.o.a().add(aVar2);
                                        }
                                        it3 = it3;
                                        it4 = it4;
                                        a2 = a2;
                                    }
                                    Iterator it7 = eVar.a(g.class).iterator();
                                    Iterator it8 = it6;
                                    Iterator it9 = it5;
                                    ArrayList arrayList4 = arrayList3;
                                    while (it7.hasNext()) {
                                        g gVar = (g) it7.next();
                                        f a9 = ((com.b.a.a.a.e) gVar.getParent()).a();
                                        boolean z = true;
                                        for (g.a aVar3 : gVar.a()) {
                                            if (!gVar.e()) {
                                                org.mp4parser.aspectj.lang.a a10 = org.mp4parser.aspectj.a.b.b.a(f.f7045b, a9, a9);
                                                h.a();
                                                h.a(a10);
                                                if ((a9.i() & 8) != 0) {
                                                    arrayList.add(new af.a(1L, a9.d()));
                                                } else {
                                                    org.mp4parser.aspectj.lang.a a11 = org.mp4parser.aspectj.a.b.b.a(com.b.a.a.a.d.f7041d, dVar2, dVar2);
                                                    h.a();
                                                    h.a(a11);
                                                    arrayList.add(new af.a(1L, dVar2.f7042a));
                                                }
                                            } else if (arrayList.size() == 0 || ((af.a) arrayList.get(arrayList.size() - 1)).f7083b != aVar3.f7053a) {
                                                arrayList.add(new af.a(1L, aVar3.f7053a));
                                            } else {
                                                ((af.a) arrayList.get(arrayList.size() - 1)).f7082a++;
                                            }
                                            if (gVar.g()) {
                                                if (this.j.size() != 0) {
                                                    List<d.a> list3 = this.j;
                                                    if (list3.get(list3.size() - 1).f7113b == aVar3.f7056d) {
                                                        List<d.a> list4 = this.j;
                                                        list4.get(list4.size() - 1).f7112a++;
                                                    }
                                                }
                                                this.j.add(new d.a(1, com.googlecode.mp4parser.c.b.a(aVar3.f7056d)));
                                            }
                                            if (gVar.f()) {
                                                cVar = aVar3.f7055c;
                                            } else {
                                                if (z) {
                                                    org.mp4parser.aspectj.lang.a a12 = org.mp4parser.aspectj.a.b.b.a(g.f7049c, gVar, gVar);
                                                    h.a();
                                                    h.a(a12);
                                                    if ((gVar.i() & 4) == 4) {
                                                        org.mp4parser.aspectj.lang.a a13 = org.mp4parser.aspectj.a.b.b.a(g.e, gVar, gVar);
                                                        h.a();
                                                        h.a(a13);
                                                        cVar = gVar.f7052b;
                                                    }
                                                }
                                                org.mp4parser.aspectj.lang.a a14 = org.mp4parser.aspectj.a.b.b.a(f.f7047d, a9, a9);
                                                h.a();
                                                h.a(a14);
                                                if ((a9.i() & 32) != 0) {
                                                    org.mp4parser.aspectj.lang.a a15 = org.mp4parser.aspectj.a.b.b.a(f.e, a9, a9);
                                                    h.a();
                                                    h.a(a15);
                                                    cVar = a9.f7048a;
                                                } else {
                                                    org.mp4parser.aspectj.lang.a a16 = org.mp4parser.aspectj.a.b.b.a(com.b.a.a.a.d.f, dVar2, dVar2);
                                                    h.a();
                                                    h.a(a16);
                                                    cVar = dVar2.f7044c;
                                                }
                                            }
                                            if (cVar != null && !cVar.f7037a) {
                                                this.k = i.a(this.k, j);
                                            }
                                            z = false;
                                            j++;
                                        }
                                        it7 = it7;
                                        arrayList4 = arrayList4;
                                        it9 = it9;
                                        it8 = it8;
                                    }
                                    str2 = str2;
                                    arrayList3 = arrayList4;
                                    it5 = it9;
                                    it6 = it8;
                                }
                            }
                        }
                    }
                }
            }
        } else {
            this.f33038c = a(a3.a(com.googlecode.mp4parser.b.b.b.e.class), null, a3.a(com.googlecode.mp4parser.b.b.b.f.class), this.f33038c, 0L);
        }
        this.i = af.a(arrayList);
        p c2 = agVar.d().c();
        ah a17 = agVar.a();
        this.m.i = a17.a();
        this.m.f33083d = c2.a();
        this.m.f33080a = c2.d();
        this.m.f33082c = c2.b();
        this.m.f33081b = c2.c();
        this.m.g = a17.e();
        this.m.f = a17.d();
        this.m.k = a17.b();
        h hVar = this.m;
        org.mp4parser.aspectj.lang.a a18 = org.mp4parser.aspectj.a.b.b.a(ah.j, a17, a17);
        h.a();
        h.a(a18);
        hVar.e = a17.g;
        this.m.h = a17.c();
        com.b.a.a.j jVar = (com.b.a.a.j) j.a((com.googlecode.mp4parser.b) agVar, "edts/elst");
        s sVar = (s) j.a((com.googlecode.mp4parser.b) agVar, "../mvhd");
        if (jVar != null) {
            org.mp4parser.aspectj.lang.a a19 = org.mp4parser.aspectj.a.b.b.a(com.b.a.a.j.f7117b, jVar, jVar);
            h.a();
            h.a(a19);
            for (j.a aVar4 : jVar.f7120a) {
                this.f33037b.add(new c(aVar4.f7123c, c2.c(), aVar4.f7124d, aVar4.f7122b / sVar.a()));
            }
        }
    }

    private static Map<com.googlecode.mp4parser.b.b.b.b, long[]> a(List<com.googlecode.mp4parser.b.b.b.e> list, List<com.googlecode.mp4parser.b.b.b.e> list2, List<com.googlecode.mp4parser.b.b.b.f> list3, Map<com.googlecode.mp4parser.b.b.b.b, long[]> map, long j) {
        for (com.googlecode.mp4parser.b.b.b.f fVar : list3) {
            int i = 0;
            for (f.a aVar : fVar.b()) {
                if (aVar.f33155b > 0) {
                    r9 = null;
                    com.googlecode.mp4parser.b.b.b.b bVar = null;
                    if (aVar.f33155b > 65535) {
                        for (com.googlecode.mp4parser.b.b.b.e eVar : list2) {
                            if (eVar.a().equals(fVar.a())) {
                                bVar = eVar.b().get((aVar.f33155b - 1) & Settings.DEFAULT_INITIAL_WINDOW_SIZE);
                            }
                        }
                    } else {
                        for (com.googlecode.mp4parser.b.b.b.e eVar2 : list) {
                            if (eVar2.a().equals(fVar.a())) {
                                bVar = eVar2.b().get(aVar.f33155b - 1);
                            }
                        }
                    }
                    if (g || bVar != null) {
                        long[] jArr = map.get(bVar);
                        long[] jArr2 = jArr;
                        if (jArr == null) {
                            jArr2 = new long[0];
                        }
                        long[] jArr3 = new long[com.googlecode.mp4parser.c.b.a(aVar.f33154a) + jArr2.length];
                        System.arraycopy(jArr2, 0, jArr3, 0, jArr2.length);
                        int i2 = 0;
                        while (true) {
                            long j2 = i2;
                            if (j2 >= aVar.f33154a) {
                                break;
                            }
                            jArr3[jArr2.length + i2] = j + i + j2;
                            i2++;
                        }
                        map.put(bVar, jArr3);
                    } else {
                        throw new AssertionError();
                    }
                }
                i = (int) (i + aVar.f33154a);
            }
        }
        return map;
    }

    @Override // com.googlecode.mp4parser.a.a, com.googlecode.mp4parser.a.g
    public final List<d.a> a() {
        return this.j;
    }

    @Override // com.googlecode.mp4parser.a.a, com.googlecode.mp4parser.a.g
    public final long[] b() {
        long[] jArr = this.k;
        if (jArr == null || jArr.length == this.f33079d.size()) {
            return null;
        }
        return this.k;
    }

    @Override // com.googlecode.mp4parser.a.a, com.googlecode.mp4parser.a.g
    public final List<u.a> c() {
        return this.l;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        com.b.a.a.e parent = this.e.getParent();
        if (parent instanceof com.googlecode.mp4parser.d) {
            ((com.googlecode.mp4parser.d) parent).close();
        }
        com.b.a.d[] dVarArr = this.f;
        if (dVarArr != null) {
            for (com.b.a.d dVar : dVarArr) {
                dVar.close();
            }
        }
    }

    @Override // com.googlecode.mp4parser.a.a, com.googlecode.mp4parser.a.g
    public final ac d() {
        return this.o;
    }

    @Override // com.googlecode.mp4parser.a.g
    public final List<f> j() {
        return this.f33079d;
    }

    @Override // com.googlecode.mp4parser.a.g
    public final long[] k() {
        long[] jArr;
        synchronized (this) {
            jArr = this.i;
        }
        return jArr;
    }

    @Override // com.googlecode.mp4parser.a.g
    public final v l() {
        return this.h;
    }

    @Override // com.googlecode.mp4parser.a.g
    public final h m() {
        return this.m;
    }

    @Override // com.googlecode.mp4parser.a.g
    public final String n() {
        return this.n;
    }
}
