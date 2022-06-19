package androidx.constraintlayout.solver;

import androidx.constraintlayout.solver.SolverVariable;
import androidx.constraintlayout.solver.widgets.ConstraintAnchor;
import androidx.constraintlayout.solver.widgets.ConstraintWidget;
import java.util.Arrays;
import java.util.HashMap;
/* renamed from: androidx.constraintlayout.solver.d */
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/solver/d.class */
public class C0458d {

    /* renamed from: a */
    public static boolean f2014a = false;

    /* renamed from: b */
    public static boolean f2015b = true;

    /* renamed from: c */
    public static boolean f2016c = true;

    /* renamed from: d */
    public static boolean f2017d = true;

    /* renamed from: e */
    public static boolean f2018e = false;

    /* renamed from: f */
    private static int f2019f = 1000;

    /* renamed from: g */
    public static C0461e f2020g;

    /* renamed from: h */
    public static long f2021h;

    /* renamed from: i */
    public static long f2022i;

    /* renamed from: m */
    private AbstractC0459a f2026m;

    /* renamed from: p */
    C0455b[] f2029p;

    /* renamed from: w */
    final C0457c f2036w;

    /* renamed from: z */
    private AbstractC0459a f2039z;

    /* renamed from: j */
    public boolean f2023j = false;

    /* renamed from: k */
    int f2024k = 0;

    /* renamed from: l */
    private HashMap<String, SolverVariable> f2025l = null;

    /* renamed from: n */
    private int f2027n = 32;

    /* renamed from: o */
    private int f2028o = 32;

    /* renamed from: q */
    public boolean f2030q = false;

    /* renamed from: r */
    public boolean f2031r = false;

    /* renamed from: s */
    private boolean[] f2032s = new boolean[32];

    /* renamed from: t */
    int f2033t = 1;

    /* renamed from: u */
    int f2034u = 0;

    /* renamed from: v */
    private int f2035v = 32;

    /* renamed from: x */
    private SolverVariable[] f2037x = new SolverVariable[f2019f];

    /* renamed from: y */
    private int f2038y = 0;

    /* renamed from: androidx.constraintlayout.solver.d$a */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/solver/d$a.class */
    public interface AbstractC0459a {
        /* renamed from: a */
        void mo34100a(SolverVariable solverVariable);

        /* renamed from: b */
        SolverVariable mo34099b(C0458d c0458d, boolean[] zArr);

        /* renamed from: c */
        void mo34108c(AbstractC0459a abstractC0459a);

        void clear();

        SolverVariable getKey();

        boolean isEmpty();
    }

    /* renamed from: androidx.constraintlayout.solver.d$b */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/solver/d$b.class */
    public class C0460b extends C0455b {
        public C0460b(C0457c c0457c) {
            C0458d.this = r7;
            this.f2008e = new C0467i(this, c0457c);
        }
    }

    public C0458d() {
        this.f2029p = null;
        this.f2029p = new C0455b[32];
        m34136C();
        C0457c c0457c = new C0457c();
        this.f2036w = c0457c;
        this.f2026m = new C0464h(c0457c);
        if (f2018e) {
            this.f2039z = new C0460b(c0457c);
        } else {
            this.f2039z = new C0455b(c0457c);
        }
    }

    /* renamed from: B */
    private final int m34137B(AbstractC0459a abstractC0459a, boolean z) {
        int i;
        int i2;
        float f;
        if (f2020g == null) {
            for (int i3 = 0; i3 < this.f2033t; i3++) {
                this.f2032s[i3] = false;
            }
            boolean z2 = false;
            int i4 = 0;
            while (!z2) {
                if (f2020g != null) {
                    throw null;
                }
                int i5 = i4 + 1;
                if (i5 >= this.f2033t * 2) {
                    return i5;
                }
                if (abstractC0459a.getKey() != null) {
                    this.f2032s[abstractC0459a.getKey().f1971d] = true;
                }
                SolverVariable mo34099b = abstractC0459a.mo34099b(this, this.f2032s);
                if (mo34099b != null) {
                    boolean[] zArr = this.f2032s;
                    int i6 = mo34099b.f1971d;
                    if (zArr[i6]) {
                        return i5;
                    }
                    zArr[i6] = true;
                }
                if (mo34099b != null) {
                    float f2 = Float.MAX_VALUE;
                    int i7 = 0;
                    int i8 = -1;
                    while (true) {
                        i = i8;
                        if (i7 >= this.f2034u) {
                            break;
                        }
                        C0455b c0455b = this.f2029p[i7];
                        if (c0455b.f2004a.f1978k == SolverVariable.Type.UNRESTRICTED) {
                            f = f2;
                            i2 = i;
                        } else if (c0455b.f2009f) {
                            f = f2;
                            i2 = i;
                        } else {
                            f = f2;
                            i2 = i;
                            if (c0455b.m34145t(mo34099b)) {
                                float mo34087f = c0455b.f2008e.mo34087f(mo34099b);
                                f = f2;
                                i2 = i;
                                if (mo34087f < 0.0f) {
                                    float f3 = (-c0455b.f2005b) / mo34087f;
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
                        C0455b c0455b2 = this.f2029p[i];
                        c0455b2.f2004a.f1972e = -1;
                        if (f2020g != null) {
                            throw null;
                        }
                        c0455b2.m34141x(mo34099b);
                        SolverVariable solverVariable = c0455b2.f2004a;
                        solverVariable.f1972e = i;
                        solverVariable.m34165g(this, c0455b2);
                        i4 = i5;
                    } else {
                        continue;
                    }
                } else {
                    z2 = true;
                    i4 = i5;
                }
            }
            return i4;
        }
        throw null;
    }

    /* renamed from: C */
    private void m34136C() {
        if (!f2018e) {
            for (int i = 0; i < this.f2034u; i++) {
                C0455b c0455b = this.f2029p[i];
                if (c0455b != null) {
                    this.f2036w.f2011b.mo34106b(c0455b);
                }
                this.f2029p[i] = null;
            }
            return;
        }
        for (int i2 = 0; i2 < this.f2034u; i2++) {
            C0455b c0455b2 = this.f2029p[i2];
            if (c0455b2 != null) {
                this.f2036w.f2010a.mo34106b(c0455b2);
            }
            this.f2029p[i2] = null;
        }
    }

    /* renamed from: a */
    private SolverVariable m34134a(SolverVariable.Type type, String str) {
        SolverVariable solverVariable;
        SolverVariable mo34107a = this.f2036w.f2012c.mo34107a();
        if (mo34107a == null) {
            SolverVariable solverVariable2 = new SolverVariable(type, str);
            solverVariable2.m34166f(type, str);
            solverVariable = solverVariable2;
        } else {
            mo34107a.m34168d();
            mo34107a.m34166f(type, str);
            solverVariable = mo34107a;
        }
        int i = this.f2038y;
        int i2 = f2019f;
        if (i >= i2) {
            int i3 = i2 * 2;
            f2019f = i3;
            this.f2037x = (SolverVariable[]) Arrays.copyOf(this.f2037x, i3);
        }
        SolverVariable[] solverVariableArr = this.f2037x;
        int i4 = this.f2038y;
        this.f2038y = i4 + 1;
        solverVariableArr[i4] = solverVariable;
        return solverVariable;
    }

    /* renamed from: l */
    private final void m34123l(C0455b c0455b) {
        int i;
        if (!f2016c || !c0455b.f2009f) {
            C0455b[] c0455bArr = this.f2029p;
            int i2 = this.f2034u;
            c0455bArr[i2] = c0455b;
            SolverVariable solverVariable = c0455b.f2004a;
            solverVariable.f1972e = i2;
            this.f2034u = i2 + 1;
            solverVariable.m34165g(this, c0455b);
        } else {
            c0455b.f2004a.m34167e(this, c0455b.f2005b);
        }
        if (!f2016c || !this.f2023j) {
            return;
        }
        int i3 = 0;
        while (true) {
            int i4 = i3;
            if (i4 >= this.f2034u) {
                this.f2023j = false;
                return;
            }
            if (this.f2029p[i4] == null) {
                System.out.println("WTF");
            }
            C0455b[] c0455bArr2 = this.f2029p;
            int i5 = i4;
            if (c0455bArr2[i4] != null) {
                i5 = i4;
                if (c0455bArr2[i4].f2009f) {
                    C0455b c0455b2 = c0455bArr2[i4];
                    c0455b2.f2004a.m34167e(this, c0455b2.f2005b);
                    if (f2018e) {
                        this.f2036w.f2010a.mo34106b(c0455b2);
                    } else {
                        this.f2036w.f2011b.mo34106b(c0455b2);
                    }
                    this.f2029p[i4] = null;
                    int i6 = i4 + 1;
                    int i7 = i6;
                    while (true) {
                        i = this.f2034u;
                        if (i6 >= i) {
                            break;
                        }
                        C0455b[] c0455bArr3 = this.f2029p;
                        int i8 = i6 - 1;
                        c0455bArr3[i8] = c0455bArr3[i6];
                        if (c0455bArr3[i8].f2004a.f1972e == i6) {
                            c0455bArr3[i8].f2004a.f1972e = i8;
                        }
                        i7 = i6;
                        i6++;
                    }
                    if (i7 < i) {
                        this.f2029p[i7] = null;
                    }
                    this.f2034u = i - 1;
                    i5 = i4 - 1;
                }
            }
            i3 = i5 + 1;
        }
    }

    /* renamed from: n */
    private void m34121n() {
        for (int i = 0; i < this.f2034u; i++) {
            C0455b c0455b = this.f2029p[i];
            c0455b.f2004a.f1974g = c0455b.f2005b;
        }
    }

    /* renamed from: s */
    public static C0455b m34116s(C0458d c0458d, SolverVariable solverVariable, SolverVariable solverVariable2, float f) {
        return c0458d.m34117r().m34155j(solverVariable, solverVariable2, f);
    }

    /* renamed from: u */
    private int m34114u(AbstractC0459a abstractC0459a) {
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
        int i9;
        int i10;
        int i11;
        float f3;
        int i12;
        int i13 = 0;
        while (true) {
            if (i13 >= this.f2034u) {
                z = false;
                break;
            }
            C0455b[] c0455bArr = this.f2029p;
            if (c0455bArr[i13].f2004a.f1978k != SolverVariable.Type.UNRESTRICTED && c0455bArr[i13].f2005b < 0.0f) {
                z = true;
                break;
            }
            i13++;
        }
        if (z) {
            boolean z2 = false;
            i = 0;
            while (!z2) {
                if (f2020g != null) {
                    throw null;
                }
                int i14 = i + 1;
                float f4 = Float.MAX_VALUE;
                int i15 = 0;
                int i16 = -1;
                int i17 = -1;
                int i18 = 0;
                while (true) {
                    int i19 = i18;
                    if (i15 >= this.f2034u) {
                        break;
                    }
                    C0455b c0455b = this.f2029p[i15];
                    if (c0455b.f2004a.f1978k == SolverVariable.Type.UNRESTRICTED) {
                        f = f4;
                        i4 = i16;
                        i3 = i17;
                        i2 = i19;
                    } else if (c0455b.f2009f) {
                        f = f4;
                        i4 = i16;
                        i3 = i17;
                        i2 = i19;
                    } else {
                        f = f4;
                        i4 = i16;
                        i3 = i17;
                        i2 = i19;
                        if (c0455b.f2005b < 0.0f) {
                            if (f2017d) {
                                int mo34092a = c0455b.f2008e.mo34092a();
                                int i20 = 0;
                                int i21 = i19;
                                int i22 = i17;
                                while (true) {
                                    f = f4;
                                    i4 = i16;
                                    i3 = i22;
                                    i2 = i21;
                                    if (i20 < mo34092a) {
                                        SolverVariable mo34091b = c0455b.f2008e.mo34091b(i20);
                                        float mo34087f = c0455b.f2008e.mo34087f(mo34091b);
                                        if (mo34087f <= 0.0f) {
                                            f3 = f4;
                                            i9 = i16;
                                            i10 = i22;
                                            i11 = i21;
                                        } else {
                                            int i23 = i16;
                                            int i24 = 0;
                                            while (true) {
                                                f3 = f4;
                                                i9 = i23;
                                                i10 = i22;
                                                i11 = i21;
                                                if (i24 < 9) {
                                                    float f5 = mo34091b.f1976i[i24] / mo34087f;
                                                    if (f5 >= f4 || i24 != i21) {
                                                        i12 = i21;
                                                        if (i24 <= i21) {
                                                            i24++;
                                                            i21 = i12;
                                                        }
                                                    }
                                                    i22 = mo34091b.f1971d;
                                                    i12 = i24;
                                                    i23 = i15;
                                                    f4 = f5;
                                                    i24++;
                                                    i21 = i12;
                                                }
                                            }
                                        }
                                        i20++;
                                        f4 = f3;
                                        i16 = i9;
                                        i22 = i10;
                                        i21 = i11;
                                    }
                                }
                            } else {
                                int i25 = 1;
                                while (true) {
                                    f = f4;
                                    i4 = i16;
                                    i3 = i17;
                                    i2 = i19;
                                    if (i25 < this.f2033t) {
                                        SolverVariable solverVariable = this.f2036w.f2013d[i25];
                                        float mo34087f2 = c0455b.f2008e.mo34087f(solverVariable);
                                        if (mo34087f2 <= 0.0f) {
                                            f2 = f4;
                                            i5 = i16;
                                            i7 = i17;
                                            i6 = i19;
                                        } else {
                                            int i26 = i16;
                                            int i27 = 0;
                                            while (true) {
                                                f2 = f4;
                                                i5 = i26;
                                                i7 = i17;
                                                i6 = i19;
                                                if (i27 < 9) {
                                                    float f6 = solverVariable.f1976i[i27] / mo34087f2;
                                                    if (f6 >= f4 || i27 != i19) {
                                                        i8 = i19;
                                                        if (i27 <= i19) {
                                                            i27++;
                                                            i19 = i8;
                                                        }
                                                    }
                                                    i17 = i25;
                                                    i8 = i27;
                                                    i26 = i15;
                                                    f4 = f6;
                                                    i27++;
                                                    i19 = i8;
                                                }
                                            }
                                        }
                                        i25++;
                                        f4 = f2;
                                        i16 = i5;
                                        i17 = i7;
                                        i19 = i6;
                                    }
                                }
                            }
                        }
                    }
                    i15++;
                    f4 = f;
                    i16 = i4;
                    i17 = i3;
                    i18 = i2;
                }
                if (i16 != -1) {
                    C0455b c0455b2 = this.f2029p[i16];
                    c0455b2.f2004a.f1972e = -1;
                    if (f2020g != null) {
                        throw null;
                    }
                    c0455b2.m34141x(this.f2036w.f2013d[i17]);
                    SolverVariable solverVariable2 = c0455b2.f2004a;
                    solverVariable2.f1972e = i16;
                    solverVariable2.m34165g(this, c0455b2);
                } else {
                    z2 = true;
                }
                i = i14;
                if (i14 > this.f2033t / 2) {
                    z2 = true;
                    i = i14;
                }
            }
        } else {
            i = 0;
        }
        return i;
    }

    /* renamed from: w */
    public static C0461e m34112w() {
        return f2020g;
    }

    /* renamed from: y */
    private void m34110y() {
        int i = this.f2027n * 2;
        this.f2027n = i;
        this.f2029p = (C0455b[]) Arrays.copyOf(this.f2029p, i);
        C0457c c0457c = this.f2036w;
        c0457c.f2013d = (SolverVariable[]) Arrays.copyOf(c0457c.f2013d, this.f2027n);
        int i2 = this.f2027n;
        this.f2032s = new boolean[i2];
        this.f2028o = i2;
        this.f2035v = i2;
        if (f2020g == null) {
            return;
        }
        throw null;
    }

    /* renamed from: A */
    void m34138A(AbstractC0459a abstractC0459a) {
        if (f2020g == null) {
            m34114u(abstractC0459a);
            m34137B(abstractC0459a, false);
            m34121n();
            return;
        }
        throw null;
    }

    /* renamed from: D */
    public void m34135D() {
        C0457c c0457c;
        int i = 0;
        while (true) {
            c0457c = this.f2036w;
            SolverVariable[] solverVariableArr = c0457c.f2013d;
            if (i >= solverVariableArr.length) {
                break;
            }
            SolverVariable solverVariable = solverVariableArr[i];
            if (solverVariable != null) {
                solverVariable.m34168d();
            }
            i++;
        }
        c0457c.f2012c.mo34105c(this.f2037x, this.f2038y);
        this.f2038y = 0;
        Arrays.fill(this.f2036w.f2013d, (Object) null);
        HashMap<String, SolverVariable> hashMap = this.f2025l;
        if (hashMap != null) {
            hashMap.clear();
        }
        this.f2024k = 0;
        this.f2026m.clear();
        this.f2033t = 1;
        for (int i2 = 0; i2 < this.f2034u; i2++) {
            C0455b[] c0455bArr = this.f2029p;
            if (c0455bArr[i2] != null) {
                c0455bArr[i2].f2006c = false;
            }
        }
        m34136C();
        this.f2034u = 0;
        if (f2018e) {
            this.f2039z = new C0460b(this.f2036w);
        } else {
            this.f2039z = new C0455b(this.f2036w);
        }
    }

    /* renamed from: b */
    public void m34133b(ConstraintWidget constraintWidget, ConstraintWidget constraintWidget2, float f, int i) {
        ConstraintAnchor.Type type = ConstraintAnchor.Type.LEFT;
        SolverVariable m34118q = m34118q(constraintWidget.mo33769p(type));
        ConstraintAnchor.Type type2 = ConstraintAnchor.Type.TOP;
        SolverVariable m34118q2 = m34118q(constraintWidget.mo33769p(type2));
        ConstraintAnchor.Type type3 = ConstraintAnchor.Type.RIGHT;
        SolverVariable m34118q3 = m34118q(constraintWidget.mo33769p(type3));
        ConstraintAnchor.Type type4 = ConstraintAnchor.Type.BOTTOM;
        SolverVariable m34118q4 = m34118q(constraintWidget.mo33769p(type4));
        SolverVariable m34118q5 = m34118q(constraintWidget2.mo33769p(type));
        SolverVariable m34118q6 = m34118q(constraintWidget2.mo33769p(type2));
        SolverVariable m34118q7 = m34118q(constraintWidget2.mo33769p(type3));
        SolverVariable m34118q8 = m34118q(constraintWidget2.mo33769p(type4));
        C0455b m34117r = m34117r();
        double d = f;
        double sin = Math.sin(d);
        double d2 = i;
        m34117r.m34148q(m34118q2, m34118q4, m34118q6, m34118q8, (float) (sin * d2));
        m34131d(m34117r);
        C0455b m34117r2 = m34117r();
        m34117r2.m34148q(m34118q, m34118q3, m34118q5, m34118q7, (float) (Math.cos(d) * d2));
        m34131d(m34117r2);
    }

    /* renamed from: c */
    public void m34132c(SolverVariable solverVariable, SolverVariable solverVariable2, int i, float f, SolverVariable solverVariable3, SolverVariable solverVariable4, int i2, int i3) {
        C0455b m34117r = m34117r();
        m34117r.m34157h(solverVariable, solverVariable2, i, f, solverVariable3, solverVariable4, i2);
        if (i3 != 8) {
            m34117r.m34161d(this, i3);
        }
        m34131d(m34117r);
    }

    /* JADX WARN: Removed duplicated region for block: B:43:0x0102 A[RETURN] */
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m34131d(androidx.constraintlayout.solver.C0455b r5) {
        /*
            Method dump skipped, instructions count: 271
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.solver.C0458d.m34131d(androidx.constraintlayout.solver.b):void");
    }

    /* renamed from: e */
    public C0455b m34130e(SolverVariable solverVariable, SolverVariable solverVariable2, int i, int i2) {
        if (f2015b && i2 == 8 && solverVariable2.f1975h && solverVariable.f1972e == -1) {
            solverVariable.m34167e(this, solverVariable2.f1974g + i);
            return null;
        }
        C0455b m34117r = m34117r();
        m34117r.m34151n(solverVariable, solverVariable2, i);
        if (i2 != 8) {
            m34117r.m34161d(this, i2);
        }
        m34131d(m34117r);
        return m34117r;
    }

    /* renamed from: f */
    public void m34129f(SolverVariable solverVariable, int i) {
        if (f2015b && solverVariable.f1972e == -1) {
            float f = i;
            solverVariable.m34167e(this, f);
            for (int i2 = 0; i2 < this.f2024k + 1; i2++) {
                SolverVariable solverVariable2 = this.f2036w.f2013d[i2];
                if (solverVariable2 != null && solverVariable2.f1982o && solverVariable2.f1983p == solverVariable.f1971d) {
                    solverVariable2.m34167e(this, solverVariable2.f1984q + f);
                }
            }
            return;
        }
        int i3 = solverVariable.f1972e;
        if (i3 == -1) {
            C0455b m34117r = m34117r();
            m34117r.m34156i(solverVariable, i);
            m34131d(m34117r);
            return;
        }
        C0455b c0455b = this.f2029p[i3];
        if (c0455b.f2009f) {
            c0455b.f2005b = i;
        } else if (c0455b.f2008e.mo34092a() == 0) {
            c0455b.f2009f = true;
            c0455b.f2005b = i;
        } else {
            C0455b m34117r2 = m34117r();
            m34117r2.m34152m(solverVariable, i);
            m34131d(m34117r2);
        }
    }

    /* renamed from: g */
    public void m34128g(SolverVariable solverVariable, SolverVariable solverVariable2, int i, boolean z) {
        C0455b m34117r = m34117r();
        SolverVariable m34115t = m34115t();
        m34115t.f1973f = 0;
        m34117r.m34150o(solverVariable, solverVariable2, m34115t, i);
        m34131d(m34117r);
    }

    /* renamed from: h */
    public void m34127h(SolverVariable solverVariable, SolverVariable solverVariable2, int i, int i2) {
        C0455b m34117r = m34117r();
        SolverVariable m34115t = m34115t();
        m34115t.f1973f = 0;
        m34117r.m34150o(solverVariable, solverVariable2, m34115t, i);
        if (i2 != 8) {
            m34122m(m34117r, (int) (m34117r.f2008e.mo34087f(m34115t) * (-1.0f)), i2);
        }
        m34131d(m34117r);
    }

    /* renamed from: i */
    public void m34126i(SolverVariable solverVariable, SolverVariable solverVariable2, int i, boolean z) {
        C0455b m34117r = m34117r();
        SolverVariable m34115t = m34115t();
        m34115t.f1973f = 0;
        m34117r.m34149p(solverVariable, solverVariable2, m34115t, i);
        m34131d(m34117r);
    }

    /* renamed from: j */
    public void m34125j(SolverVariable solverVariable, SolverVariable solverVariable2, int i, int i2) {
        C0455b m34117r = m34117r();
        SolverVariable m34115t = m34115t();
        m34115t.f1973f = 0;
        m34117r.m34149p(solverVariable, solverVariable2, m34115t, i);
        if (i2 != 8) {
            m34122m(m34117r, (int) (m34117r.f2008e.mo34087f(m34115t) * (-1.0f)), i2);
        }
        m34131d(m34117r);
    }

    /* renamed from: k */
    public void m34124k(SolverVariable solverVariable, SolverVariable solverVariable2, SolverVariable solverVariable3, SolverVariable solverVariable4, float f, int i) {
        C0455b m34117r = m34117r();
        m34117r.m34154k(solverVariable, solverVariable2, solverVariable3, solverVariable4, f);
        if (i != 8) {
            m34117r.m34161d(this, i);
        }
        m34131d(m34117r);
    }

    /* renamed from: m */
    void m34122m(C0455b c0455b, int i, int i2) {
        c0455b.m34160e(m34120o(i2, null), i);
    }

    /* renamed from: o */
    public SolverVariable m34120o(int i, String str) {
        if (f2020g == null) {
            if (this.f2033t + 1 >= this.f2028o) {
                m34110y();
            }
            SolverVariable m34134a = m34134a(SolverVariable.Type.ERROR, str);
            int i2 = this.f2024k + 1;
            this.f2024k = i2;
            this.f2033t++;
            m34134a.f1971d = i2;
            m34134a.f1973f = i;
            this.f2036w.f2013d[i2] = m34134a;
            this.f2026m.mo34100a(m34134a);
            return m34134a;
        }
        throw null;
    }

    /* renamed from: p */
    public SolverVariable m34119p() {
        if (f2020g == null) {
            if (this.f2033t + 1 >= this.f2028o) {
                m34110y();
            }
            SolverVariable m34134a = m34134a(SolverVariable.Type.SLACK, null);
            int i = this.f2024k + 1;
            this.f2024k = i;
            this.f2033t++;
            m34134a.f1971d = i;
            this.f2036w.f2013d[i] = m34134a;
            return m34134a;
        }
        throw null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x005e, code lost:
        if (r4.f2036w.f2013d[r0] == null) goto L19;
     */
    /* renamed from: q */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public androidx.constraintlayout.solver.SolverVariable m34118q(java.lang.Object r5) {
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
            int r0 = r0.f2033t
            r1 = 1
            int r0 = r0 + r1
            r1 = r4
            int r1 = r1.f2028o
            if (r0 < r1) goto L19
            r0 = r4
            r0.m34110y()
        L19:
            r0 = r5
            boolean r0 = r0 instanceof androidx.constraintlayout.solver.widgets.ConstraintAnchor
            if (r0 == 0) goto L9d
            r0 = r5
            androidx.constraintlayout.solver.widgets.ConstraintAnchor r0 = (androidx.constraintlayout.solver.widgets.ConstraintAnchor) r0
            r7 = r0
            r0 = r7
            androidx.constraintlayout.solver.SolverVariable r0 = r0.m34066i()
            r6 = r0
            r0 = r6
            r5 = r0
            r0 = r6
            if (r0 != 0) goto L3d
            r0 = r7
            r1 = r4
            androidx.constraintlayout.solver.c r1 = r1.f2036w
            r0.m34056s(r1)
            r0 = r7
            androidx.constraintlayout.solver.SolverVariable r0 = r0.m34066i()
            r5 = r0
        L3d:
            r0 = r5
            int r0 = r0.f1971d
            r8 = r0
            r0 = r8
            r1 = -1
            if (r0 == r1) goto L61
            r0 = r8
            r1 = r4
            int r1 = r1.f2024k
            if (r0 > r1) goto L61
            r0 = r5
            r6 = r0
            r0 = r4
            androidx.constraintlayout.solver.c r0 = r0.f2036w
            androidx.constraintlayout.solver.SolverVariable[] r0 = r0.f2013d
            r1 = r8
            r0 = r0[r1]
            if (r0 != 0) goto L9d
        L61:
            r0 = r8
            r1 = -1
            if (r0 == r1) goto L6b
            r0 = r5
            r0.m34168d()
        L6b:
            r0 = r4
            int r0 = r0.f2024k
            r1 = 1
            int r0 = r0 + r1
            r8 = r0
            r0 = r4
            r1 = r8
            r0.f2024k = r1
            r0 = r4
            r1 = r4
            int r1 = r1.f2033t
            r2 = 1
            int r1 = r1 + r2
            r0.f2033t = r1
            r0 = r5
            r1 = r8
            r0.f1971d = r1
            r0 = r5
            androidx.constraintlayout.solver.SolverVariable$Type r1 = androidx.constraintlayout.solver.SolverVariable.Type.UNRESTRICTED
            r0.f1978k = r1
            r0 = r4
            androidx.constraintlayout.solver.c r0 = r0.f2036w
            androidx.constraintlayout.solver.SolverVariable[] r0 = r0.f2013d
            r1 = r8
            r2 = r5
            r0[r1] = r2
            r0 = r5
            r6 = r0
        L9d:
            r0 = r6
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.solver.C0458d.m34118q(java.lang.Object):androidx.constraintlayout.solver.SolverVariable");
    }

    /* renamed from: r */
    public C0455b m34117r() {
        C0460b c0460b;
        if (f2018e) {
            c0460b = this.f2036w.f2010a.mo34107a();
            if (c0460b == null) {
                c0460b = new C0460b(this.f2036w);
                f2022i++;
            } else {
                c0460b.m34140y();
            }
        } else {
            c0460b = this.f2036w.f2011b.mo34107a();
            if (c0460b == null) {
                c0460b = new C0455b(this.f2036w);
                f2021h++;
            } else {
                c0460b.m34140y();
            }
        }
        SolverVariable.m34170b();
        return c0460b;
    }

    /* renamed from: t */
    public SolverVariable m34115t() {
        if (f2020g == null) {
            if (this.f2033t + 1 >= this.f2028o) {
                m34110y();
            }
            SolverVariable m34134a = m34134a(SolverVariable.Type.SLACK, null);
            int i = this.f2024k + 1;
            this.f2024k = i;
            this.f2033t++;
            m34134a.f1971d = i;
            this.f2036w.f2013d[i] = m34134a;
            return m34134a;
        }
        throw null;
    }

    /* renamed from: v */
    public C0457c m34113v() {
        return this.f2036w;
    }

    /* renamed from: x */
    public int m34111x(Object obj) {
        SolverVariable m34066i = ((ConstraintAnchor) obj).m34066i();
        if (m34066i != null) {
            return (int) (m34066i.f1974g + 0.5f);
        }
        return 0;
    }

    /* renamed from: z */
    public void m34109z() {
        boolean z;
        if (f2020g == null) {
            if (this.f2026m.isEmpty()) {
                m34121n();
                return;
            } else if (!this.f2030q && !this.f2031r) {
                m34138A(this.f2026m);
                return;
            } else if (f2020g != null) {
                throw null;
            } else {
                int i = 0;
                while (true) {
                    if (i >= this.f2034u) {
                        z = true;
                        break;
                    } else if (!this.f2029p[i].f2009f) {
                        z = false;
                        break;
                    } else {
                        i++;
                    }
                }
                if (!z) {
                    m34138A(this.f2026m);
                    return;
                } else if (f2020g != null) {
                    throw null;
                } else {
                    m34121n();
                    return;
                }
            }
        }
        throw null;
    }
}
