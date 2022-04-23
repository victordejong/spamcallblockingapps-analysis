package androidx.constraintlayout.a.a;

import androidx.constraintlayout.a.a.e;
import androidx.constraintlayout.a.d;
import java.util.ArrayList;
import java.util.HashMap;
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/a/a/g.class */
public final class g extends l {
    private e[] bo;

    /* renamed from: a  reason: collision with root package name */
    public int f1378a = -1;

    /* renamed from: b  reason: collision with root package name */
    public int f1379b = -1;

    /* renamed from: c  reason: collision with root package name */
    public int f1380c = -1;

    /* renamed from: d  reason: collision with root package name */
    public int f1381d = -1;
    public int aI = -1;
    public int aJ = -1;
    public float aK = 0.5f;
    public float aL = 0.5f;
    public float aM = 0.5f;
    public float aN = 0.5f;
    public float aO = 0.5f;
    public float aP = 0.5f;
    public int aQ = 0;
    public int aR = 0;
    public int aS = 2;
    public int aT = 2;
    public int aU = 0;
    public int aV = -1;
    public int aW = 0;
    private ArrayList<a> bk = new ArrayList<>();
    private e[] bl = null;
    private e[] bm = null;
    private int[] bn = null;
    private int bp = 0;

    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/a/a/g$a.class */
    final class a {

        /* renamed from: a  reason: collision with root package name */
        e f1382a = null;

        /* renamed from: b  reason: collision with root package name */
        int f1383b = 0;

        /* renamed from: c  reason: collision with root package name */
        int f1384c = 0;

        /* renamed from: d  reason: collision with root package name */
        int f1385d = 0;
        int e = 0;
        int f = 0;
        int g = 0;
        private int i;
        private d j;
        private d k;
        private d l;
        private d m;
        private int n;
        private int o;
        private int p;
        private int q;
        private int r;

        public a(int i, d dVar, d dVar2, d dVar3, d dVar4, int i2) {
            this.i = 0;
            this.n = 0;
            this.o = 0;
            this.p = 0;
            this.q = 0;
            this.r = 0;
            this.i = i;
            this.j = dVar;
            this.k = dVar2;
            this.l = dVar3;
            this.m = dVar4;
            this.n = g.this.bd;
            this.o = g.this.aZ;
            this.p = g.this.be;
            this.q = g.this.ba;
            this.r = i2;
        }

        public final int a() {
            return this.i == 0 ? this.f1384c - g.this.aQ : this.f1384c;
        }

        public final void a(int i) {
            int i2 = this.g;
            if (i2 != 0) {
                int i3 = this.f;
                int i4 = i / i2;
                for (int i5 = 0; i5 < i3 && this.e + i5 < g.this.bp; i5++) {
                    e eVar = g.this.bo[this.e + i5];
                    if (this.i == 0) {
                        if (eVar != null && eVar.R[0] == e.a.MATCH_CONSTRAINT && eVar.o == 0) {
                            g.this.a(eVar, e.a.FIXED, i4, eVar.R[1], eVar.p());
                        }
                    } else if (eVar != null && eVar.R[1] == e.a.MATCH_CONSTRAINT && eVar.p == 0) {
                        g.this.a(eVar, eVar.R[0], eVar.o(), e.a.FIXED, i4);
                    }
                }
                this.f1384c = 0;
                this.f1385d = 0;
                this.f1382a = null;
                this.f1383b = 0;
                int i6 = this.f;
                for (int i7 = 0; i7 < i6 && this.e + i7 < g.this.bp; i7++) {
                    e eVar2 = g.this.bo[this.e + i7];
                    if (this.i == 0) {
                        int o = eVar2.o();
                        int i8 = g.this.aQ;
                        if (eVar2.ak == 8) {
                            i8 = 0;
                        }
                        this.f1384c += o + i8;
                        int b2 = g.this.b(eVar2, this.r);
                        if (this.f1382a == null || this.f1383b < b2) {
                            this.f1382a = eVar2;
                            this.f1383b = b2;
                            this.f1385d = b2;
                        }
                    } else {
                        int a2 = g.this.a(eVar2, this.r);
                        int b3 = g.this.b(eVar2, this.r);
                        int i9 = g.this.aR;
                        if (eVar2.ak == 8) {
                            i9 = 0;
                        }
                        this.f1385d += b3 + i9;
                        if (this.f1382a == null || this.f1383b < a2) {
                            this.f1382a = eVar2;
                            this.f1383b = a2;
                            this.f1384c = a2;
                        }
                    }
                }
            }
        }

        public final void a(int i, d dVar, d dVar2, d dVar3, d dVar4, int i2, int i3, int i4, int i5, int i6) {
            this.i = i;
            this.j = dVar;
            this.k = dVar2;
            this.l = dVar3;
            this.m = dVar4;
            this.n = i2;
            this.o = i3;
            this.p = i4;
            this.q = i5;
            this.r = i6;
        }

        public final void a(e eVar) {
            int i = 0;
            int i2 = 0;
            if (this.i == 0) {
                int a2 = g.this.a(eVar, this.r);
                if (eVar.R[0] == e.a.MATCH_CONSTRAINT) {
                    this.g++;
                    a2 = 0;
                }
                i2 = g.this.aQ;
                if (eVar.ak == 8) {
                }
                this.f1384c += a2 + i2;
                int b2 = g.this.b(eVar, this.r);
                if (this.f1382a == null || this.f1383b < b2) {
                    this.f1382a = eVar;
                    this.f1383b = b2;
                    this.f1385d = b2;
                }
            } else {
                int a3 = g.this.a(eVar, this.r);
                int b3 = g.this.b(eVar, this.r);
                if (eVar.R[1] == e.a.MATCH_CONSTRAINT) {
                    this.g++;
                    b3 = 0;
                }
                i = g.this.aR;
                if (eVar.ak != 8) {
                }
                this.f1385d += b3 + i;
                if (this.f1382a == null || this.f1383b < a3) {
                    this.f1382a = eVar;
                    this.f1383b = a3;
                    this.f1384c = a3;
                }
            }
            this.f++;
        }

        public final void a(boolean z, int i, boolean z2) {
            float f;
            int i2;
            e eVar;
            float f2;
            int i3;
            int i4 = this.f;
            for (int i5 = 0; i5 < i4 && this.e + i5 < g.this.bp; i5++) {
                e eVar2 = g.this.bo[this.e + i5];
                if (eVar2 != null) {
                    eVar2.v();
                }
            }
            if (!(i4 == 0 || this.f1382a == null)) {
                boolean z3 = z2 && i == 0;
                int i6 = -1;
                int i7 = -1;
                for (int i8 = 0; i8 < i4; i8++) {
                    int i9 = z ? (i4 - 1) - i8 : i8;
                    if (this.e + i9 >= g.this.bp) {
                        break;
                    }
                    i6 = i6;
                    i7 = i7;
                    if (g.this.bo[this.e + i9].ak == 0) {
                        i6 = i6;
                        if (i6 == -1) {
                            i6 = i8;
                        }
                        i7 = i8;
                    }
                }
                e eVar3 = null;
                e eVar4 = null;
                if (this.i == 0) {
                    e eVar5 = this.f1382a;
                    eVar5.ay = g.this.f1379b;
                    int i10 = this.o;
                    int i11 = i10;
                    if (i > 0) {
                        i11 = i10 + g.this.aR;
                    }
                    eVar5.I.a(this.k, i11);
                    if (z2) {
                        eVar5.K.a(this.m, this.q);
                    }
                    if (i > 0) {
                        this.k.f1366d.K.a(eVar5.I, 0);
                    }
                    if (g.this.aT == 3 && !eVar5.C) {
                        for (int i12 = 0; i12 < i4; i12++) {
                            int i13 = z ? (i4 - 1) - i12 : i12;
                            if (this.e + i13 >= g.this.bp) {
                                break;
                            }
                            eVar = g.this.bo[this.e + i13];
                            if (eVar.C) {
                                break;
                            }
                        }
                    }
                    eVar = eVar5;
                    int i14 = 0;
                    while (i14 < i4) {
                        int i15 = z ? (i4 - 1) - i14 : i14;
                        if (this.e + i15 < g.this.bp) {
                            e eVar6 = g.this.bo[this.e + i15];
                            if (i14 == 0) {
                                eVar6.a(eVar6.H, this.j, this.n);
                            }
                            if (i15 == 0) {
                                int i16 = g.this.f1378a;
                                float f3 = g.this.aK;
                                if (this.e != 0 || g.this.f1380c == -1) {
                                    i3 = i16;
                                    f2 = f3;
                                    if (z2) {
                                        i3 = i16;
                                        f2 = f3;
                                        if (g.this.aI != -1) {
                                            i3 = g.this.aI;
                                            f2 = g.this.aO;
                                        }
                                    }
                                } else {
                                    i3 = g.this.f1380c;
                                    f2 = g.this.aM;
                                }
                                eVar6.ax = i3;
                                eVar6.ah = f2;
                            }
                            if (i14 == i4 - 1) {
                                eVar6.a(eVar6.J, this.l, this.p);
                            }
                            if (eVar4 != null) {
                                eVar6.H.a(eVar4.J, g.this.aQ);
                                if (i14 == i6) {
                                    eVar6.H.b(this.n);
                                }
                                eVar4.J.a(eVar6.H, 0);
                                if (i14 == i7 + 1) {
                                    eVar4.J.b(this.p);
                                }
                            }
                            if (eVar6 != eVar5) {
                                if (g.this.aT != 3 || !eVar.C || eVar6 == eVar || !eVar6.C) {
                                    int i17 = g.this.aT;
                                    if (i17 == 0) {
                                        eVar6.I.a(eVar5.I, 0);
                                    } else if (i17 == 1) {
                                        eVar6.K.a(eVar5.K, 0);
                                    } else if (z3) {
                                        eVar6.I.a(this.k, this.o);
                                        eVar6.K.a(this.m, this.q);
                                    } else {
                                        eVar6.I.a(eVar5.I, 0);
                                        eVar6.K.a(eVar5.K, 0);
                                    }
                                } else {
                                    eVar6.L.a(eVar.L, 0);
                                }
                            }
                            i14++;
                            eVar4 = eVar6;
                        } else {
                            return;
                        }
                    }
                    return;
                }
                e eVar7 = this.f1382a;
                eVar7.ax = g.this.f1378a;
                int i18 = this.n;
                int i19 = i18;
                if (i > 0) {
                    i19 = i18 + g.this.aQ;
                }
                if (z) {
                    eVar7.J.a(this.l, i19);
                    if (z2) {
                        eVar7.H.a(this.j, this.p);
                    }
                    if (i > 0) {
                        this.l.f1366d.H.a(eVar7.J, 0);
                    }
                } else {
                    eVar7.H.a(this.j, i19);
                    if (z2) {
                        eVar7.J.a(this.l, this.p);
                    }
                    if (i > 0) {
                        this.j.f1366d.J.a(eVar7.H, 0);
                    }
                }
                int i20 = 0;
                while (i20 < i4 && this.e + i20 < g.this.bp) {
                    e eVar8 = g.this.bo[this.e + i20];
                    if (i20 == 0) {
                        eVar8.a(eVar8.I, this.k, this.o);
                        int i21 = g.this.f1379b;
                        float f4 = g.this.aL;
                        if (this.e != 0 || g.this.f1381d == -1) {
                            i2 = i21;
                            f = f4;
                            if (z2) {
                                i2 = i21;
                                f = f4;
                                if (g.this.aJ != -1) {
                                    i2 = g.this.aJ;
                                    f = g.this.aP;
                                }
                            }
                        } else {
                            i2 = g.this.f1381d;
                            f = g.this.aN;
                        }
                        eVar8.ay = i2;
                        eVar8.ai = f;
                    }
                    if (i20 == i4 - 1) {
                        eVar8.a(eVar8.K, this.m, this.q);
                    }
                    if (eVar3 != null) {
                        eVar8.I.a(eVar3.K, g.this.aR);
                        if (i20 == i6) {
                            eVar8.I.b(this.o);
                        }
                        eVar3.K.a(eVar8.I, 0);
                        if (i20 == i7 + 1) {
                            eVar3.K.b(this.q);
                        }
                    }
                    if (eVar8 != eVar7) {
                        if (z) {
                            int i22 = g.this.aS;
                            if (i22 == 0) {
                                eVar8.J.a(eVar7.J, 0);
                            } else if (i22 == 1) {
                                eVar8.H.a(eVar7.H, 0);
                            } else if (i22 == 2) {
                                eVar8.H.a(eVar7.H, 0);
                                eVar8.J.a(eVar7.J, 0);
                            }
                        } else {
                            int i23 = g.this.aS;
                            if (i23 == 0) {
                                eVar8.H.a(eVar7.H, 0);
                            } else if (i23 == 1) {
                                eVar8.J.a(eVar7.J, 0);
                            } else if (i23 == 2) {
                                if (z3) {
                                    eVar8.H.a(this.j, this.n);
                                    eVar8.J.a(this.l, this.p);
                                } else {
                                    eVar8.H.a(eVar7.H, 0);
                                    eVar8.J.a(eVar7.J, 0);
                                }
                            }
                        }
                    }
                    i20++;
                    eVar3 = eVar8;
                }
            }
        }

        public final int b() {
            return this.i == 1 ? this.f1385d - g.this.aR : this.f1385d;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final int a(e eVar, int i) {
        if (eVar == null) {
            return 0;
        }
        if (eVar.R[0] == e.a.MATCH_CONSTRAINT) {
            if (eVar.o == 0) {
                return 0;
            }
            if (eVar.o == 2) {
                int i2 = (int) (eVar.t * i);
                if (i2 != eVar.o()) {
                    eVar.a(true);
                    a(eVar, e.a.FIXED, i2, eVar.R[1], eVar.p());
                }
                return i2;
            } else if (eVar.o == 1) {
                return eVar.o();
            } else {
                if (eVar.o == 3) {
                    return (int) ((eVar.p() * eVar.V) + 0.5f);
                }
            }
        }
        return eVar.o();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final int b(e eVar, int i) {
        if (eVar == null) {
            return 0;
        }
        if (eVar.R[1] == e.a.MATCH_CONSTRAINT) {
            if (eVar.p == 0) {
                return 0;
            }
            if (eVar.p == 2) {
                int i2 = (int) (eVar.w * i);
                if (i2 != eVar.p()) {
                    eVar.a(true);
                    a(eVar, eVar.R[0], eVar.o(), e.a.FIXED, i2);
                }
                return i2;
            } else if (eVar.p == 1) {
                return eVar.p();
            } else {
                if (eVar.p == 3) {
                    return (int) ((eVar.o() * eVar.V) + 0.5f);
                }
            }
        }
        return eVar.p();
    }

    /* JADX WARN: Removed duplicated region for block: B:307:0x0a95  */
    /* JADX WARN: Removed duplicated region for block: B:308:0x0a9b  */
    /* JADX WARN: Removed duplicated region for block: B:317:0x0ad0  */
    /* JADX WARN: Removed duplicated region for block: B:318:0x0ad6  */
    @Override // androidx.constraintlayout.a.a.l
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void a(int r13, int r14, int r15, int r16) {
        /*
            Method dump skipped, instructions count: 2784
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.a.a.g.a(int, int, int, int):void");
    }

    @Override // androidx.constraintlayout.a.a.j, androidx.constraintlayout.a.a.e
    public final void a(e eVar, HashMap<e, e> hashMap) {
        super.a(eVar, hashMap);
        g gVar = (g) eVar;
        this.f1378a = gVar.f1378a;
        this.f1379b = gVar.f1379b;
        this.f1380c = gVar.f1380c;
        this.f1381d = gVar.f1381d;
        this.aI = gVar.aI;
        this.aJ = gVar.aJ;
        this.aK = gVar.aK;
        this.aL = gVar.aL;
        this.aM = gVar.aM;
        this.aN = gVar.aN;
        this.aO = gVar.aO;
        this.aP = gVar.aP;
        this.aQ = gVar.aQ;
        this.aR = gVar.aR;
        this.aS = gVar.aS;
        this.aT = gVar.aT;
        this.aU = gVar.aU;
        this.aV = gVar.aV;
        this.aW = gVar.aW;
    }

    @Override // androidx.constraintlayout.a.a.e
    public final void a(d dVar, boolean z) {
        e eVar;
        super.a(dVar, z);
        boolean z2 = this.S != null ? ((f) this.S).f1377d : false;
        int i = this.aU;
        if (i != 0) {
            if (i == 1) {
                int size = this.bk.size();
                int i2 = 0;
                while (i2 < size) {
                    this.bk.get(i2).a(z2, i2, i2 == size - 1);
                    i2++;
                }
            } else if (!(i != 2 || this.bn == null || this.bm == null || this.bl == null)) {
                for (int i3 = 0; i3 < this.bp; i3++) {
                    this.bo[i3].v();
                }
                int[] iArr = this.bn;
                int i4 = iArr[0];
                int i5 = iArr[1];
                e eVar2 = null;
                for (int i6 = 0; i6 < i4; i6++) {
                    e eVar3 = this.bm[z2 ? (i4 - i6) - 1 : i6];
                    eVar2 = eVar2;
                    if (eVar3 != null) {
                        eVar2 = eVar2;
                        if (eVar3.ak != 8) {
                            if (i6 == 0) {
                                eVar3.a(eVar3.H, this.H, this.bd);
                                eVar3.ax = this.f1378a;
                                eVar3.ah = this.aK;
                            }
                            if (i6 == i4 - 1) {
                                eVar3.a(eVar3.J, this.J, this.be);
                            }
                            if (i6 > 0) {
                                eVar3.a(eVar3.H, eVar2.J, this.aQ);
                                eVar2.a(eVar2.J, eVar3.H, 0);
                            }
                            eVar2 = eVar3;
                        }
                    }
                }
                for (int i7 = 0; i7 < i5; i7++) {
                    e eVar4 = this.bl[i7];
                    eVar2 = eVar2;
                    if (eVar4 != null) {
                        eVar2 = eVar2;
                        if (eVar4.ak != 8) {
                            if (i7 == 0) {
                                eVar4.a(eVar4.I, this.I, this.aZ);
                                eVar4.ay = this.f1379b;
                                eVar4.ai = this.aL;
                            }
                            if (i7 == i5 - 1) {
                                eVar4.a(eVar4.K, this.K, this.ba);
                            }
                            if (i7 > 0) {
                                eVar4.a(eVar4.I, eVar2.K, this.aR);
                                eVar2.a(eVar2.K, eVar4.I, 0);
                            }
                            eVar2 = eVar4;
                        }
                    }
                }
                for (int i8 = 0; i8 < i4; i8++) {
                    for (int i9 = 0; i9 < i5; i9++) {
                        int i10 = (i9 * i4) + i8;
                        if (this.aW == 1) {
                            i10 = (i8 * i5) + i9;
                        }
                        e[] eVarArr = this.bo;
                        if (!(i10 >= eVarArr.length || (eVar = eVarArr[i10]) == null || eVar.ak == 8)) {
                            e eVar5 = this.bm[i8];
                            e eVar6 = this.bl[i9];
                            if (eVar != eVar5) {
                                eVar.a(eVar.H, eVar5.H, 0);
                                eVar.a(eVar.J, eVar5.J, 0);
                            }
                            if (eVar != eVar6) {
                                eVar.a(eVar.I, eVar6.I, 0);
                                eVar.a(eVar.K, eVar6.K, 0);
                            }
                        }
                    }
                }
            }
        } else if (this.bk.size() > 0) {
            this.bk.get(0).a(z2, 0, true);
        }
        this.bf = false;
    }
}
