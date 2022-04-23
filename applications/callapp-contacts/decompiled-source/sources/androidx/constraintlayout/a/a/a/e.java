package androidx.constraintlayout.a.a.a;

import androidx.constraintlayout.a.a.a.b;
import androidx.constraintlayout.a.a.e;
import androidx.constraintlayout.a.a.f;
import androidx.constraintlayout.a.a.h;
import androidx.constraintlayout.a.a.j;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/a/a/a/e.class */
public final class e {

    /* renamed from: a  reason: collision with root package name */
    public f f1326a;

    /* renamed from: d  reason: collision with root package name */
    public f f1329d;

    /* renamed from: b  reason: collision with root package name */
    public boolean f1327b = true;

    /* renamed from: c  reason: collision with root package name */
    public boolean f1328c = true;
    public ArrayList<p> e = new ArrayList<>();
    private ArrayList<m> h = new ArrayList<>();
    public b.AbstractC0032b f = null;
    private b.a i = new b.a();
    ArrayList<m> g = new ArrayList<>();

    public e(f fVar) {
        this.f1326a = fVar;
        this.f1329d = fVar;
    }

    private void a(f fVar, int i, int i2, f fVar2, ArrayList<m> arrayList, m mVar) {
        p pVar = fVar.f1333d;
        if (!(pVar.e != null || pVar == this.f1326a.i || pVar == this.f1326a.j)) {
            m mVar2 = mVar;
            if (mVar == null) {
                mVar2 = new m(pVar, i2);
                arrayList.add(mVar2);
            }
            pVar.e = mVar2;
            mVar2.f.add(pVar);
            mVar2.e = pVar;
            for (d dVar : pVar.j.k) {
                if (dVar instanceof f) {
                    a((f) dVar, i, 0, fVar2, arrayList, mVar2);
                }
            }
            for (d dVar2 : pVar.k.k) {
                if (dVar2 instanceof f) {
                    a((f) dVar2, i, 1, fVar2, arrayList, mVar2);
                }
            }
            if (i == 1 && (pVar instanceof n)) {
                for (d dVar3 : ((n) pVar).f1341a.k) {
                    if (dVar3 instanceof f) {
                        a((f) dVar3, i, 2, fVar2, arrayList, mVar2);
                    }
                }
            }
            for (f fVar3 : pVar.j.l) {
                if (fVar3 == fVar2) {
                    mVar2.f1339c = true;
                }
                a(fVar3, i, 0, fVar2, arrayList, mVar2);
            }
            for (f fVar4 : pVar.k.l) {
                if (fVar4 == fVar2) {
                    mVar2.f1339c = true;
                }
                a(fVar4, i, 1, fVar2, arrayList, mVar2);
            }
            if (i == 1 && (pVar instanceof n)) {
                for (f fVar5 : ((n) pVar).f1341a.l) {
                    a(fVar5, i, 2, fVar2, arrayList, mVar2);
                }
            }
        }
    }

    private void a(p pVar, int i, ArrayList<m> arrayList) {
        for (d dVar : pVar.j.k) {
            if (dVar instanceof f) {
                a((f) dVar, i, 0, pVar.k, arrayList, null);
            } else if (dVar instanceof p) {
                a(((p) dVar).j, i, 0, pVar.k, arrayList, null);
            }
        }
        for (d dVar2 : pVar.k.k) {
            if (dVar2 instanceof f) {
                a((f) dVar2, i, 1, pVar.j, arrayList, null);
            } else if (dVar2 instanceof p) {
                a(((p) dVar2).k, i, 1, pVar.j, arrayList, null);
            }
        }
        if (i == 1) {
            for (d dVar3 : ((n) pVar).f1341a.k) {
                if (dVar3 instanceof f) {
                    a((f) dVar3, i, 2, null, arrayList, null);
                }
            }
        }
    }

    private void a(androidx.constraintlayout.a.a.e eVar, e.a aVar, int i, e.a aVar2, int i2) {
        this.i.f1323d = aVar;
        this.i.e = aVar2;
        this.i.f = i;
        this.i.g = i2;
        this.f.a(eVar, this.i);
        eVar.g(this.i.h);
        eVar.h(this.i.i);
        eVar.C = this.i.k;
        eVar.k(this.i.j);
    }

    private void a(ArrayList<p> arrayList) {
        HashSet hashSet;
        arrayList.clear();
        this.f1329d.i.c();
        this.f1329d.j.c();
        arrayList.add(this.f1329d.i);
        arrayList.add(this.f1329d.j);
        Iterator<androidx.constraintlayout.a.a.e> it2 = this.f1329d.be.iterator();
        HashSet hashSet2 = null;
        while (it2.hasNext()) {
            androidx.constraintlayout.a.a.e next = it2.next();
            if (next instanceof h) {
                arrayList.add(new j(next));
            } else {
                if (next.w()) {
                    if (next.g == null) {
                        next.g = new c(next, 0);
                    }
                    HashSet hashSet3 = hashSet2;
                    if (hashSet2 == null) {
                        hashSet3 = new HashSet();
                    }
                    hashSet3.add(next.g);
                    hashSet2 = hashSet3;
                } else {
                    arrayList.add(next.i);
                }
                if (next.x()) {
                    if (next.h == null) {
                        next.h = new c(next, 1);
                    }
                    hashSet = hashSet2;
                    if (hashSet2 == null) {
                        hashSet = new HashSet();
                    }
                    hashSet.add(next.h);
                } else {
                    arrayList.add(next.j);
                    hashSet = hashSet2;
                }
                hashSet2 = hashSet;
                if (next instanceof j) {
                    arrayList.add(new k(next));
                    hashSet2 = hashSet;
                }
            }
        }
        if (hashSet2 != null) {
            arrayList.addAll(hashSet2);
        }
        Iterator<p> it3 = arrayList.iterator();
        while (it3.hasNext()) {
            it3.next().c();
        }
        Iterator<p> it4 = arrayList.iterator();
        while (it4.hasNext()) {
            p next2 = it4.next();
            if (next2.f1353d != this.f1329d) {
                next2.f();
            }
        }
    }

    public final int a(f fVar, int i) {
        int size = this.g.size();
        long j = 0;
        for (int i2 = 0; i2 < size; i2++) {
            j = Math.max(j, this.g.get(i2).a(fVar, i));
        }
        return (int) j;
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x0080, code lost:
        if (r0 == 1) goto L_0x0083;
     */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0157  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0168  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void a() {
        /*
            Method dump skipped, instructions count: 414
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.a.a.a.e.a():void");
    }

    /* JADX WARN: Code restructure failed: missing block: B:51:0x0106, code lost:
        if (r0.J.f == null) goto L_0x0109;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean a(androidx.constraintlayout.a.a.f r8) {
        /*
            Method dump skipped, instructions count: 1525
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.a.a.a.e.a(androidx.constraintlayout.a.a.f):boolean");
    }

    public final void b() {
        a(this.e);
        this.g.clear();
        m.f1337a = 0;
        a(this.f1326a.i, 0, this.g);
        a(this.f1326a.j, 1, this.g);
        this.f1327b = false;
    }
}
