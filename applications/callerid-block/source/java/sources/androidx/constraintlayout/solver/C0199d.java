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

    /* renamed from: androidx.constraintlayout.solver.d$a */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/solver/d$a.class */
    public interface AbstractC0200a {
        /* renamed from: a */
        void m14035a(AbstractC0200a abstractC0200a);

        /* renamed from: b */
        void m14034b(SolverVariable solverVariable);

        /* renamed from: c */
        SolverVariable m14033c(C0199d c0199d, boolean[] zArr);

        void clear();

        SolverVariable getKey();
    }

    public C0199d() {
        this.f1043f = null;
        this.f1043f = new b[32];
        m14063C();
        C0198c c0198c = new C0198c();
        this.f1050m = c0198c;
        this.f1040c = new h(c0198c);
        this.f1053p = f1035s ? new b(this, c0198c) : new b(c0198c);
    }

    /* renamed from: B */
    private final int m14064B(AbstractC0200a abstractC0200a, boolean z) {
        int i;
        int i2;
        float f;
        C0201e c0201e = f1034r;
        if (c0201e != null) {
            c0201e.f1061h++;
        }
        for (int i3 = 0; i3 < this.f1047j; i3++) {
            this.f1046i[i3] = false;
        }
        boolean z2 = false;
        int i4 = 0;
        while (!z2) {
            C0201e c0201e2 = f1034r;
            if (c0201e2 != null) {
                c0201e2.f1062i++;
            }
            int i5 = i4 + 1;
            if (i5 >= this.f1047j * 2) {
                return i5;
            }
            if (abstractC0200a.getKey() != null) {
                this.f1046i[abstractC0200a.getKey().f1012c] = true;
            }
            SolverVariable m14033c = abstractC0200a.m14033c(this, this.f1046i);
            if (m14033c != null) {
                boolean[] zArr = this.f1046i;
                int i6 = m14033c.f1012c;
                if (zArr[i6]) {
                    return i5;
                }
                zArr[i6] = true;
            }
            if (m14033c != null) {
                float f2 = Float.MAX_VALUE;
                int i7 = 0;
                int i8 = -1;
                while (true) {
                    i = i8;
                    if (i7 >= this.f1048k) {
                        break;
                    }
                    b bVar = this.f1043f[i7];
                    if (bVar.a.f1019j == SolverVariable.Type.UNRESTRICTED) {
                        f = f2;
                        i2 = i;
                    } else if (bVar.f) {
                        f = f2;
                        i2 = i;
                    } else {
                        f = f2;
                        i2 = i;
                        if (bVar.t(m14033c)) {
                            float m14074c = bVar.e.m14074c(m14033c);
                            f = f2;
                            i2 = i;
                            if (m14074c < 0.0f) {
                                float f3 = (-bVar.b) / m14074c;
                                f = f2;
                                i2 = i;
                                if (f3 < f2) {
                                    i2 = i7;
                                    f = f3;
                                }
                            }
                        }
                    }
                    i7++;
                    f2 = f;
                    i8 = i2;
                }
                i4 = i5;
                if (i > -1) {
                    b bVar2 = this.f1043f[i];
                    bVar2.a.f1013d = -1;
                    C0201e c0201e3 = f1034r;
                    if (c0201e3 != null) {
                        c0201e3.f1063j++;
                    }
                    bVar2.y(m14033c);
                    SolverVariable solverVariable = bVar2.a;
                    solverVariable.f1013d = i;
                    solverVariable.m14077g(bVar2);
                    i4 = i5;
                }
            } else {
                z2 = true;
                i4 = i5;
            }
        }
        return i4;
    }

    /* renamed from: C */
    private void m14063C() {
        int i = 0;
        if (f1035s) {
            int i2 = 0;
            while (true) {
                b[] bVarArr = this.f1043f;
                if (i2 >= bVarArr.length) {
                    return;
                }
                b bVar = bVarArr[i2];
                if (bVar != null) {
                    this.f1050m.f1029a.m14032a(bVar);
                }
                this.f1043f[i2] = null;
                i2++;
            }
        } else {
            while (true) {
                b[] bVarArr2 = this.f1043f;
                if (i >= bVarArr2.length) {
                    return;
                }
                b bVar2 = bVarArr2[i];
                if (bVar2 != null) {
                    this.f1050m.f1030b.m14032a(bVar2);
                }
                this.f1043f[i] = null;
                i++;
            }
        }
    }

    /* renamed from: a */
    private SolverVariable m14061a(SolverVariable.Type type, String str) {
        SolverVariable m14031b = this.f1050m.f1031c.m14031b();
        if (m14031b == null) {
            m14031b = new SolverVariable(type, str);
        } else {
            m14031b.m14080d();
        }
        m14031b.m14078f(type, str);
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
        solverVariableArr[i4] = m14031b;
        return m14031b;
    }

    /* renamed from: l */
    private final void m14050l(b bVar) {
        AbstractC0202f<b> abstractC0202f;
        b bVar2;
        if (f1035s) {
            b[] bVarArr = this.f1043f;
            int i = this.f1048k;
            if (bVarArr[i] != null) {
                abstractC0202f = this.f1050m.f1029a;
                bVar2 = bVarArr[i];
                abstractC0202f.m14032a(bVar2);
            }
        } else {
            b[] bVarArr2 = this.f1043f;
            int i2 = this.f1048k;
            if (bVarArr2[i2] != null) {
                abstractC0202f = this.f1050m.f1030b;
                bVar2 = bVarArr2[i2];
                abstractC0202f.m14032a(bVar2);
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
    public static b m14043s(C0199d c0199d, SolverVariable solverVariable, SolverVariable solverVariable2, float f) {
        b m14044r = c0199d.m14044r();
        m14044r.j(solverVariable, solverVariable2, f);
        return m14044r;
    }

    /* renamed from: u */
    private int m14041u(AbstractC0200a abstractC0200a) {
        boolean z;
        int i;
        int i2;
        int i3;
        int i4;
        float f;
        int i5;
        int i6;
        int i7;
        float f2;
        int i8;
        int i9 = 0;
        while (true) {
            if (i9 >= this.f1048k) {
                z = false;
                break;
            }
            b[] bVarArr = this.f1043f;
            if (bVarArr[i9].a.f1019j != SolverVariable.Type.UNRESTRICTED && bVarArr[i9].b < 0.0f) {
                z = true;
                break;
            }
            i9++;
        }
        if (z) {
            boolean z2 = false;
            int i10 = 0;
            while (true) {
                i = i10;
                if (z2) {
                    break;
                }
                C0201e c0201e = f1034r;
                if (c0201e != null) {
                    c0201e.f1064k++;
                }
                int i11 = i + 1;
                float f3 = Float.MAX_VALUE;
                int i12 = 0;
                int i13 = -1;
                int i14 = -1;
                int i15 = 0;
                while (true) {
                    int i16 = i15;
                    if (i12 >= this.f1048k) {
                        break;
                    }
                    b bVar = this.f1043f[i12];
                    if (bVar.a.f1019j == SolverVariable.Type.UNRESTRICTED) {
                        f = f3;
                        i4 = i13;
                        i3 = i14;
                        i2 = i16;
                    } else if (bVar.f) {
                        f = f3;
                        i4 = i13;
                        i3 = i14;
                        i2 = i16;
                    } else {
                        f = f3;
                        i4 = i13;
                        i3 = i14;
                        i2 = i16;
                        if (bVar.b < 0.0f) {
                            int i17 = 1;
                            while (true) {
                                f = f3;
                                i4 = i13;
                                i3 = i14;
                                i2 = i16;
                                if (i17 < this.f1047j) {
                                    SolverVariable solverVariable = this.f1050m.f1032d[i17];
                                    float m14074c = bVar.e.m14074c(solverVariable);
                                    if (m14074c <= 0.0f) {
                                        f2 = f3;
                                        i5 = i13;
                                        i7 = i14;
                                        i6 = i16;
                                    } else {
                                        int i18 = i14;
                                        int i19 = 0;
                                        while (true) {
                                            f2 = f3;
                                            i5 = i13;
                                            i7 = i18;
                                            i6 = i16;
                                            if (i19 < 9) {
                                                float f4 = solverVariable.f1017h[i19] / m14074c;
                                                if (f4 >= f3 || i19 != i16) {
                                                    i8 = i16;
                                                    if (i19 <= i16) {
                                                        i19++;
                                                        i16 = i8;
                                                    }
                                                }
                                                i18 = i17;
                                                i8 = i19;
                                                f3 = f4;
                                                i13 = i12;
                                                i19++;
                                                i16 = i8;
                                            }
                                        }
                                    }
                                    i17++;
                                    f3 = f2;
                                    i13 = i5;
                                    i14 = i7;
                                    i16 = i6;
                                }
                            }
                        }
                    }
                    i12++;
                    f3 = f;
                    i13 = i4;
                    i14 = i3;
                    i15 = i2;
                }
                if (i13 != -1) {
                    b bVar2 = this.f1043f[i13];
                    bVar2.a.f1013d = -1;
                    C0201e c0201e2 = f1034r;
                    if (c0201e2 != null) {
                        c0201e2.f1063j++;
                    }
                    bVar2.y(this.f1050m.f1032d[i14]);
                    SolverVariable solverVariable2 = bVar2.a;
                    solverVariable2.f1013d = i13;
                    solverVariable2.m14077g(bVar2);
                } else {
                    z2 = true;
                }
                if (i11 > this.f1047j / 2) {
                    z2 = true;
                }
                i10 = i11;
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
        C0198c c0198c = this.f1050m;
        c0198c.f1032d = (SolverVariable[]) Arrays.copyOf(c0198c.f1032d, this.f1041d);
        int i2 = this.f1041d;
        this.f1046i = new boolean[i2];
        this.f1042e = i2;
        this.f1049l = i2;
        C0201e c0201e = f1034r;
        if (c0201e != null) {
            c0201e.f1057d++;
            c0201e.f1068o = Math.max(c0201e.f1068o, i2);
            C0201e c0201e2 = f1034r;
            c0201e2.f1077x = c0201e2.f1068o;
        }
    }

    /* renamed from: A */
    void m14065A(AbstractC0200a abstractC0200a) {
        C0201e c0201e = f1034r;
        if (c0201e != null) {
            c0201e.f1073t++;
            c0201e.f1074u = Math.max(c0201e.f1074u, this.f1047j);
            C0201e c0201e2 = f1034r;
            c0201e2.f1075v = Math.max(c0201e2.f1075v, this.f1048k);
        }
        m14041u(abstractC0200a);
        m14064B(abstractC0200a, false);
        m14048n();
    }

    /* renamed from: D */
    public void m14062D() {
        C0198c c0198c;
        int i = 0;
        while (true) {
            c0198c = this.f1050m;
            SolverVariable[] solverVariableArr = c0198c.f1032d;
            if (i >= solverVariableArr.length) {
                break;
            }
            SolverVariable solverVariable = solverVariableArr[i];
            if (solverVariable != null) {
                solverVariable.m14080d();
            }
            i++;
        }
        c0198c.f1031c.m14030c(this.f1051n, this.f1052o);
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
        SolverVariable m14045q = m14045q(constraintWidget.m13949n(type));
        ConstraintAnchor.Type type2 = ConstraintAnchor.Type.TOP;
        SolverVariable m14045q2 = m14045q(constraintWidget.m13949n(type2));
        ConstraintAnchor.Type type3 = ConstraintAnchor.Type.RIGHT;
        SolverVariable m14045q3 = m14045q(constraintWidget.m13949n(type3));
        ConstraintAnchor.Type type4 = ConstraintAnchor.Type.BOTTOM;
        SolverVariable m14045q4 = m14045q(constraintWidget.m13949n(type4));
        SolverVariable m14045q5 = m14045q(constraintWidget2.m13949n(type));
        SolverVariable m14045q6 = m14045q(constraintWidget2.m13949n(type2));
        SolverVariable m14045q7 = m14045q(constraintWidget2.m13949n(type3));
        SolverVariable m14045q8 = m14045q(constraintWidget2.m13949n(type4));
        b m14044r = m14044r();
        double d = f;
        double sin = Math.sin(d);
        double d2 = i;
        Double.isNaN(d2);
        m14044r.q(m14045q2, m14045q4, m14045q6, m14045q8, (float) (sin * d2));
        m14058d(m14044r);
        b m14044r2 = m14044r();
        double cos = Math.cos(d);
        Double.isNaN(d2);
        m14044r2.q(m14045q, m14045q3, m14045q5, m14045q7, (float) (cos * d2));
        m14058d(m14044r2);
    }

    /* renamed from: c */
    public void m14059c(SolverVariable solverVariable, SolverVariable solverVariable2, int i, float f, SolverVariable solverVariable3, SolverVariable solverVariable4, int i2, int i3) {
        b m14044r = m14044r();
        m14044r.h(solverVariable, solverVariable2, i, f, solverVariable3, solverVariable4, i2);
        if (i3 != 8) {
            m14044r.d(this, i3);
        }
        m14058d(m14044r);
    }

    /* renamed from: d */
    public void m14058d(b bVar) {
        SolverVariable w;
        if (bVar == null) {
            return;
        }
        C0201e c0201e = f1034r;
        if (c0201e != null) {
            c0201e.f1059f++;
            if (bVar.f) {
                c0201e.f1060g++;
            }
        }
        if (this.f1048k + 1 >= this.f1049l || this.f1047j + 1 >= this.f1042e) {
            m14037y();
        }
        boolean z = false;
        if (!bVar.f) {
            bVar.D(this);
            if (bVar.u()) {
                return;
            }
            bVar.r();
            if (bVar.f(this)) {
                SolverVariable m14046p = m14046p();
                bVar.a = m14046p;
                m14050l(bVar);
                this.f1053p.m14035a(bVar);
                m14064B(this.f1053p, true);
                z = true;
                if (m14046p.f1013d == -1) {
                    if (bVar.a == m14046p && (w = bVar.w(m14046p)) != null) {
                        C0201e c0201e2 = f1034r;
                        if (c0201e2 != null) {
                            c0201e2.f1063j++;
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
        }
        if (z) {
            return;
        }
        m14050l(bVar);
    }

    /* renamed from: e */
    public b m14057e(SolverVariable solverVariable, SolverVariable solverVariable2, int i, int i2) {
        if (i2 == 8 && solverVariable2.f1016g && solverVariable.f1013d == -1) {
            solverVariable.m14079e(this, solverVariable2.f1015f + i);
            return null;
        }
        b m14044r = m14044r();
        m14044r.n(solverVariable, solverVariable2, i);
        if (i2 != 8) {
            m14044r.d(this, i2);
        }
        m14058d(m14044r);
        return m14044r;
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
                    b m14044r = m14044r();
                    m14044r.m(solverVariable, i);
                    bVar = m14044r;
                }
            }
            bVar2.b = i;
            return;
        }
        b m14044r2 = m14044r();
        m14044r2.i(solverVariable, i);
        bVar = m14044r2;
        m14058d(bVar);
    }

    /* renamed from: g */
    public void m14055g(SolverVariable solverVariable, SolverVariable solverVariable2, int i, boolean z) {
        b m14044r = m14044r();
        SolverVariable m14042t = m14042t();
        m14042t.f1014e = 0;
        m14044r.o(solverVariable, solverVariable2, m14042t, i);
        m14058d(m14044r);
    }

    /* renamed from: h */
    public void m14054h(SolverVariable solverVariable, SolverVariable solverVariable2, int i, int i2) {
        b m14044r = m14044r();
        SolverVariable m14042t = m14042t();
        m14042t.f1014e = 0;
        m14044r.o(solverVariable, solverVariable2, m14042t, i);
        if (i2 != 8) {
            m14049m(m14044r, (int) (m14044r.e.m14074c(m14042t) * (-1.0f)), i2);
        }
        m14058d(m14044r);
    }

    /* renamed from: i */
    public void m14053i(SolverVariable solverVariable, SolverVariable solverVariable2, int i, boolean z) {
        b m14044r = m14044r();
        SolverVariable m14042t = m14042t();
        m14042t.f1014e = 0;
        m14044r.p(solverVariable, solverVariable2, m14042t, i);
        m14058d(m14044r);
    }

    /* renamed from: j */
    public void m14052j(SolverVariable solverVariable, SolverVariable solverVariable2, int i, int i2) {
        b m14044r = m14044r();
        SolverVariable m14042t = m14042t();
        m14042t.f1014e = 0;
        m14044r.p(solverVariable, solverVariable2, m14042t, i);
        if (i2 != 8) {
            m14049m(m14044r, (int) (m14044r.e.m14074c(m14042t) * (-1.0f)), i2);
        }
        m14058d(m14044r);
    }

    /* renamed from: k */
    public void m14051k(SolverVariable solverVariable, SolverVariable solverVariable2, SolverVariable solverVariable3, SolverVariable solverVariable4, float f, int i) {
        b m14044r = m14044r();
        m14044r.k(solverVariable, solverVariable2, solverVariable3, solverVariable4, f);
        if (i != 8) {
            m14044r.d(this, i);
        }
        m14058d(m14044r);
    }

    /* renamed from: m */
    void m14049m(b bVar, int i, int i2) {
        bVar.e(m14047o(i2, null), i);
    }

    /* renamed from: o */
    public SolverVariable m14047o(int i, String str) {
        C0201e c0201e = f1034r;
        if (c0201e != null) {
            c0201e.f1065l++;
        }
        if (this.f1047j + 1 >= this.f1042e) {
            m14037y();
        }
        SolverVariable m14061a = m14061a(SolverVariable.Type.ERROR, str);
        int i2 = this.f1038a + 1;
        this.f1038a = i2;
        this.f1047j++;
        m14061a.f1012c = i2;
        m14061a.f1014e = i;
        this.f1050m.f1032d[i2] = m14061a;
        this.f1040c.m14034b(m14061a);
        return m14061a;
    }

    /* renamed from: p */
    public SolverVariable m14046p() {
        C0201e c0201e = f1034r;
        if (c0201e != null) {
            c0201e.f1067n++;
        }
        if (this.f1047j + 1 >= this.f1042e) {
            m14037y();
        }
        SolverVariable m14061a = m14061a(SolverVariable.Type.SLACK, null);
        int i = this.f1038a + 1;
        this.f1038a = i;
        this.f1047j++;
        m14061a.f1012c = i;
        this.f1050m.f1032d[i] = m14061a;
        return m14061a;
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x005e, code lost:
        if (r4.f1050m.f1032d[r0] == null) goto L19;
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
            if (r0 != 0) goto L8
            r0 = 0
            return r0
        L8:
            r0 = r4
            int r0 = r0.f1047j
            r1 = 1
            int r0 = r0 + r1
            r1 = r4
            int r1 = r1.f1042e
            if (r0 < r1) goto L19
            r0 = r4
            r0.m14037y()
        L19:
            r0 = r5
            boolean r0 = r0 instanceof androidx.constraintlayout.solver.widgets.ConstraintAnchor
            if (r0 == 0) goto L9d
            r0 = r5
            androidx.constraintlayout.solver.widgets.ConstraintAnchor r0 = (androidx.constraintlayout.solver.widgets.ConstraintAnchor) r0
            r7 = r0
            r0 = r7
            androidx.constraintlayout.solver.SolverVariable r0 = r0.m14018f()
            r6 = r0
            r0 = r6
            r5 = r0
            r0 = r6
            if (r0 != 0) goto L3d
            r0 = r7
            r1 = r4
            androidx.constraintlayout.solver.c r1 = r1.f1050m
            r0.m14011m(r1)
            r0 = r7
            androidx.constraintlayout.solver.SolverVariable r0 = r0.m14018f()
            r5 = r0
        L3d:
            r0 = r5
            int r0 = r0.f1012c
            r8 = r0
            r0 = r8
            r1 = -1
            if (r0 == r1) goto L61
            r0 = r8
            r1 = r4
            int r1 = r1.f1038a
            if (r0 > r1) goto L61
            r0 = r5
            r6 = r0
            r0 = r4
            androidx.constraintlayout.solver.c r0 = r0.f1050m
            androidx.constraintlayout.solver.SolverVariable[] r0 = r0.f1032d
            r1 = r8
            r0 = r0[r1]
            if (r0 != 0) goto L9d
        L61:
            r0 = r8
            r1 = -1
            if (r0 == r1) goto L6b
            r0 = r5
            r0.m14080d()
        L6b:
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
        L9d:
            r0 = r6
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.solver.C0199d.m14045q(java.lang.Object):androidx.constraintlayout.solver.SolverVariable");
    }

    /* renamed from: r */
    public b m14044r() {
        b bVar;
        if (f1035s) {
            b m14031b = this.f1050m.f1029a.m14031b();
            bVar = m14031b;
            if (m14031b == null) {
                bVar = new b(this, this.f1050m);
                f1037u++;
            }
            bVar.z();
        } else {
            b m14031b2 = this.f1050m.f1030b.m14031b();
            bVar = m14031b2;
            if (m14031b2 == null) {
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
        C0201e c0201e = f1034r;
        if (c0201e != null) {
            c0201e.f1066m++;
        }
        if (this.f1047j + 1 >= this.f1042e) {
            m14037y();
        }
        SolverVariable m14061a = m14061a(SolverVariable.Type.SLACK, null);
        int i = this.f1038a + 1;
        this.f1038a = i;
        this.f1047j++;
        m14061a.f1012c = i;
        this.f1050m.f1032d[i] = m14061a;
        return m14061a;
    }

    /* renamed from: v */
    public C0198c m14040v() {
        return this.f1050m;
    }

    /* renamed from: x */
    public int m14038x(Object obj) {
        SolverVariable m14018f = ((ConstraintAnchor) obj).m14018f();
        if (m14018f != null) {
            return (int) (m14018f.f1015f + 0.5f);
        }
        return 0;
    }

    /* renamed from: z */
    public void m14036z() {
        boolean z;
        C0201e c0201e = f1034r;
        if (c0201e != null) {
            c0201e.f1058e++;
        }
        if (this.f1044g || this.f1045h) {
            if (c0201e != null) {
                c0201e.f1070q++;
            }
            int i = 0;
            while (true) {
                if (i >= this.f1048k) {
                    z = true;
                    break;
                } else if (!this.f1043f[i].f) {
                    z = false;
                    break;
                } else {
                    i++;
                }
            }
            if (z) {
                C0201e c0201e2 = f1034r;
                if (c0201e2 != null) {
                    c0201e2.f1069p++;
                }
                m14048n();
                return;
            }
        }
        m14065A(this.f1040c);
    }
}
