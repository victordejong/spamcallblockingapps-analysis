package androidx.constraintlayout.solver;

import androidx.constraintlayout.solver.SolverVariable;
import androidx.constraintlayout.solver.widgets.ConstraintAnchor;
import androidx.constraintlayout.solver.widgets.ConstraintWidget;
import java.util.Arrays;
import java.util.HashMap;
/* renamed from: androidx.constraintlayout.solver.d */
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/solver/d.class */
public class C0199d {

    /* renamed from: q */
    private static int f1033q = 1000;

    /* renamed from: r */
    public static C0201e f1034r;

    /* renamed from: s */
    public static boolean f1035s = true;

    /* renamed from: t */
    public static long f1036t;

    /* renamed from: u */
    public static long f1037u;

    /* renamed from: c */
    private AbstractC0200a f1040c;

    /* renamed from: f */
    b[] f1043f;

    /* renamed from: m */
    final C0198c f1050m;

    /* renamed from: p */
    private AbstractC0200a f1053p;

    /* renamed from: a */
    int f1038a = 0;

    /* renamed from: b */
    private HashMap<String, SolverVariable> f1039b = null;

    /* renamed from: d */
    private int f1041d = 32;

    /* renamed from: e */
    private int f1042e = 32;

    /* renamed from: g */
    public boolean f1044g = false;

    /* renamed from: h */
    public boolean f1045h = false;

    /* renamed from: i */
    private boolean[] f1046i = new boolean[32];

    /* renamed from: j */
    int f1047j = 1;

    /* renamed from: k */
    int f1048k = 0;

    /* renamed from: l */
    private int f1049l = 32;

    /* renamed from: n */
    private SolverVariable[] f1051n = new SolverVariable[f1033q];

    /* renamed from: o */
    private int f1052o = 0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.constraintlayout.solver.d$a */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/solver/d$a.class */
    public interface AbstractC0200a {
        /* renamed from: a */
        void m14035a(AbstractC0200a aVar);

        /* renamed from: b */
        void m14034b(SolverVariable solverVariable);

        /* renamed from: c */
        SolverVariable m14033c(C0199d dVar, boolean[] zArr);

        void clear();

        SolverVariable getKey();
    }

    public C0199d() {
        this.f1043f = null;
        this.f1043f = new b[32];
        m14063C();
        C0198c cVar = new C0198c();
        this.f1050m = cVar;
        this.f1040c = new h(cVar);
        this.f1053p = f1035s ? new b(this, cVar) : new b(cVar);
    }

    /* renamed from: B */
    private final int m14064B(AbstractC0200a aVar, boolean z) {
        C0201e eVar = f1034r;
        if (eVar != null) {
            eVar.f1061h++;
        }
        for (int i = 0; i < this.f1047j; i++) {
            this.f1046i[i] = false;
        }
        boolean z2 = false;
        int i2 = 0;
        while (!z2) {
            C0201e eVar2 = f1034r;
            if (eVar2 != null) {
                eVar2.f1062i++;
            }
            int i3 = i2 + 1;
            if (i3 >= this.f1047j * 2) {
                return i3;
            }
            if (aVar.getKey() != null) {
                this.f1046i[aVar.getKey().f1012c] = true;
            }
            SolverVariable c = aVar.m14033c(this, this.f1046i);
            if (c != null) {
                boolean[] zArr = this.f1046i;
                int i4 = c.f1012c;
                if (zArr[i4]) {
                    return i3;
                }
                zArr[i4] = true;
            }
            if (c != null) {
                float f = Float.MAX_VALUE;
                int i5 = -1;
                for (int i6 = 0; i6 < this.f1048k; i6++) {
                    b bVar = this.f1043f[i6];
                    if (bVar.a.f1019j == SolverVariable.Type.UNRESTRICTED) {
                        f = f;
                        i5 = i5;
                    } else if (bVar.f) {
                        f = f;
                        i5 = i5;
                    } else {
                        f = f;
                        i5 = i5;
                        if (bVar.t(c)) {
                            float c2 = bVar.e.m14074c(c);
                            f = f;
                            i5 = i5;
                            if (c2 < 0.0f) {
                                float f2 = (-bVar.b) / c2;
                                f = f;
                                i5 = i5;
                                if (f2 < f) {
                                    i5 = i6;
                                    f = f2;
                                }
                            }
                        }
                    }
                }
                i2 = i3;
                if (i5 > -1) {
                    b bVar2 = this.f1043f[i5];
                    bVar2.a.f1013d = -1;
                    C0201e eVar3 = f1034r;
                    if (eVar3 != null) {
                        eVar3.f1063j++;
                    }
                    bVar2.y(c);
                    SolverVariable solverVariable = bVar2.a;
                    solverVariable.f1013d = i5;
                    solverVariable.m14077g(bVar2);
                    i2 = i3;
                }
            } else {
                z2 = true;
                i2 = i3;
            }
        }
        return i2;
    }

    /* renamed from: C */
    private void m14063C() {
        int i = 0;
        int i2 = 0;
        if (f1035s) {
            while (true) {
                b[] bVarArr = this.f1043f;
                if (i2 < bVarArr.length) {
                    b bVar = bVarArr[i2];
                    if (bVar != null) {
                        this.f1050m.f1029a.m14032a(bVar);
                    }
                    this.f1043f[i2] = null;
                    i2++;
                } else {
                    return;
                }
            }
        } else {
            while (true) {
                b[] bVarArr2 = this.f1043f;
                if (i < bVarArr2.length) {
                    b bVar2 = bVarArr2[i];
                    if (bVar2 != null) {
                        this.f1050m.f1030b.m14032a(bVar2);
                    }
                    this.f1043f[i] = null;
                    i++;
                } else {
                    return;
                }
            }
        }
    }

    /* renamed from: a */
    private SolverVariable m14061a(SolverVariable.Type type, String str) {
        SolverVariable b = this.f1050m.f1031c.m14031b();
        if (b == null) {
            b = new SolverVariable(type, str);
        } else {
            b.m14080d();
        }
        b.m14078f(type, str);
        int i = this.f1052o;
        int i2 = f1033q;
        if (i >= i2) {
            int i3 = i2 * 2;
            f1033q = i3;
            this.f1051n = (SolverVariable[]) Arrays.copyOf(this.f1051n, i3);
        }
        SolverVariable[] solverVariableArr = this.f1051n;
        int i4 = this.f1052o;
        this.f1052o = i4 + 1;
        solverVariableArr[i4] = b;
        return b;
    }

    /* renamed from: l */
    private final void m14050l(b bVar) {
        AbstractC0202f<b> fVar;
        b bVar2;
        if (f1035s) {
            b[] bVarArr = this.f1043f;
            int i = this.f1048k;
            if (bVarArr[i] != null) {
                fVar = this.f1050m.f1029a;
                bVar2 = bVarArr[i];
                fVar.m14032a(bVar2);
            }
        } else {
            b[] bVarArr2 = this.f1043f;
            int i2 = this.f1048k;
            if (bVarArr2[i2] != null) {
                fVar = this.f1050m.f1030b;
                bVar2 = bVarArr2[i2];
                fVar.m14032a(bVar2);
            }
        }
        b[] bVarArr3 = this.f1043f;
        int i3 = this.f1048k;
        bVarArr3[i3] = bVar;
        SolverVariable solverVariable = bVar.a;
        solverVariable.f1013d = i3;
        this.f1048k = i3 + 1;
        solverVariable.m14077g(bVar);
    }

    /* renamed from: n */
    private void m14048n() {
        for (int i = 0; i < this.f1048k; i++) {
            b bVar = this.f1043f[i];
            bVar.a.f1015f = bVar.b;
        }
    }

    /* renamed from: s */
    public static b m14043s(C0199d dVar, SolverVariable solverVariable, SolverVariable solverVariable2, float f) {
        b r = dVar.m14044r();
        r.j(solverVariable, solverVariable2, f);
        return r;
    }

    /* renamed from: u */
    private int m14041u(AbstractC0200a aVar) {
        boolean z;
        int i;
        int i2 = 0;
        while (true) {
            if (i2 >= this.f1048k) {
                z = false;
                break;
            }
            b[] bVarArr = this.f1043f;
            if (bVarArr[i2].a.f1019j != SolverVariable.Type.UNRESTRICTED && bVarArr[i2].b < 0.0f) {
                z = true;
                break;
            }
            i2++;
        }
        if (z) {
            boolean z2 = false;
            i = 0;
            while (!z2) {
                C0201e eVar = f1034r;
                if (eVar != null) {
                    eVar.f1064k++;
                }
                int i3 = i + 1;
                float f = Float.MAX_VALUE;
                int i4 = -1;
                int i5 = -1;
                int i6 = 0;
                for (int i7 = 0; i7 < this.f1048k; i7++) {
                    b bVar = this.f1043f[i7];
                    if (bVar.a.f1019j == SolverVariable.Type.UNRESTRICTED) {
                        f = f;
                        i4 = i4;
                        i5 = i5;
                        i6 = i6;
                    } else if (bVar.f) {
                        f = f;
                        i4 = i4;
                        i5 = i5;
                        i6 = i6;
                    } else {
                        f = f;
                        i4 = i4;
                        i5 = i5;
                        i6 = i6;
                        if (bVar.b < 0.0f) {
                            int i8 = 1;
                            while (true) {
                                f = f;
                                i4 = i4;
                                i5 = i5;
                                i6 = i6;
                                if (i8 < this.f1047j) {
                                    SolverVariable solverVariable = this.f1050m.f1032d[i8];
                                    float c = bVar.e.m14074c(solverVariable);
                                    if (c <= 0.0f) {
                                        f = f;
                                        i4 = i4;
                                        i5 = i5;
                                        i6 = i6;
                                    } else {
                                        int i9 = 0;
                                        int i10 = i5;
                                        while (true) {
                                            f = f;
                                            i4 = i4;
                                            i5 = i10;
                                            i6 = i6;
                                            if (i9 < 9) {
                                                float f2 = solverVariable.f1017h[i9] / c;
                                                if (f2 >= f || i9 != i6) {
                                                    i6 = i6;
                                                    if (i9 <= i6) {
                                                        i9++;
                                                    }
                                                }
                                                i10 = i8;
                                                i6 = i9;
                                                f = f2;
                                                i4 = i7;
                                                i9++;
                                            }
                                        }
                                    }
                                    i8++;
                                }
                            }
                        }
                    }
                }
                if (i4 != -1) {
                    b bVar2 = this.f1043f[i4];
                    bVar2.a.f1013d = -1;
                    C0201e eVar2 = f1034r;
                    if (eVar2 != null) {
                        eVar2.f1063j++;
                    }
                    bVar2.y(this.f1050m.f1032d[i5]);
                    SolverVariable solverVariable2 = bVar2.a;
                    solverVariable2.f1013d = i4;
                    solverVariable2.m14077g(bVar2);
                } else {
                    z2 = true;
                }
                if (i3 > this.f1047j / 2) {
                    z2 = true;
                }
                i = i3;
            }
        } else {
            i = 0;
        }
        return i;
    }

    /* renamed from: w */
    public static C0201e m14039w() {
        return f1034r;
    }

    /* renamed from: y */
    private void m14037y() {
        int i = this.f1041d * 2;
        this.f1041d = i;
        this.f1043f = (b[]) Arrays.copyOf(this.f1043f, i);
        C0198c cVar = this.f1050m;
        cVar.f1032d = (SolverVariable[]) Arrays.copyOf(cVar.f1032d, this.f1041d);
        int i2 = this.f1041d;
        this.f1046i = new boolean[i2];
        this.f1042e = i2;
        this.f1049l = i2;
        C0201e eVar = f1034r;
        if (eVar != null) {
            eVar.f1057d++;
            eVar.f1068o = Math.max(eVar.f1068o, i2);
            C0201e eVar2 = f1034r;
            eVar2.f1077x = eVar2.f1068o;
        }
    }

    /* renamed from: A */
    void m14065A(AbstractC0200a aVar) {
        C0201e eVar = f1034r;
        if (eVar != null) {
            eVar.f1073t++;
            eVar.f1074u = Math.max(eVar.f1074u, this.f1047j);
            C0201e eVar2 = f1034r;
            eVar2.f1075v = Math.max(eVar2.f1075v, this.f1048k);
        }
        m14041u(aVar);
        m14064B(aVar, false);
        m14048n();
    }

    /* renamed from: D */
    public void m14062D() {
        C0198c cVar;
        int i = 0;
        while (true) {
            cVar = this.f1050m;
            SolverVariable[] solverVariableArr = cVar.f1032d;
            if (i >= solverVariableArr.length) {
                break;
            }
            SolverVariable solverVariable = solverVariableArr[i];
            if (solverVariable != null) {
                solverVariable.m14080d();
            }
            i++;
        }
        cVar.f1031c.m14030c(this.f1051n, this.f1052o);
        this.f1052o = 0;
        Arrays.fill(this.f1050m.f1032d, (Object) null);
        HashMap<String, SolverVariable> hashMap = this.f1039b;
        if (hashMap != null) {
            hashMap.clear();
        }
        this.f1038a = 0;
        this.f1040c.clear();
        this.f1047j = 1;
        for (int i2 = 0; i2 < this.f1048k; i2++) {
            this.f1043f[i2].c = false;
        }
        m14063C();
        this.f1048k = 0;
        this.f1053p = f1035s ? new b(this, this.f1050m) : new b(this.f1050m);
    }

    /* renamed from: b */
    public void m14060b(ConstraintWidget constraintWidget, ConstraintWidget constraintWidget2, float f, int i) {
        ConstraintAnchor.Type type = ConstraintAnchor.Type.LEFT;
        SolverVariable q = m14045q(constraintWidget.m13949n(type));
        ConstraintAnchor.Type type2 = ConstraintAnchor.Type.TOP;
        SolverVariable q2 = m14045q(constraintWidget.m13949n(type2));
        ConstraintAnchor.Type type3 = ConstraintAnchor.Type.RIGHT;
        SolverVariable q3 = m14045q(constraintWidget.m13949n(type3));
        ConstraintAnchor.Type type4 = ConstraintAnchor.Type.BOTTOM;
        SolverVariable q4 = m14045q(constraintWidget.m13949n(type4));
        SolverVariable q5 = m14045q(constraintWidget2.m13949n(type));
        SolverVariable q6 = m14045q(constraintWidget2.m13949n(type2));
        SolverVariable q7 = m14045q(constraintWidget2.m13949n(type3));
        SolverVariable q8 = m14045q(constraintWidget2.m13949n(type4));
        b r = m14044r();
        double d = f;
        double sin = Math.sin(d);
        double d2 = i;
        Double.isNaN(d2);
        r.q(q2, q4, q6, q8, (float) (sin * d2));
        m14058d(r);
        b r2 = m14044r();
        double cos = Math.cos(d);
        Double.isNaN(d2);
        r2.q(q, q3, q5, q7, (float) (cos * d2));
        m14058d(r2);
    }

    /* renamed from: c */
    public void m14059c(SolverVariable solverVariable, SolverVariable solverVariable2, int i, float f, SolverVariable solverVariable3, SolverVariable solverVariable4, int i2, int i3) {
        b r = m14044r();
        r.h(solverVariable, solverVariable2, i, f, solverVariable3, solverVariable4, i2);
        if (i3 != 8) {
            r.d(this, i3);
        }
        m14058d(r);
    }

    /* renamed from: d */
    public void m14058d(b bVar) {
        SolverVariable w;
        if (bVar != null) {
            C0201e eVar = f1034r;
            if (eVar != null) {
                eVar.f1059f++;
                if (bVar.f) {
                    eVar.f1060g++;
                }
            }
            if (this.f1048k + 1 >= this.f1049l || this.f1047j + 1 >= this.f1042e) {
                m14037y();
            }
            boolean z = false;
            if (!bVar.f) {
                bVar.D(this);
                if (!bVar.u()) {
                    bVar.r();
                    if (bVar.f(this)) {
                        SolverVariable p = m14046p();
                        bVar.a = p;
                        m14050l(bVar);
                        this.f1053p.m14035a(bVar);
                        m14064B(this.f1053p, true);
                        z = true;
                        if (p.f1013d == -1) {
                            if (bVar.a == p && (w = bVar.w(p)) != null) {
                                C0201e eVar2 = f1034r;
                                if (eVar2 != null) {
                                    eVar2.f1063j++;
                                }
                                bVar.y(w);
                            }
                            if (!bVar.f) {
                                bVar.a.m14077g(bVar);
                            }
                            this.f1048k--;
                            z = true;
                        }
                    } else {
                        z = false;
                    }
                    if (!bVar.s()) {
                        return;
                    }
                } else {
                    return;
                }
            }
            if (!z) {
                m14050l(bVar);
            }
        }
    }

    /* renamed from: e */
    public b m14057e(SolverVariable solverVariable, SolverVariable solverVariable2, int i, int i2) {
        if (i2 == 8 && solverVariable2.f1016g && solverVariable.f1013d == -1) {
            solverVariable.m14079e(this, solverVariable2.f1015f + i);
            return null;
        }
        b r = m14044r();
        r.n(solverVariable, solverVariable2, i);
        if (i2 != 8) {
            r.d(this, i2);
        }
        m14058d(r);
        return r;
    }

    /* renamed from: f */
    public void m14056f(SolverVariable solverVariable, int i) {
        b bVar;
        int i2 = solverVariable.f1013d;
        if (i2 == -1) {
            solverVariable.m14079e(this, i);
            return;
        }
        if (i2 != -1) {
            b bVar2 = this.f1043f[i2];
            if (!bVar2.f) {
                if (bVar2.e.m14072e() == 0) {
                    bVar2.f = true;
                } else {
                    b r = m14044r();
                    r.m(solverVariable, i);
                    bVar = r;
                }
            }
            bVar2.b = i;
            return;
        }
        b r2 = m14044r();
        r2.i(solverVariable, i);
        bVar = r2;
        m14058d(bVar);
    }

    /* renamed from: g */
    public void m14055g(SolverVariable solverVariable, SolverVariable solverVariable2, int i, boolean z) {
        b r = m14044r();
        SolverVariable t = m14042t();
        t.f1014e = 0;
        r.o(solverVariable, solverVariable2, t, i);
        m14058d(r);
    }

    /* renamed from: h */
    public void m14054h(SolverVariable solverVariable, SolverVariable solverVariable2, int i, int i2) {
        b r = m14044r();
        SolverVariable t = m14042t();
        t.f1014e = 0;
        r.o(solverVariable, solverVariable2, t, i);
        if (i2 != 8) {
            m14049m(r, (int) (r.e.m14074c(t) * (-1.0f)), i2);
        }
        m14058d(r);
    }

    /* renamed from: i */
    public void m14053i(SolverVariable solverVariable, SolverVariable solverVariable2, int i, boolean z) {
        b r = m14044r();
        SolverVariable t = m14042t();
        t.f1014e = 0;
        r.p(solverVariable, solverVariable2, t, i);
        m14058d(r);
    }

    /* renamed from: j */
    public void m14052j(SolverVariable solverVariable, SolverVariable solverVariable2, int i, int i2) {
        b r = m14044r();
        SolverVariable t = m14042t();
        t.f1014e = 0;
        r.p(solverVariable, solverVariable2, t, i);
        if (i2 != 8) {
            m14049m(r, (int) (r.e.m14074c(t) * (-1.0f)), i2);
        }
        m14058d(r);
    }

    /* renamed from: k */
    public void m14051k(SolverVariable solverVariable, SolverVariable solverVariable2, SolverVariable solverVariable3, SolverVariable solverVariable4, float f, int i) {
        b r = m14044r();
        r.k(solverVariable, solverVariable2, solverVariable3, solverVariable4, f);
        if (i != 8) {
            r.d(this, i);
        }
        m14058d(r);
    }

    /* renamed from: m */
    void m14049m(b bVar, int i, int i2) {
        bVar.e(m14047o(i2, null), i);
    }

    /* renamed from: o */
    public SolverVariable m14047o(int i, String str) {
        C0201e eVar = f1034r;
        if (eVar != null) {
            eVar.f1065l++;
        }
        if (this.f1047j + 1 >= this.f1042e) {
            m14037y();
        }
        SolverVariable a = m14061a(SolverVariable.Type.ERROR, str);
        int i2 = this.f1038a + 1;
        this.f1038a = i2;
        this.f1047j++;
        a.f1012c = i2;
        a.f1014e = i;
        this.f1050m.f1032d[i2] = a;
        this.f1040c.m14034b(a);
        return a;
    }

    /* renamed from: p */
    public SolverVariable m14046p() {
        C0201e eVar = f1034r;
        if (eVar != null) {
            eVar.f1067n++;
        }
        if (this.f1047j + 1 >= this.f1042e) {
            m14037y();
        }
        SolverVariable a = m14061a(SolverVariable.Type.SLACK, null);
        int i = this.f1038a + 1;
        this.f1038a = i;
        this.f1047j++;
        a.f1012c = i;
        this.f1050m.f1032d[i] = a;
        return a;
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x005e, code lost:
        if (r4.f1050m.f1032d[r0] == null) goto L_0x0061;
     */
    /* renamed from: q */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public androidx.constraintlayout.solver.SolverVariable m14045q(java.lang.Object r5) {
        /*
            r4 = this;
            r0 = 0
            r6 = r0
            r0 = r5
            if (r0 != 0) goto L_0x0008
            r0 = 0
            return r0
        L_0x0008:
            r0 = r4
            int r0 = r0.f1047j
            r1 = 1
            int r0 = r0 + r1
            r1 = r4
            int r1 = r1.f1042e
            if (r0 < r1) goto L_0x0019
            r0 = r4
            r0.m14037y()
        L_0x0019:
            r0 = r5
            boolean r0 = r0 instanceof androidx.constraintlayout.solver.widgets.ConstraintAnchor
            if (r0 == 0) goto L_0x009d
            r0 = r5
            androidx.constraintlayout.solver.widgets.ConstraintAnchor r0 = (androidx.constraintlayout.solver.widgets.ConstraintAnchor) r0
            r7 = r0
            r0 = r7
            androidx.constraintlayout.solver.SolverVariable r0 = r0.m14018f()
            r6 = r0
            r0 = r6
            r5 = r0
            r0 = r6
            if (r0 != 0) goto L_0x003d
            r0 = r7
            r1 = r4
            androidx.constraintlayout.solver.c r1 = r1.f1050m
            r0.m14011m(r1)
            r0 = r7
            androidx.constraintlayout.solver.SolverVariable r0 = r0.m14018f()
            r5 = r0
        L_0x003d:
            r0 = r5
            int r0 = r0.f1012c
            r8 = r0
            r0 = r8
            r1 = -1
            if (r0 == r1) goto L_0x0061
            r0 = r8
            r1 = r4
            int r1 = r1.f1038a
            if (r0 > r1) goto L_0x0061
            r0 = r5
            r6 = r0
            r0 = r4
            androidx.constraintlayout.solver.c r0 = r0.f1050m
            androidx.constraintlayout.solver.SolverVariable[] r0 = r0.f1032d
            r1 = r8
            r0 = r0[r1]
            if (r0 != 0) goto L_0x009d
        L_0x0061:
            r0 = r8
            r1 = -1
            if (r0 == r1) goto L_0x006b
            r0 = r5
            r0.m14080d()
        L_0x006b:
            r0 = r4
            int r0 = r0.f1038a
            r1 = 1
            int r0 = r0 + r1
            r8 = r0
            r0 = r4
            r1 = r8
            r0.f1038a = r1
            r0 = r4
            r1 = r4
            int r1 = r1.f1047j
            r2 = 1
            int r1 = r1 + r2
            r0.f1047j = r1
            r0 = r5
            r1 = r8
            r0.f1012c = r1
            r0 = r5
            androidx.constraintlayout.solver.SolverVariable$Type r1 = androidx.constraintlayout.solver.SolverVariable.Type.UNRESTRICTED
            r0.f1019j = r1
            r0 = r4
            androidx.constraintlayout.solver.c r0 = r0.f1050m
            androidx.constraintlayout.solver.SolverVariable[] r0 = r0.f1032d
            r1 = r8
            r2 = r5
            r0[r1] = r2
            r0 = r5
            r6 = r0
        L_0x009d:
            r0 = r6
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.solver.C0199d.m14045q(java.lang.Object):androidx.constraintlayout.solver.SolverVariable");
    }

    /* renamed from: r */
    public b m14044r() {
        b bVar;
        if (f1035s) {
            b bVar2 = (b) this.f1050m.f1029a.m14031b();
            bVar = bVar2;
            if (bVar2 == null) {
                bVar = new b(this, this.f1050m);
                f1037u++;
            }
            bVar.z();
        } else {
            b bVar3 = (b) this.f1050m.f1030b.m14031b();
            bVar = bVar3;
            if (bVar3 == null) {
                bVar = new b(this.f1050m);
                f1036t++;
            }
            bVar.z();
        }
        SolverVariable.m14082b();
        return bVar;
    }

    /* renamed from: t */
    public SolverVariable m14042t() {
        C0201e eVar = f1034r;
        if (eVar != null) {
            eVar.f1066m++;
        }
        if (this.f1047j + 1 >= this.f1042e) {
            m14037y();
        }
        SolverVariable a = m14061a(SolverVariable.Type.SLACK, null);
        int i = this.f1038a + 1;
        this.f1038a = i;
        this.f1047j++;
        a.f1012c = i;
        this.f1050m.f1032d[i] = a;
        return a;
    }

    /* renamed from: v */
    public C0198c m14040v() {
        return this.f1050m;
    }

    /* renamed from: x */
    public int m14038x(Object obj) {
        SolverVariable f = ((ConstraintAnchor) obj).m14018f();
        if (f != null) {
            return (int) (f.f1015f + 0.5f);
        }
        return 0;
    }

    /* renamed from: z */
    public void m14036z() {
        C0201e eVar = f1034r;
        if (eVar != null) {
            eVar.f1058e++;
        }
        if (this.f1044g || this.f1045h) {
            if (eVar != null) {
                eVar.f1070q++;
            }
            boolean z = false;
            int i = 0;
            while (true) {
                if (i >= this.f1048k) {
                    z = true;
                    break;
                } else if (!this.f1043f[i].f) {
                    break;
                } else {
                    i++;
                }
            }
            if (z) {
                C0201e eVar2 = f1034r;
                if (eVar2 != null) {
                    eVar2.f1069p++;
                }
                m14048n();
                return;
            }
        }
        m14065A(this.f1040c);
    }
}
