package androidx.constraintlayout.solver;

import androidx.constraintlayout.solver.C0458d;
import androidx.constraintlayout.solver.SolverVariable;
import java.util.ArrayList;
/* renamed from: androidx.constraintlayout.solver.b */
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/solver/b.class */
public class C0455b implements C0458d.AbstractC0459a {

    /* renamed from: e */
    public AbstractC0456a f2008e;

    /* renamed from: a */
    SolverVariable f2004a = null;

    /* renamed from: b */
    float f2005b = 0.0f;

    /* renamed from: c */
    boolean f2006c = false;

    /* renamed from: d */
    ArrayList<SolverVariable> f2007d = new ArrayList<>();

    /* renamed from: f */
    boolean f2009f = false;

    /* renamed from: androidx.constraintlayout.solver.b$a */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/solver/b$a.class */
    public interface AbstractC0456a {
        /* renamed from: a */
        int mo34092a();

        /* renamed from: b */
        SolverVariable mo34091b(int i);

        /* renamed from: c */
        void mo34090c();

        void clear();

        /* renamed from: d */
        float mo34089d(int i);

        /* renamed from: e */
        void mo34088e(SolverVariable solverVariable, float f, boolean z);

        /* renamed from: f */
        float mo34087f(SolverVariable solverVariable);

        /* renamed from: g */
        boolean mo34086g(SolverVariable solverVariable);

        /* renamed from: h */
        float mo34085h(C0455b c0455b, boolean z);

        /* renamed from: i */
        void mo34084i(SolverVariable solverVariable, float f);

        /* renamed from: j */
        float mo34083j(SolverVariable solverVariable, boolean z);

        /* renamed from: k */
        void mo34082k(float f);
    }

    public C0455b() {
    }

    public C0455b(C0457c c0457c) {
        this.f2008e = new C0454a(this, c0457c);
    }

    /* renamed from: u */
    private boolean m34144u(SolverVariable solverVariable, C0458d c0458d) {
        boolean z = true;
        if (solverVariable.f1981n > 1) {
            z = false;
        }
        return z;
    }

    /* renamed from: w */
    private SolverVariable m34142w(boolean[] zArr, SolverVariable solverVariable) {
        int mo34092a = this.f2008e.mo34092a();
        SolverVariable solverVariable2 = null;
        int i = 0;
        float f = 0.0f;
        while (true) {
            float f2 = f;
            if (i < mo34092a) {
                float mo34089d = this.f2008e.mo34089d(i);
                SolverVariable solverVariable3 = solverVariable2;
                float f3 = f2;
                if (mo34089d < 0.0f) {
                    SolverVariable mo34091b = this.f2008e.mo34091b(i);
                    if (zArr != null) {
                        solverVariable3 = solverVariable2;
                        f3 = f2;
                        if (zArr[mo34091b.f1971d]) {
                        }
                    }
                    solverVariable3 = solverVariable2;
                    f3 = f2;
                    if (mo34091b != solverVariable) {
                        SolverVariable.Type type = mo34091b.f1978k;
                        if (type != SolverVariable.Type.SLACK) {
                            solverVariable3 = solverVariable2;
                            f3 = f2;
                            if (type != SolverVariable.Type.ERROR) {
                            }
                        }
                        solverVariable3 = solverVariable2;
                        f3 = f2;
                        if (mo34089d < f2) {
                            f3 = mo34089d;
                            solverVariable3 = mo34091b;
                        }
                    }
                }
                i++;
                solverVariable2 = solverVariable3;
                f = f3;
            } else {
                return solverVariable2;
            }
        }
    }

    /* renamed from: A */
    public void m34164A(C0458d c0458d, SolverVariable solverVariable, boolean z) {
        if (!solverVariable.f1975h) {
            return;
        }
        this.f2005b += solverVariable.f1974g * this.f2008e.mo34087f(solverVariable);
        this.f2008e.mo34083j(solverVariable, z);
        if (z) {
            solverVariable.m34169c(this);
        }
        if (!C0458d.f2016c || this.f2008e.mo34092a() != 0) {
            return;
        }
        this.f2009f = true;
        c0458d.f2023j = true;
    }

    /* renamed from: B */
    public void mo34104B(C0458d c0458d, C0455b c0455b, boolean z) {
        this.f2005b += c0455b.f2005b * this.f2008e.mo34085h(c0455b, z);
        if (z) {
            c0455b.f2004a.m34169c(this);
        }
        if (!C0458d.f2016c || this.f2004a == null || this.f2008e.mo34092a() != 0) {
            return;
        }
        this.f2009f = true;
        c0458d.f2023j = true;
    }

    /* renamed from: C */
    public void m34163C(C0458d c0458d, SolverVariable solverVariable, boolean z) {
        if (!solverVariable.f1982o) {
            return;
        }
        float mo34087f = this.f2008e.mo34087f(solverVariable);
        this.f2005b += solverVariable.f1984q * mo34087f;
        this.f2008e.mo34083j(solverVariable, z);
        if (z) {
            solverVariable.m34169c(this);
        }
        this.f2008e.mo34088e(c0458d.f2036w.f2013d[solverVariable.f1983p], mo34087f, z);
        if (!C0458d.f2016c || this.f2008e.mo34092a() != 0) {
            return;
        }
        this.f2009f = true;
        c0458d.f2023j = true;
    }

    /* renamed from: D */
    public void m34162D(C0458d c0458d) {
        if (c0458d.f2029p.length == 0) {
            return;
        }
        boolean z = false;
        while (!z) {
            int mo34092a = this.f2008e.mo34092a();
            for (int i = 0; i < mo34092a; i++) {
                SolverVariable mo34091b = this.f2008e.mo34091b(i);
                if (mo34091b.f1972e != -1 || mo34091b.f1975h || mo34091b.f1982o) {
                    this.f2007d.add(mo34091b);
                }
            }
            int size = this.f2007d.size();
            if (size > 0) {
                for (int i2 = 0; i2 < size; i2++) {
                    SolverVariable solverVariable = this.f2007d.get(i2);
                    if (solverVariable.f1975h) {
                        m34164A(c0458d, solverVariable, true);
                    } else if (solverVariable.f1982o) {
                        m34163C(c0458d, solverVariable, true);
                    } else {
                        mo34104B(c0458d, c0458d.f2029p[solverVariable.f1972e], true);
                    }
                }
                this.f2007d.clear();
            } else {
                z = true;
            }
        }
        if (!C0458d.f2016c || this.f2004a == null || this.f2008e.mo34092a() != 0) {
            return;
        }
        this.f2009f = true;
        c0458d.f2023j = true;
    }

    @Override // androidx.constraintlayout.solver.C0458d.AbstractC0459a
    /* renamed from: a */
    public void mo34100a(SolverVariable solverVariable) {
        int i = solverVariable.f1973f;
        float f = 1.0f;
        if (i != 1) {
            if (i == 2) {
                f = 1000.0f;
            } else if (i == 3) {
                f = 1000000.0f;
            } else if (i == 4) {
                f = 1.0E9f;
            } else if (i == 5) {
                f = 1.0E12f;
            }
        }
        this.f2008e.mo34084i(solverVariable, f);
    }

    @Override // androidx.constraintlayout.solver.C0458d.AbstractC0459a
    /* renamed from: b */
    public SolverVariable mo34099b(C0458d c0458d, boolean[] zArr) {
        return m34142w(zArr, null);
    }

    @Override // androidx.constraintlayout.solver.C0458d.AbstractC0459a
    /* renamed from: c */
    public void mo34108c(C0458d.AbstractC0459a abstractC0459a) {
        if (abstractC0459a instanceof C0455b) {
            C0455b c0455b = (C0455b) abstractC0459a;
            this.f2004a = null;
            this.f2008e.clear();
            for (int i = 0; i < c0455b.f2008e.mo34092a(); i++) {
                this.f2008e.mo34088e(c0455b.f2008e.mo34091b(i), c0455b.f2008e.mo34089d(i), true);
            }
        }
    }

    @Override // androidx.constraintlayout.solver.C0458d.AbstractC0459a
    public void clear() {
        this.f2008e.clear();
        this.f2004a = null;
        this.f2005b = 0.0f;
    }

    /* renamed from: d */
    public C0455b m34161d(C0458d c0458d, int i) {
        this.f2008e.mo34084i(c0458d.m34120o(i, "ep"), 1.0f);
        this.f2008e.mo34084i(c0458d.m34120o(i, "em"), -1.0f);
        return this;
    }

    /* renamed from: e */
    public C0455b m34160e(SolverVariable solverVariable, int i) {
        this.f2008e.mo34084i(solverVariable, i);
        return this;
    }

    /* renamed from: f */
    public boolean m34159f(C0458d c0458d) {
        boolean z;
        SolverVariable m34158g = m34158g(c0458d);
        if (m34158g == null) {
            z = true;
        } else {
            m34141x(m34158g);
            z = false;
        }
        if (this.f2008e.mo34092a() == 0) {
            this.f2009f = true;
        }
        return z;
    }

    /* renamed from: g */
    SolverVariable m34158g(C0458d c0458d) {
        float f;
        float f2;
        boolean z;
        SolverVariable solverVariable;
        SolverVariable solverVariable2;
        boolean z2;
        boolean m34144u;
        int mo34092a = this.f2008e.mo34092a();
        SolverVariable solverVariable3 = null;
        SolverVariable solverVariable4 = null;
        int i = 0;
        boolean z3 = false;
        boolean z4 = false;
        float f3 = 0.0f;
        float f4 = 0.0f;
        while (true) {
            float f5 = f4;
            if (i >= mo34092a) {
                break;
            }
            float mo34089d = this.f2008e.mo34089d(i);
            SolverVariable mo34091b = this.f2008e.mo34091b(i);
            if (mo34091b.f1978k == SolverVariable.Type.UNRESTRICTED) {
                if (solverVariable3 == null) {
                    z2 = m34144u(mo34091b, c0458d);
                } else if (f3 > mo34089d) {
                    z2 = m34144u(mo34091b, c0458d);
                } else {
                    solverVariable2 = solverVariable3;
                    solverVariable = solverVariable4;
                    z2 = z3;
                    z = z4;
                    f2 = f3;
                    f = f5;
                    if (!z3) {
                        solverVariable2 = solverVariable3;
                        solverVariable = solverVariable4;
                        z2 = z3;
                        z = z4;
                        f2 = f3;
                        f = f5;
                        if (m34144u(mo34091b, c0458d)) {
                            z2 = true;
                            solverVariable2 = mo34091b;
                            solverVariable = solverVariable4;
                            z = z4;
                            f2 = mo34089d;
                            f = f5;
                        }
                    }
                }
                solverVariable2 = mo34091b;
                solverVariable = solverVariable4;
                z = z4;
                f2 = mo34089d;
                f = f5;
            } else {
                solverVariable2 = solverVariable3;
                solverVariable = solverVariable4;
                z2 = z3;
                z = z4;
                f2 = f3;
                f = f5;
                if (solverVariable3 == null) {
                    solverVariable2 = solverVariable3;
                    solverVariable = solverVariable4;
                    z2 = z3;
                    z = z4;
                    f2 = f3;
                    f = f5;
                    if (mo34089d < 0.0f) {
                        if (solverVariable4 == null) {
                            m34144u = m34144u(mo34091b, c0458d);
                        } else if (f5 > mo34089d) {
                            m34144u = m34144u(mo34091b, c0458d);
                        } else {
                            solverVariable2 = solverVariable3;
                            solverVariable = solverVariable4;
                            z2 = z3;
                            z = z4;
                            f2 = f3;
                            f = f5;
                            if (!z4) {
                                solverVariable2 = solverVariable3;
                                solverVariable = solverVariable4;
                                z2 = z3;
                                z = z4;
                                f2 = f3;
                                f = f5;
                                if (m34144u(mo34091b, c0458d)) {
                                    z = true;
                                    f = mo34089d;
                                    f2 = f3;
                                    z2 = z3;
                                    solverVariable = mo34091b;
                                    solverVariable2 = solverVariable3;
                                }
                            }
                        }
                        z = m34144u;
                        solverVariable2 = solverVariable3;
                        solverVariable = mo34091b;
                        z2 = z3;
                        f2 = f3;
                        f = mo34089d;
                    }
                }
            }
            i++;
            solverVariable3 = solverVariable2;
            solverVariable4 = solverVariable;
            z3 = z2;
            z4 = z;
            f3 = f2;
            f4 = f;
        }
        return solverVariable3 != null ? solverVariable3 : solverVariable4;
    }

    @Override // androidx.constraintlayout.solver.C0458d.AbstractC0459a
    public SolverVariable getKey() {
        return this.f2004a;
    }

    /* renamed from: h */
    public C0455b m34157h(SolverVariable solverVariable, SolverVariable solverVariable2, int i, float f, SolverVariable solverVariable3, SolverVariable solverVariable4, int i2) {
        if (solverVariable2 == solverVariable3) {
            this.f2008e.mo34084i(solverVariable, 1.0f);
            this.f2008e.mo34084i(solverVariable4, 1.0f);
            this.f2008e.mo34084i(solverVariable2, -2.0f);
            return this;
        }
        if (f == 0.5f) {
            this.f2008e.mo34084i(solverVariable, 1.0f);
            this.f2008e.mo34084i(solverVariable2, -1.0f);
            this.f2008e.mo34084i(solverVariable3, -1.0f);
            this.f2008e.mo34084i(solverVariable4, 1.0f);
            if (i > 0 || i2 > 0) {
                this.f2005b = (-i) + i2;
            }
        } else if (f <= 0.0f) {
            this.f2008e.mo34084i(solverVariable, -1.0f);
            this.f2008e.mo34084i(solverVariable2, 1.0f);
            this.f2005b = i;
        } else if (f >= 1.0f) {
            this.f2008e.mo34084i(solverVariable4, -1.0f);
            this.f2008e.mo34084i(solverVariable3, 1.0f);
            this.f2005b = -i2;
        } else {
            float f2 = 1.0f - f;
            this.f2008e.mo34084i(solverVariable, f2 * 1.0f);
            this.f2008e.mo34084i(solverVariable2, f2 * (-1.0f));
            this.f2008e.mo34084i(solverVariable3, (-1.0f) * f);
            this.f2008e.mo34084i(solverVariable4, 1.0f * f);
            if (i > 0 || i2 > 0) {
                this.f2005b = ((-i) * f2) + (i2 * f);
            }
        }
        return this;
    }

    /* renamed from: i */
    public C0455b m34156i(SolverVariable solverVariable, int i) {
        this.f2004a = solverVariable;
        float f = i;
        solverVariable.f1974g = f;
        this.f2005b = f;
        this.f2009f = true;
        return this;
    }

    @Override // androidx.constraintlayout.solver.C0458d.AbstractC0459a
    public boolean isEmpty() {
        return this.f2004a == null && this.f2005b == 0.0f && this.f2008e.mo34092a() == 0;
    }

    /* renamed from: j */
    public C0455b m34155j(SolverVariable solverVariable, SolverVariable solverVariable2, float f) {
        this.f2008e.mo34084i(solverVariable, -1.0f);
        this.f2008e.mo34084i(solverVariable2, f);
        return this;
    }

    /* renamed from: k */
    public C0455b m34154k(SolverVariable solverVariable, SolverVariable solverVariable2, SolverVariable solverVariable3, SolverVariable solverVariable4, float f) {
        this.f2008e.mo34084i(solverVariable, -1.0f);
        this.f2008e.mo34084i(solverVariable2, 1.0f);
        this.f2008e.mo34084i(solverVariable3, f);
        this.f2008e.mo34084i(solverVariable4, -f);
        return this;
    }

    /* renamed from: l */
    public C0455b m34153l(float f, float f2, float f3, SolverVariable solverVariable, SolverVariable solverVariable2, SolverVariable solverVariable3, SolverVariable solverVariable4) {
        this.f2005b = 0.0f;
        if (f2 == 0.0f || f == f3) {
            this.f2008e.mo34084i(solverVariable, 1.0f);
            this.f2008e.mo34084i(solverVariable2, -1.0f);
            this.f2008e.mo34084i(solverVariable4, 1.0f);
            this.f2008e.mo34084i(solverVariable3, -1.0f);
        } else if (f == 0.0f) {
            this.f2008e.mo34084i(solverVariable, 1.0f);
            this.f2008e.mo34084i(solverVariable2, -1.0f);
        } else if (f3 == 0.0f) {
            this.f2008e.mo34084i(solverVariable3, 1.0f);
            this.f2008e.mo34084i(solverVariable4, -1.0f);
        } else {
            float f4 = (f / f2) / (f3 / f2);
            this.f2008e.mo34084i(solverVariable, 1.0f);
            this.f2008e.mo34084i(solverVariable2, -1.0f);
            this.f2008e.mo34084i(solverVariable4, f4);
            this.f2008e.mo34084i(solverVariable3, -f4);
        }
        return this;
    }

    /* renamed from: m */
    public C0455b m34152m(SolverVariable solverVariable, int i) {
        if (i < 0) {
            this.f2005b = i * (-1);
            this.f2008e.mo34084i(solverVariable, 1.0f);
        } else {
            this.f2005b = i;
            this.f2008e.mo34084i(solverVariable, -1.0f);
        }
        return this;
    }

    /* renamed from: n */
    public C0455b m34151n(SolverVariable solverVariable, SolverVariable solverVariable2, int i) {
        boolean z = false;
        if (i != 0) {
            z = false;
            int i2 = i;
            if (i < 0) {
                i2 = i * (-1);
                z = true;
            }
            this.f2005b = i2;
        }
        if (!z) {
            this.f2008e.mo34084i(solverVariable, -1.0f);
            this.f2008e.mo34084i(solverVariable2, 1.0f);
        } else {
            this.f2008e.mo34084i(solverVariable, 1.0f);
            this.f2008e.mo34084i(solverVariable2, -1.0f);
        }
        return this;
    }

    /* renamed from: o */
    public C0455b m34150o(SolverVariable solverVariable, SolverVariable solverVariable2, SolverVariable solverVariable3, int i) {
        boolean z = false;
        if (i != 0) {
            z = false;
            int i2 = i;
            if (i < 0) {
                i2 = i * (-1);
                z = true;
            }
            this.f2005b = i2;
        }
        if (!z) {
            this.f2008e.mo34084i(solverVariable, -1.0f);
            this.f2008e.mo34084i(solverVariable2, 1.0f);
            this.f2008e.mo34084i(solverVariable3, 1.0f);
        } else {
            this.f2008e.mo34084i(solverVariable, 1.0f);
            this.f2008e.mo34084i(solverVariable2, -1.0f);
            this.f2008e.mo34084i(solverVariable3, -1.0f);
        }
        return this;
    }

    /* renamed from: p */
    public C0455b m34149p(SolverVariable solverVariable, SolverVariable solverVariable2, SolverVariable solverVariable3, int i) {
        boolean z = false;
        if (i != 0) {
            z = false;
            int i2 = i;
            if (i < 0) {
                i2 = i * (-1);
                z = true;
            }
            this.f2005b = i2;
        }
        if (!z) {
            this.f2008e.mo34084i(solverVariable, -1.0f);
            this.f2008e.mo34084i(solverVariable2, 1.0f);
            this.f2008e.mo34084i(solverVariable3, -1.0f);
        } else {
            this.f2008e.mo34084i(solverVariable, 1.0f);
            this.f2008e.mo34084i(solverVariable2, -1.0f);
            this.f2008e.mo34084i(solverVariable3, 1.0f);
        }
        return this;
    }

    /* renamed from: q */
    public C0455b m34148q(SolverVariable solverVariable, SolverVariable solverVariable2, SolverVariable solverVariable3, SolverVariable solverVariable4, float f) {
        this.f2008e.mo34084i(solverVariable3, 0.5f);
        this.f2008e.mo34084i(solverVariable4, 0.5f);
        this.f2008e.mo34084i(solverVariable, -0.5f);
        this.f2008e.mo34084i(solverVariable2, -0.5f);
        this.f2005b = -f;
        return this;
    }

    /* renamed from: r */
    public void m34147r() {
        float f = this.f2005b;
        if (f < 0.0f) {
            this.f2005b = f * (-1.0f);
            this.f2008e.mo34090c();
        }
    }

    /* renamed from: s */
    public boolean m34146s() {
        SolverVariable solverVariable = this.f2004a;
        return solverVariable != null && (solverVariable.f1978k == SolverVariable.Type.UNRESTRICTED || this.f2005b >= 0.0f);
    }

    /* renamed from: t */
    public boolean m34145t(SolverVariable solverVariable) {
        return this.f2008e.mo34086g(solverVariable);
    }

    public String toString() {
        return m34139z();
    }

    /* renamed from: v */
    public SolverVariable m34143v(SolverVariable solverVariable) {
        return m34142w(null, solverVariable);
    }

    /* renamed from: x */
    public void m34141x(SolverVariable solverVariable) {
        SolverVariable solverVariable2 = this.f2004a;
        if (solverVariable2 != null) {
            this.f2008e.mo34084i(solverVariable2, -1.0f);
            this.f2004a.f1972e = -1;
            this.f2004a = null;
        }
        float mo34083j = this.f2008e.mo34083j(solverVariable, true) * (-1.0f);
        this.f2004a = solverVariable;
        if (mo34083j == 1.0f) {
            return;
        }
        this.f2005b /= mo34083j;
        this.f2008e.mo34082k(mo34083j);
    }

    /* renamed from: y */
    public void m34140y() {
        this.f2004a = null;
        this.f2008e.clear();
        this.f2005b = 0.0f;
        this.f2009f = false;
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x014e  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x016b  */
    /* renamed from: z */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    java.lang.String m34139z() {
        /*
            Method dump skipped, instructions count: 447
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.solver.C0455b.m34139z():java.lang.String");
    }
}
