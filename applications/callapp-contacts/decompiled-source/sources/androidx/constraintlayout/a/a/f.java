package androidx.constraintlayout.a.a;

import androidx.constraintlayout.a.a.a.b;
import androidx.constraintlayout.a.a.a.c;
import androidx.constraintlayout.a.a.a.p;
import androidx.constraintlayout.a.a.e;
import androidx.constraintlayout.a.d;
import androidx.constraintlayout.a.e;
import androidx.constraintlayout.a.h;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.lang.ref.WeakReference;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/a/a/f.class */
public final class f extends m {
    static int bd;

    /* renamed from: a  reason: collision with root package name */
    b f1374a;
    public e aI;
    protected d aJ;
    int aK;
    int aL;
    int aM;
    int aN;
    public int aO;
    public int aP;
    c[] aQ;
    c[] aR;
    public boolean aS;
    public boolean aT;
    public boolean aU;
    public int aV;
    public int aW;
    public int aX;
    public boolean aY;
    public boolean aZ;

    /* renamed from: b  reason: collision with root package name */
    public androidx.constraintlayout.a.a.a.e f1375b;
    public boolean ba;
    int bb;
    public b.a bc;
    private WeakReference<d> bf;
    private WeakReference<d> bg;
    private WeakReference<d> bh;
    private WeakReference<d> bi;

    /* renamed from: c  reason: collision with root package name */
    protected b.AbstractC0032b f1376c;

    /* renamed from: d  reason: collision with root package name */
    public boolean f1377d;

    public f() {
        this.f1374a = new b(this);
        this.f1375b = new androidx.constraintlayout.a.a.a.e(this);
        this.f1376c = null;
        this.f1377d = false;
        this.aJ = new d();
        this.aO = 0;
        this.aP = 0;
        this.aQ = new c[4];
        this.aR = new c[4];
        this.aS = false;
        this.aT = false;
        this.aU = false;
        this.aV = 0;
        this.aW = 0;
        this.aX = 257;
        this.aY = false;
        this.aZ = false;
        this.ba = false;
        this.bb = 0;
        this.bf = null;
        this.bg = null;
        this.bh = null;
        this.bi = null;
        this.bc = new b.a();
    }

    public f(int i, int i2) {
        super(i, i2);
        this.f1374a = new b(this);
        this.f1375b = new androidx.constraintlayout.a.a.a.e(this);
        this.f1376c = null;
        this.f1377d = false;
        this.aJ = new d();
        this.aO = 0;
        this.aP = 0;
        this.aQ = new c[4];
        this.aR = new c[4];
        this.aS = false;
        this.aT = false;
        this.aU = false;
        this.aV = 0;
        this.aW = 0;
        this.aX = 257;
        this.aY = false;
        this.aZ = false;
        this.ba = false;
        this.bb = 0;
        this.bf = null;
        this.bg = null;
        this.bh = null;
        this.bi = null;
        this.bc = new b.a();
    }

    public f(int i, int i2, int i3, int i4) {
        super(i, i2, i3, i4);
        this.f1374a = new b(this);
        this.f1375b = new androidx.constraintlayout.a.a.a.e(this);
        this.f1376c = null;
        this.f1377d = false;
        this.aJ = new d();
        this.aO = 0;
        this.aP = 0;
        this.aQ = new c[4];
        this.aR = new c[4];
        this.aS = false;
        this.aT = false;
        this.aU = false;
        this.aV = 0;
        this.aW = 0;
        this.aX = 257;
        this.aY = false;
        this.aZ = false;
        this.ba = false;
        this.bb = 0;
        this.bf = null;
        this.bg = null;
        this.bh = null;
        this.bi = null;
        this.bc = new b.a();
    }

    public f(String str, int i, int i2) {
        super(i, i2);
        this.f1374a = new b(this);
        this.f1375b = new androidx.constraintlayout.a.a.a.e(this);
        this.f1376c = null;
        this.f1377d = false;
        this.aJ = new d();
        this.aO = 0;
        this.aP = 0;
        this.aQ = new c[4];
        this.aR = new c[4];
        this.aS = false;
        this.aT = false;
        this.aU = false;
        this.aV = 0;
        this.aW = 0;
        this.aX = 257;
        this.aY = false;
        this.aZ = false;
        this.ba = false;
        this.bb = 0;
        this.bf = null;
        this.bg = null;
        this.bh = null;
        this.bi = null;
        this.bc = new b.a();
        this.al = str;
    }

    private void A() {
        this.aO = 0;
        this.aP = 0;
    }

    private void a(d dVar, h hVar) {
        this.aJ.a(this.aJ.a(dVar), hVar, 0, 5);
    }

    private void a(d dVar, boolean[] zArr) {
        zArr[2] = false;
        boolean p = p(64);
        b(p);
        int size = this.be.size();
        for (int i = 0; i < size; i++) {
            this.be.get(i).b(p);
        }
    }

    public static boolean a(e eVar, b.AbstractC0032b bVar, b.a aVar, int i) {
        int i2;
        int i3;
        if (bVar == null) {
            return false;
        }
        aVar.f1323d = eVar.R[0];
        aVar.e = eVar.R[1];
        aVar.f = eVar.o();
        aVar.g = eVar.p();
        aVar.l = false;
        aVar.m = i;
        boolean z = aVar.f1323d == e.a.MATCH_CONSTRAINT;
        boolean z2 = aVar.e == e.a.MATCH_CONSTRAINT;
        boolean z3 = z && eVar.V > BitmapDescriptorFactory.HUE_RED;
        boolean z4 = z2 && eVar.V > BitmapDescriptorFactory.HUE_RED;
        boolean z5 = z;
        if (z) {
            z5 = z;
            if (eVar.c(0)) {
                z5 = z;
                if (eVar.o == 0) {
                    z5 = z;
                    if (!z3) {
                        aVar.f1323d = e.a.WRAP_CONTENT;
                        if (z2 && eVar.p == 0) {
                            aVar.f1323d = e.a.FIXED;
                        }
                        z5 = false;
                    }
                }
            }
        }
        boolean z6 = z2;
        if (z2) {
            z6 = z2;
            if (eVar.c(1)) {
                z6 = z2;
                if (eVar.p == 0) {
                    z6 = z2;
                    if (!z4) {
                        aVar.e = e.a.WRAP_CONTENT;
                        if (z5 && eVar.o == 0) {
                            aVar.e = e.a.FIXED;
                        }
                        z6 = false;
                    }
                }
            }
        }
        if (eVar.b()) {
            aVar.f1323d = e.a.FIXED;
            z5 = false;
        }
        if (eVar.c()) {
            aVar.e = e.a.FIXED;
            z6 = false;
        }
        if (z3) {
            if (eVar.q[0] == 4) {
                aVar.f1323d = e.a.FIXED;
            } else if (!z6) {
                if (aVar.e == e.a.FIXED) {
                    i3 = aVar.g;
                } else {
                    aVar.f1323d = e.a.WRAP_CONTENT;
                    bVar.a(eVar, aVar);
                    i3 = aVar.i;
                }
                aVar.f1323d = e.a.FIXED;
                if (eVar.W == 0 || eVar.W == -1) {
                    aVar.f = (int) (eVar.V * i3);
                } else {
                    aVar.f = (int) (eVar.V / i3);
                }
            }
        }
        if (z4) {
            if (eVar.q[1] == 4) {
                aVar.e = e.a.FIXED;
            } else if (!z5) {
                if (aVar.f1323d == e.a.FIXED) {
                    i2 = aVar.f;
                } else {
                    aVar.e = e.a.WRAP_CONTENT;
                    bVar.a(eVar, aVar);
                    i2 = aVar.h;
                }
                aVar.e = e.a.FIXED;
                if (eVar.W == 0 || eVar.W == -1) {
                    aVar.g = (int) (i2 / eVar.V);
                } else {
                    aVar.g = (int) (i2 * eVar.V);
                }
            }
        }
        bVar.a(eVar, aVar);
        eVar.g(aVar.h);
        eVar.h(aVar.i);
        eVar.C = aVar.k;
        eVar.k(aVar.j);
        aVar.m = b.a.f1320a;
        return aVar.l;
    }

    private boolean a(boolean z, int i) {
        boolean z2;
        boolean z3;
        boolean z4;
        androidx.constraintlayout.a.a.a.e eVar = this.f1375b;
        boolean z5 = z & true;
        e.a l = eVar.f1326a.l(0);
        e.a l2 = eVar.f1326a.l(1);
        int m = eVar.f1326a.m();
        int n = eVar.f1326a.n();
        if (z5 && (l == e.a.WRAP_CONTENT || l2 == e.a.WRAP_CONTENT)) {
            Iterator<p> it2 = eVar.e.iterator();
            while (true) {
                z4 = z5;
                if (!it2.hasNext()) {
                    break;
                }
                p next = it2.next();
                if (next.h == i && !next.a()) {
                    z4 = false;
                    break;
                }
            }
            if (i == 0) {
                if (z4 && l == e.a.WRAP_CONTENT) {
                    f fVar = eVar.f1326a;
                    fVar.R[0] = e.a.FIXED;
                    eVar.f1326a.g(eVar.a(eVar.f1326a, 0));
                    eVar.f1326a.i.g.a(eVar.f1326a.o());
                }
            } else if (z4 && l2 == e.a.WRAP_CONTENT) {
                f fVar2 = eVar.f1326a;
                fVar2.R[1] = e.a.FIXED;
                eVar.f1326a.h(eVar.a(eVar.f1326a, 1));
                eVar.f1326a.j.g.a(eVar.f1326a.p());
            }
        }
        if (i == 0) {
            if (eVar.f1326a.R[0] == e.a.FIXED || eVar.f1326a.R[0] == e.a.MATCH_PARENT) {
                int o = eVar.f1326a.o() + m;
                eVar.f1326a.i.k.a(o);
                eVar.f1326a.i.g.a(o - m);
                z2 = true;
            }
            z2 = false;
        } else {
            if (eVar.f1326a.R[1] == e.a.FIXED || eVar.f1326a.R[1] == e.a.MATCH_PARENT) {
                int p = eVar.f1326a.p() + n;
                eVar.f1326a.j.k.a(p);
                eVar.f1326a.j.g.a(p - n);
                z2 = true;
            }
            z2 = false;
        }
        eVar.a();
        Iterator<p> it3 = eVar.e.iterator();
        while (it3.hasNext()) {
            p next2 = it3.next();
            if (next2.h == i && (next2.f1353d != eVar.f1326a || next2.i)) {
                next2.e();
            }
        }
        Iterator<p> it4 = eVar.e.iterator();
        while (it4.hasNext()) {
            p next3 = it4.next();
            if (next3.h == i && (z2 || next3.f1353d != eVar.f1326a)) {
                if (!next3.j.j || !next3.k.j || (!(next3 instanceof c) && !next3.g.j)) {
                    z3 = false;
                    break;
                }
            }
        }
        z3 = true;
        eVar.f1326a.R[0] = l;
        eVar.f1326a.R[1] = l2;
        return z3;
    }

    private void b(d dVar, h hVar) {
        this.aJ.a(hVar, this.aJ.a(dVar), 0, 5);
    }

    private boolean b(d dVar) {
        boolean p = p(64);
        a(dVar, p);
        int size = this.be.size();
        boolean z = false;
        for (int i = 0; i < size; i++) {
            e eVar = this.be.get(i);
            eVar.a(0, false);
            eVar.a(1, false);
            if (eVar instanceof a) {
                z = true;
            }
        }
        if (z) {
            for (int i2 = 0; i2 < size; i2++) {
                e eVar2 = this.be.get(i2);
                if (eVar2 instanceof a) {
                    ((a) eVar2).d();
                }
            }
        }
        for (int i3 = 0; i3 < size; i3++) {
            e eVar3 = this.be.get(i3);
            if (eVar3.y()) {
                eVar3.a(dVar, p);
            }
        }
        if (d.f1402a) {
            HashSet<e> hashSet = new HashSet<>();
            for (int i4 = 0; i4 < size; i4++) {
                e eVar4 = this.be.get(i4);
                if (!eVar4.y()) {
                    hashSet.add(eVar4);
                }
            }
            a(this, dVar, hashSet, this.R[0] == e.a.WRAP_CONTENT ? 0 : 1, false);
            Iterator<e> it2 = hashSet.iterator();
            while (it2.hasNext()) {
                e next = it2.next();
                k.a(this, dVar, next);
                next.a(dVar, p);
            }
        } else {
            for (int i5 = 0; i5 < size; i5++) {
                e eVar5 = this.be.get(i5);
                if (eVar5 instanceof f) {
                    e.a aVar = eVar5.R[0];
                    e.a aVar2 = eVar5.R[1];
                    if (aVar == e.a.WRAP_CONTENT) {
                        eVar5.R[0] = e.a.FIXED;
                    }
                    if (aVar2 == e.a.WRAP_CONTENT) {
                        eVar5.R[1] = e.a.FIXED;
                    }
                    eVar5.a(dVar, p);
                    if (aVar == e.a.WRAP_CONTENT) {
                        eVar5.R[0] = aVar;
                    }
                    if (aVar2 == e.a.WRAP_CONTENT) {
                        eVar5.R[1] = aVar2;
                    }
                } else {
                    k.a(this, dVar, eVar5);
                    if (!eVar5.y()) {
                        eVar5.a(dVar, p);
                    }
                }
            }
        }
        if (this.aO > 0) {
            b.a(this, dVar, null, 0);
        }
        if (this.aP <= 0) {
            return true;
        }
        b.a(this, dVar, null, 1);
        return true;
    }

    private void c(e eVar) {
        int i = this.aO;
        c[] cVarArr = this.aR;
        if (i + 1 >= cVarArr.length) {
            this.aR = (c[]) Arrays.copyOf(cVarArr, cVarArr.length * 2);
        }
        this.aR[this.aO] = new c(eVar, 0, this.f1377d);
        this.aO++;
    }

    private void d(e eVar) {
        int i = this.aP;
        c[] cVarArr = this.aQ;
        if (i + 1 >= cVarArr.length) {
            this.aQ = (c[]) Arrays.copyOf(cVarArr, cVarArr.length * 2);
        }
        this.aQ[this.aP] = new c(eVar, 1, this.f1377d);
        this.aP++;
    }

    /* JADX WARN: Code restructure failed: missing block: B:237:0x07cb, code lost:
        if (r0 == androidx.constraintlayout.a.a.e.a.MATCH_CONSTRAINT) goto L_0x07d6;
     */
    /* JADX WARN: Removed duplicated region for block: B:244:0x07e6  */
    /* JADX WARN: Removed duplicated region for block: B:394:0x080d A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long a(int r7, int r8, int r9, int r10, int r11, int r12, int r13) {
        /*
            Method dump skipped, instructions count: 2974
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.a.a.f.a(int, int, int, int, int, int, int):long");
    }

    public final void a(b.AbstractC0032b bVar) {
        this.f1376c = bVar;
        this.f1375b.f = bVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(d dVar) {
        WeakReference<d> weakReference = this.bf;
        if (weakReference == null || weakReference.get() == null || dVar.c() > this.bf.get().c()) {
            this.bf = new WeakReference<>(dVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(e eVar, int i) {
        if (i == 0) {
            c(eVar);
        } else if (i == 1) {
            d(eVar);
        }
    }

    @Override // androidx.constraintlayout.a.a.e
    public final void a(boolean z, boolean z2) {
        super.a(z, z2);
        int size = this.be.size();
        for (int i = 0; i < size; i++) {
            this.be.get(i).a(z, z2);
        }
    }

    public final void b(d dVar) {
        WeakReference<d> weakReference = this.bg;
        if (weakReference == null || weakReference.get() == null || dVar.c() > this.bg.get().c()) {
            this.bg = new WeakReference<>(dVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void c(d dVar) {
        WeakReference<d> weakReference = this.bh;
        if (weakReference == null || weakReference.get() == null || dVar.c() > this.bh.get().c()) {
            this.bh = new WeakReference<>(dVar);
        }
    }

    public final void d() {
        this.f1375b.f1327b = true;
    }

    public final void d(d dVar) {
        WeakReference<d> weakReference = this.bi;
        if (weakReference == null || weakReference.get() == null || dVar.c() > this.bi.get().c()) {
            this.bi = new WeakReference<>(dVar);
        }
    }

    public final void e() {
        this.f1374a.a(this);
    }

    public final b.AbstractC0032b f() {
        return this.f1376c;
    }

    @Override // androidx.constraintlayout.a.a.m, androidx.constraintlayout.a.a.e
    public final void k() {
        this.aJ.b();
        this.aK = 0;
        this.aM = 0;
        this.aL = 0;
        this.aN = 0;
        this.aY = false;
        super.k();
    }

    public final void o(int i) {
        this.aX = i;
        d.f1402a = p(512);
    }

    public final boolean p(int i) {
        return (this.aX & i) == i;
    }

    /* JADX WARN: Code restructure failed: missing block: B:252:0x088c, code lost:
        if (r14 != null) goto L_0x088f;
     */
    /* JADX WARN: Removed duplicated region for block: B:237:0x07fd  */
    /* JADX WARN: Removed duplicated region for block: B:251:0x0879  */
    /* JADX WARN: Removed duplicated region for block: B:257:0x08b2  */
    /* JADX WARN: Removed duplicated region for block: B:274:0x093a  */
    /* JADX WARN: Removed duplicated region for block: B:297:0x09e9  */
    /* JADX WARN: Removed duplicated region for block: B:304:0x0a1e  */
    /* JADX WARN: Removed duplicated region for block: B:372:0x0b9f  */
    /* JADX WARN: Removed duplicated region for block: B:373:0x0bad  */
    /* JADX WARN: Removed duplicated region for block: B:401:0x0cb1  */
    /* JADX WARN: Removed duplicated region for block: B:404:0x0cd8  */
    /* JADX WARN: Removed duplicated region for block: B:407:0x0cf8  */
    /* JADX WARN: Removed duplicated region for block: B:425:0x0d9a  */
    @Override // androidx.constraintlayout.a.a.m
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void z() {
        /*
            Method dump skipped, instructions count: 3510
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.a.a.f.z():void");
    }
}
