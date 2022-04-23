package androidx.constraintlayout.solver;

import androidx.constraintlayout.solver.LinearSystem;
import androidx.constraintlayout.solver.SolverVariable;
import java.util.ArrayList;
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/solver/ArrayRow.class */
public class ArrayRow implements LinearSystem.Row {

    /* renamed from: c */
    boolean f2046c;

    /* renamed from: e */
    public ArrayRowVariables f2048e;

    /* renamed from: a */
    SolverVariable f2044a = null;

    /* renamed from: b */
    float f2045b = 0.0f;

    /* renamed from: d */
    ArrayList<SolverVariable> f2047d = new ArrayList<>();

    /* renamed from: f */
    boolean f2049f = false;

    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/solver/ArrayRow$ArrayRowVariables.class */
    public interface ArrayRowVariables {
        /* renamed from: a */
        int mo20451a();

        /* renamed from: b */
        SolverVariable mo20450b(int i);

        /* renamed from: c */
        void mo20449c();

        void clear();

        /* renamed from: d */
        float mo20448d(int i);

        /* renamed from: e */
        void mo20447e(SolverVariable solverVariable, float f, boolean z);

        /* renamed from: f */
        float mo20446f(SolverVariable solverVariable);

        /* renamed from: g */
        boolean mo20445g(SolverVariable solverVariable);

        /* renamed from: h */
        float mo20444h(ArrayRow arrayRow, boolean z);

        /* renamed from: i */
        void mo20443i(SolverVariable solverVariable, float f);

        /* renamed from: j */
        float mo20442j(SolverVariable solverVariable, boolean z);

        /* renamed from: k */
        void mo20441k(float f);
    }

    public ArrayRow() {
    }

    public ArrayRow(Cache cache) {
        this.f2048e = new ArrayLinkedVariables(this, cache);
    }

    /* renamed from: u */
    private boolean m20510u(SolverVariable solverVariable, LinearSystem linearSystem) {
        boolean z = true;
        if (solverVariable.f2133m > 1) {
            z = false;
        }
        return z;
    }

    /* renamed from: w */
    private SolverVariable m20508w(boolean[] zArr, SolverVariable solverVariable) {
        int a = this.f2048e.mo20451a();
        SolverVariable solverVariable2 = null;
        float f = 0.0f;
        for (int i = 0; i < a; i++) {
            float d = this.f2048e.mo20448d(i);
            solverVariable2 = solverVariable2;
            f = f;
            if (d < 0.0f) {
                SolverVariable b = this.f2048e.mo20450b(i);
                if (zArr != null) {
                    solverVariable2 = solverVariable2;
                    f = f;
                    if (zArr[b.f2123c]) {
                    }
                }
                solverVariable2 = solverVariable2;
                f = f;
                if (b != solverVariable) {
                    SolverVariable.Type type = b.f2130j;
                    if (type != SolverVariable.Type.SLACK) {
                        solverVariable2 = solverVariable2;
                        f = f;
                        if (type != SolverVariable.Type.ERROR) {
                        }
                    }
                    solverVariable2 = solverVariable2;
                    f = f;
                    if (d < f) {
                        f = d;
                        solverVariable2 = b;
                    }
                }
            }
        }
        return solverVariable2;
    }

    /* renamed from: A */
    public void m20530A(LinearSystem linearSystem, SolverVariable solverVariable, boolean z) {
        if (solverVariable.f2127g) {
            this.f2045b += solverVariable.f2126f * this.f2048e.mo20446f(solverVariable);
            this.f2048e.mo20442j(solverVariable, z);
            if (z) {
                solverVariable.m20456c(this);
            }
            if (LinearSystem.f2056t && solverVariable != null && this.f2048e.mo20451a() == 0) {
                this.f2049f = true;
                linearSystem.f2063a = true;
            }
        }
    }

    /* renamed from: B */
    public void mo20470B(LinearSystem linearSystem, ArrayRow arrayRow, boolean z) {
        this.f2045b += arrayRow.f2045b * this.f2048e.mo20444h(arrayRow, z);
        if (z) {
            arrayRow.f2044a.m20456c(this);
        }
        if (LinearSystem.f2056t && this.f2044a != null && this.f2048e.mo20451a() == 0) {
            this.f2049f = true;
            linearSystem.f2063a = true;
        }
    }

    /* renamed from: C */
    public void m20529C(LinearSystem linearSystem, SolverVariable solverVariable, boolean z) {
        if (solverVariable.f2134n) {
            float f = this.f2048e.mo20446f(solverVariable);
            this.f2045b += solverVariable.f2136p * f;
            this.f2048e.mo20442j(solverVariable, z);
            if (z) {
                solverVariable.m20456c(this);
            }
            this.f2048e.mo20447e(linearSystem.f2076n.f2053d[solverVariable.f2135o], f, z);
            if (LinearSystem.f2056t && solverVariable != null && this.f2048e.mo20451a() == 0) {
                this.f2049f = true;
                linearSystem.f2063a = true;
            }
        }
    }

    /* renamed from: D */
    public void m20528D(LinearSystem linearSystem) {
        if (linearSystem.f2069g.length != 0) {
            boolean z = false;
            while (!z) {
                int a = this.f2048e.mo20451a();
                for (int i = 0; i < a; i++) {
                    SolverVariable b = this.f2048e.mo20450b(i);
                    if (b.f2124d != -1 || b.f2127g || b.f2134n) {
                        this.f2047d.add(b);
                    }
                }
                int size = this.f2047d.size();
                if (size > 0) {
                    for (int i2 = 0; i2 < size; i2++) {
                        SolverVariable solverVariable = this.f2047d.get(i2);
                        if (solverVariable.f2127g) {
                            m20530A(linearSystem, solverVariable, true);
                        } else if (solverVariable.f2134n) {
                            m20529C(linearSystem, solverVariable, true);
                        } else {
                            mo20470B(linearSystem, linearSystem.f2069g[solverVariable.f2124d], true);
                        }
                    }
                    this.f2047d.clear();
                } else {
                    z = true;
                }
            }
            if (LinearSystem.f2056t && this.f2044a != null && this.f2048e.mo20451a() == 0) {
                this.f2049f = true;
                linearSystem.f2063a = true;
            }
        }
    }

    @Override // androidx.constraintlayout.solver.LinearSystem.Row
    /* renamed from: a */
    public void mo20466a(SolverVariable solverVariable) {
        int i = solverVariable.f2125e;
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
        this.f2048e.mo20443i(solverVariable, f);
    }

    @Override // androidx.constraintlayout.solver.LinearSystem.Row
    /* renamed from: b */
    public SolverVariable mo20465b(LinearSystem linearSystem, boolean[] zArr) {
        return m20508w(zArr, null);
    }

    @Override // androidx.constraintlayout.solver.LinearSystem.Row
    /* renamed from: c */
    public void mo20474c(LinearSystem.Row row) {
        if (row instanceof ArrayRow) {
            ArrayRow arrayRow = (ArrayRow) row;
            this.f2044a = null;
            this.f2048e.clear();
            for (int i = 0; i < arrayRow.f2048e.mo20451a(); i++) {
                this.f2048e.mo20447e(arrayRow.f2048e.mo20450b(i), arrayRow.f2048e.mo20448d(i), true);
            }
        }
    }

    @Override // androidx.constraintlayout.solver.LinearSystem.Row
    public void clear() {
        this.f2048e.clear();
        this.f2044a = null;
        this.f2045b = 0.0f;
    }

    /* renamed from: d */
    public ArrayRow m20527d(LinearSystem linearSystem, int i) {
        this.f2048e.mo20443i(linearSystem.m20486o(i, "ep"), 1.0f);
        this.f2048e.mo20443i(linearSystem.m20486o(i, "em"), -1.0f);
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: e */
    public ArrayRow m20526e(SolverVariable solverVariable, int i) {
        this.f2048e.mo20443i(solverVariable, i);
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: f */
    public boolean m20525f(LinearSystem linearSystem) {
        boolean z;
        SolverVariable g = m20524g(linearSystem);
        if (g == null) {
            z = true;
        } else {
            m20507x(g);
            z = false;
        }
        if (this.f2048e.mo20451a() == 0) {
            this.f2049f = true;
        }
        return z;
    }

    /* renamed from: g */
    SolverVariable m20524g(LinearSystem linearSystem) {
        int a = this.f2048e.mo20451a();
        SolverVariable solverVariable = null;
        SolverVariable solverVariable2 = null;
        boolean z = false;
        boolean z2 = false;
        float f = 0.0f;
        float f2 = 0.0f;
        for (int i = 0; i < a; i++) {
            float d = this.f2048e.mo20448d(i);
            SolverVariable b = this.f2048e.mo20450b(i);
            if (b.f2130j == SolverVariable.Type.UNRESTRICTED) {
                if (solverVariable == null) {
                    z = m20510u(b, linearSystem);
                } else if (f > d) {
                    z = m20510u(b, linearSystem);
                } else {
                    solverVariable = solverVariable;
                    solverVariable2 = solverVariable2;
                    z = z;
                    z2 = z2;
                    f = f;
                    f2 = f2;
                    if (!z) {
                        solverVariable = solverVariable;
                        solverVariable2 = solverVariable2;
                        z = z;
                        z2 = z2;
                        f = f;
                        f2 = f2;
                        if (m20510u(b, linearSystem)) {
                            z = true;
                            solverVariable = b;
                            solverVariable2 = solverVariable2;
                            z2 = z2;
                            f = d;
                            f2 = f2;
                        }
                    }
                }
                solverVariable = b;
                solverVariable2 = solverVariable2;
                z2 = z2;
                f = d;
                f2 = f2;
            } else {
                solverVariable = solverVariable;
                solverVariable2 = solverVariable2;
                z = z;
                z2 = z2;
                f = f;
                f2 = f2;
                if (solverVariable == null) {
                    solverVariable = solverVariable;
                    solverVariable2 = solverVariable2;
                    z = z;
                    z2 = z2;
                    f = f;
                    f2 = f2;
                    if (d < 0.0f) {
                        if (solverVariable2 == null) {
                            z2 = m20510u(b, linearSystem);
                        } else if (f2 > d) {
                            z2 = m20510u(b, linearSystem);
                        } else {
                            solverVariable = solverVariable;
                            solverVariable2 = solverVariable2;
                            z = z;
                            z2 = z2;
                            f = f;
                            f2 = f2;
                            if (!z2) {
                                solverVariable = solverVariable;
                                solverVariable2 = solverVariable2;
                                z = z;
                                z2 = z2;
                                f = f;
                                f2 = f2;
                                if (m20510u(b, linearSystem)) {
                                    z2 = true;
                                    f2 = d;
                                    f = f;
                                    z = z;
                                    solverVariable2 = b;
                                    solverVariable = solverVariable;
                                }
                            }
                        }
                        solverVariable = solverVariable;
                        solverVariable2 = b;
                        z = z;
                        f = f;
                        f2 = d;
                    }
                }
            }
        }
        return solverVariable != null ? solverVariable : solverVariable2;
    }

    @Override // androidx.constraintlayout.solver.LinearSystem.Row
    public SolverVariable getKey() {
        return this.f2044a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: h */
    public ArrayRow m20523h(SolverVariable solverVariable, SolverVariable solverVariable2, int i, float f, SolverVariable solverVariable3, SolverVariable solverVariable4, int i2) {
        if (solverVariable2 == solverVariable3) {
            this.f2048e.mo20443i(solverVariable, 1.0f);
            this.f2048e.mo20443i(solverVariable4, 1.0f);
            this.f2048e.mo20443i(solverVariable2, -2.0f);
            return this;
        }
        if (f == 0.5f) {
            this.f2048e.mo20443i(solverVariable, 1.0f);
            this.f2048e.mo20443i(solverVariable2, -1.0f);
            this.f2048e.mo20443i(solverVariable3, -1.0f);
            this.f2048e.mo20443i(solverVariable4, 1.0f);
            if (i > 0 || i2 > 0) {
                this.f2045b = (-i) + i2;
            }
        } else if (f <= 0.0f) {
            this.f2048e.mo20443i(solverVariable, -1.0f);
            this.f2048e.mo20443i(solverVariable2, 1.0f);
            this.f2045b = i;
        } else if (f >= 1.0f) {
            this.f2048e.mo20443i(solverVariable4, -1.0f);
            this.f2048e.mo20443i(solverVariable3, 1.0f);
            this.f2045b = -i2;
        } else {
            float f2 = 1.0f - f;
            this.f2048e.mo20443i(solverVariable, f2 * 1.0f);
            this.f2048e.mo20443i(solverVariable2, f2 * (-1.0f));
            this.f2048e.mo20443i(solverVariable3, (-1.0f) * f);
            this.f2048e.mo20443i(solverVariable4, 1.0f * f);
            if (i > 0 || i2 > 0) {
                this.f2045b = ((-i) * f2) + (i2 * f);
            }
        }
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: i */
    public ArrayRow m20522i(SolverVariable solverVariable, int i) {
        this.f2044a = solverVariable;
        float f = i;
        solverVariable.f2126f = f;
        this.f2045b = f;
        this.f2049f = true;
        return this;
    }

    @Override // androidx.constraintlayout.solver.LinearSystem.Row
    public boolean isEmpty() {
        return this.f2044a == null && this.f2045b == 0.0f && this.f2048e.mo20451a() == 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: j */
    public ArrayRow m20521j(SolverVariable solverVariable, SolverVariable solverVariable2, float f) {
        this.f2048e.mo20443i(solverVariable, -1.0f);
        this.f2048e.mo20443i(solverVariable2, f);
        return this;
    }

    /* renamed from: k */
    public ArrayRow m20520k(SolverVariable solverVariable, SolverVariable solverVariable2, SolverVariable solverVariable3, SolverVariable solverVariable4, float f) {
        this.f2048e.mo20443i(solverVariable, -1.0f);
        this.f2048e.mo20443i(solverVariable2, 1.0f);
        this.f2048e.mo20443i(solverVariable3, f);
        this.f2048e.mo20443i(solverVariable4, -f);
        return this;
    }

    /* renamed from: l */
    public ArrayRow m20519l(float f, float f2, float f3, SolverVariable solverVariable, SolverVariable solverVariable2, SolverVariable solverVariable3, SolverVariable solverVariable4) {
        this.f2045b = 0.0f;
        if (f2 == 0.0f || f == f3) {
            this.f2048e.mo20443i(solverVariable, 1.0f);
            this.f2048e.mo20443i(solverVariable2, -1.0f);
            this.f2048e.mo20443i(solverVariable4, 1.0f);
            this.f2048e.mo20443i(solverVariable3, -1.0f);
        } else if (f == 0.0f) {
            this.f2048e.mo20443i(solverVariable, 1.0f);
            this.f2048e.mo20443i(solverVariable2, -1.0f);
        } else if (f3 == 0.0f) {
            this.f2048e.mo20443i(solverVariable3, 1.0f);
            this.f2048e.mo20443i(solverVariable4, -1.0f);
        } else {
            float f4 = (f / f2) / (f3 / f2);
            this.f2048e.mo20443i(solverVariable, 1.0f);
            this.f2048e.mo20443i(solverVariable2, -1.0f);
            this.f2048e.mo20443i(solverVariable4, f4);
            this.f2048e.mo20443i(solverVariable3, -f4);
        }
        return this;
    }

    /* renamed from: m */
    public ArrayRow m20518m(SolverVariable solverVariable, int i) {
        if (i < 0) {
            this.f2045b = i * (-1);
            this.f2048e.mo20443i(solverVariable, 1.0f);
        } else {
            this.f2045b = i;
            this.f2048e.mo20443i(solverVariable, -1.0f);
        }
        return this;
    }

    /* renamed from: n */
    public ArrayRow m20517n(SolverVariable solverVariable, SolverVariable solverVariable2, int i) {
        boolean z = false;
        z = false;
        if (i != 0) {
            int i2 = i;
            if (i < 0) {
                i2 = i * (-1);
                z = true;
            }
            this.f2045b = i2;
        }
        if (!z) {
            this.f2048e.mo20443i(solverVariable, -1.0f);
            this.f2048e.mo20443i(solverVariable2, 1.0f);
        } else {
            this.f2048e.mo20443i(solverVariable, 1.0f);
            this.f2048e.mo20443i(solverVariable2, -1.0f);
        }
        return this;
    }

    /* renamed from: o */
    public ArrayRow m20516o(SolverVariable solverVariable, SolverVariable solverVariable2, SolverVariable solverVariable3, int i) {
        boolean z = false;
        z = false;
        if (i != 0) {
            int i2 = i;
            if (i < 0) {
                i2 = i * (-1);
                z = true;
            }
            this.f2045b = i2;
        }
        if (!z) {
            this.f2048e.mo20443i(solverVariable, -1.0f);
            this.f2048e.mo20443i(solverVariable2, 1.0f);
            this.f2048e.mo20443i(solverVariable3, 1.0f);
        } else {
            this.f2048e.mo20443i(solverVariable, 1.0f);
            this.f2048e.mo20443i(solverVariable2, -1.0f);
            this.f2048e.mo20443i(solverVariable3, -1.0f);
        }
        return this;
    }

    /* renamed from: p */
    public ArrayRow m20515p(SolverVariable solverVariable, SolverVariable solverVariable2, SolverVariable solverVariable3, int i) {
        boolean z = false;
        z = false;
        if (i != 0) {
            int i2 = i;
            if (i < 0) {
                i2 = i * (-1);
                z = true;
            }
            this.f2045b = i2;
        }
        if (!z) {
            this.f2048e.mo20443i(solverVariable, -1.0f);
            this.f2048e.mo20443i(solverVariable2, 1.0f);
            this.f2048e.mo20443i(solverVariable3, -1.0f);
        } else {
            this.f2048e.mo20443i(solverVariable, 1.0f);
            this.f2048e.mo20443i(solverVariable2, -1.0f);
            this.f2048e.mo20443i(solverVariable3, 1.0f);
        }
        return this;
    }

    /* renamed from: q */
    public ArrayRow m20514q(SolverVariable solverVariable, SolverVariable solverVariable2, SolverVariable solverVariable3, SolverVariable solverVariable4, float f) {
        this.f2048e.mo20443i(solverVariable3, 0.5f);
        this.f2048e.mo20443i(solverVariable4, 0.5f);
        this.f2048e.mo20443i(solverVariable, -0.5f);
        this.f2048e.mo20443i(solverVariable2, -0.5f);
        this.f2045b = -f;
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: r */
    public void m20513r() {
        float f = this.f2045b;
        if (f < 0.0f) {
            this.f2045b = f * (-1.0f);
            this.f2048e.mo20449c();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: s */
    public boolean m20512s() {
        SolverVariable solverVariable = this.f2044a;
        return solverVariable != null && (solverVariable.f2130j == SolverVariable.Type.UNRESTRICTED || this.f2045b >= 0.0f);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: t */
    public boolean m20511t(SolverVariable solverVariable) {
        return this.f2048e.mo20445g(solverVariable);
    }

    public String toString() {
        return m20505z();
    }

    /* renamed from: v */
    public SolverVariable m20509v(SolverVariable solverVariable) {
        return m20508w(null, solverVariable);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: x */
    public void m20507x(SolverVariable solverVariable) {
        SolverVariable solverVariable2 = this.f2044a;
        if (solverVariable2 != null) {
            this.f2048e.mo20443i(solverVariable2, -1.0f);
            this.f2044a.f2124d = -1;
            this.f2044a = null;
        }
        float j = this.f2048e.mo20442j(solverVariable, true) * (-1.0f);
        this.f2044a = solverVariable;
        if (j != 1.0f) {
            this.f2045b /= j;
            this.f2048e.mo20441k(j);
        }
    }

    /* renamed from: y */
    public void m20506y() {
        this.f2044a = null;
        this.f2048e.clear();
        this.f2045b = 0.0f;
        this.f2049f = false;
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x014e  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x016b  */
    /* renamed from: z */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    java.lang.String m20505z() {
        /*
            Method dump skipped, instructions count: 448
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.solver.ArrayRow.m20505z():java.lang.String");
    }
}
