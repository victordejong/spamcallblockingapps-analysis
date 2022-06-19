package androidx.constraintlayout.solver;

import androidx.constraintlayout.solver.C0455b;
import java.util.Arrays;
/* renamed from: androidx.constraintlayout.solver.i */
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/solver/i.class */
public class C0467i implements C0455b.AbstractC0456a {

    /* renamed from: a */
    private static float f2053a = 0.001f;

    /* renamed from: b */
    private final int f2054b = -1;

    /* renamed from: c */
    private int f2055c = 16;

    /* renamed from: d */
    private int f2056d = 16;

    /* renamed from: e */
    int[] f2057e = new int[16];

    /* renamed from: f */
    int[] f2058f = new int[16];

    /* renamed from: g */
    int[] f2059g = new int[16];

    /* renamed from: h */
    float[] f2060h = new float[16];

    /* renamed from: i */
    int[] f2061i = new int[16];

    /* renamed from: j */
    int[] f2062j = new int[16];

    /* renamed from: k */
    int f2063k = 0;

    /* renamed from: l */
    int f2064l = -1;

    /* renamed from: m */
    private final C0455b f2065m;

    /* renamed from: n */
    protected final C0457c f2066n;

    public C0467i(C0455b c0455b, C0457c c0457c) {
        this.f2065m = c0455b;
        this.f2066n = c0457c;
        clear();
    }

    /* renamed from: l */
    private void m34081l(SolverVariable solverVariable, int i) {
        int[] iArr;
        int i2 = solverVariable.f1971d % this.f2056d;
        int[] iArr2 = this.f2057e;
        int i3 = iArr2[i2];
        int i4 = i3;
        if (i3 == -1) {
            iArr2[i2] = i;
        } else {
            while (true) {
                iArr = this.f2058f;
                if (iArr[i4] == -1) {
                    break;
                }
                i4 = iArr[i4];
            }
            iArr[i4] = i;
        }
        this.f2058f[i] = -1;
    }

    /* renamed from: m */
    private void m34080m(int i, SolverVariable solverVariable, float f) {
        this.f2059g[i] = solverVariable.f1971d;
        this.f2060h[i] = f;
        this.f2061i[i] = -1;
        this.f2062j[i] = -1;
        solverVariable.m34171a(this.f2065m);
        solverVariable.f1981n++;
        this.f2063k++;
    }

    /* renamed from: n */
    private int m34079n() {
        for (int i = 0; i < this.f2055c; i++) {
            if (this.f2059g[i] == -1) {
                return i;
            }
        }
        return -1;
    }

    /* renamed from: o */
    private void m34078o() {
        int i = this.f2055c * 2;
        this.f2059g = Arrays.copyOf(this.f2059g, i);
        this.f2060h = Arrays.copyOf(this.f2060h, i);
        this.f2061i = Arrays.copyOf(this.f2061i, i);
        this.f2062j = Arrays.copyOf(this.f2062j, i);
        this.f2058f = Arrays.copyOf(this.f2058f, i);
        for (int i2 = this.f2055c; i2 < i; i2++) {
            this.f2059g[i2] = -1;
            this.f2058f[i2] = -1;
        }
        this.f2055c = i;
    }

    /* renamed from: q */
    private void m34076q(int i, SolverVariable solverVariable, float f) {
        int m34079n = m34079n();
        m34080m(m34079n, solverVariable, f);
        if (i != -1) {
            this.f2061i[m34079n] = i;
            int[] iArr = this.f2062j;
            iArr[m34079n] = iArr[i];
            iArr[i] = m34079n;
        } else {
            this.f2061i[m34079n] = -1;
            if (this.f2063k > 0) {
                this.f2062j[m34079n] = this.f2064l;
                this.f2064l = m34079n;
            } else {
                this.f2062j[m34079n] = -1;
            }
        }
        int[] iArr2 = this.f2062j;
        if (iArr2[m34079n] != -1) {
            this.f2061i[iArr2[m34079n]] = m34079n;
        }
        m34081l(solverVariable, m34079n);
    }

    /* renamed from: r */
    private void m34075r(SolverVariable solverVariable) {
        int[] iArr;
        int i = solverVariable.f1971d;
        int i2 = i % this.f2056d;
        int[] iArr2 = this.f2057e;
        int i3 = iArr2[i2];
        if (i3 == -1) {
            return;
        }
        int i4 = i3;
        if (this.f2059g[i3] == i) {
            int[] iArr3 = this.f2058f;
            iArr2[i2] = iArr3[i3];
            iArr3[i3] = -1;
            return;
        }
        while (true) {
            iArr = this.f2058f;
            if (iArr[i4] == -1 || this.f2059g[iArr[i4]] == i) {
                break;
            }
            i4 = iArr[i4];
        }
        int i5 = iArr[i4];
        if (i5 == -1 || this.f2059g[i5] != i) {
            return;
        }
        iArr[i4] = iArr[i5];
        iArr[i5] = -1;
    }

    @Override // androidx.constraintlayout.solver.C0455b.AbstractC0456a
    /* renamed from: a */
    public int mo34092a() {
        return this.f2063k;
    }

    @Override // androidx.constraintlayout.solver.C0455b.AbstractC0456a
    /* renamed from: b */
    public SolverVariable mo34091b(int i) {
        int i2 = this.f2063k;
        if (i2 == 0) {
            return null;
        }
        int i3 = this.f2064l;
        for (int i4 = 0; i4 < i2; i4++) {
            if (i4 == i && i3 != -1) {
                return this.f2066n.f2013d[this.f2059g[i3]];
            }
            i3 = this.f2062j[i3];
            if (i3 == -1) {
                return null;
            }
        }
        return null;
    }

    @Override // androidx.constraintlayout.solver.C0455b.AbstractC0456a
    /* renamed from: c */
    public void mo34090c() {
        int i = this.f2063k;
        int i2 = this.f2064l;
        for (int i3 = 0; i3 < i; i3++) {
            float[] fArr = this.f2060h;
            fArr[i2] = fArr[i2] * (-1.0f);
            i2 = this.f2062j[i2];
            if (i2 == -1) {
                return;
            }
        }
    }

    @Override // androidx.constraintlayout.solver.C0455b.AbstractC0456a
    public void clear() {
        int i = this.f2063k;
        for (int i2 = 0; i2 < i; i2++) {
            SolverVariable mo34091b = mo34091b(i2);
            if (mo34091b != null) {
                mo34091b.m34169c(this.f2065m);
            }
        }
        for (int i3 = 0; i3 < this.f2055c; i3++) {
            this.f2059g[i3] = -1;
            this.f2058f[i3] = -1;
        }
        for (int i4 = 0; i4 < this.f2056d; i4++) {
            this.f2057e[i4] = -1;
        }
        this.f2063k = 0;
        this.f2064l = -1;
    }

    @Override // androidx.constraintlayout.solver.C0455b.AbstractC0456a
    /* renamed from: d */
    public float mo34089d(int i) {
        int i2 = this.f2063k;
        int i3 = this.f2064l;
        for (int i4 = 0; i4 < i2; i4++) {
            if (i4 == i) {
                return this.f2060h[i3];
            }
            i3 = this.f2062j[i3];
            if (i3 == -1) {
                return 0.0f;
            }
        }
        return 0.0f;
    }

    @Override // androidx.constraintlayout.solver.C0455b.AbstractC0456a
    /* renamed from: e */
    public void mo34088e(SolverVariable solverVariable, float f, boolean z) {
        float f2 = f2053a;
        if (f <= (-f2) || f >= f2) {
            int m34077p = m34077p(solverVariable);
            if (m34077p == -1) {
                mo34084i(solverVariable, f);
                return;
            }
            float[] fArr = this.f2060h;
            fArr[m34077p] = fArr[m34077p] + f;
            float f3 = fArr[m34077p];
            float f4 = f2053a;
            if (f3 <= (-f4) || fArr[m34077p] >= f4) {
                return;
            }
            fArr[m34077p] = 0.0f;
            mo34083j(solverVariable, z);
        }
    }

    @Override // androidx.constraintlayout.solver.C0455b.AbstractC0456a
    /* renamed from: f */
    public float mo34087f(SolverVariable solverVariable) {
        int m34077p = m34077p(solverVariable);
        if (m34077p != -1) {
            return this.f2060h[m34077p];
        }
        return 0.0f;
    }

    @Override // androidx.constraintlayout.solver.C0455b.AbstractC0456a
    /* renamed from: g */
    public boolean mo34086g(SolverVariable solverVariable) {
        return m34077p(solverVariable) != -1;
    }

    @Override // androidx.constraintlayout.solver.C0455b.AbstractC0456a
    /* renamed from: h */
    public float mo34085h(C0455b c0455b, boolean z) {
        float mo34087f = mo34087f(c0455b.f2004a);
        mo34083j(c0455b.f2004a, z);
        C0467i c0467i = (C0467i) c0455b.f2008e;
        int mo34092a = c0467i.mo34092a();
        int i = 0;
        int i2 = 0;
        while (i < mo34092a) {
            int[] iArr = c0467i.f2059g;
            int i3 = i;
            if (iArr[i2] != -1) {
                mo34088e(this.f2066n.f2013d[iArr[i2]], c0467i.f2060h[i2] * mo34087f, z);
                i3 = i + 1;
            }
            i2++;
            i = i3;
        }
        return mo34087f;
    }

    @Override // androidx.constraintlayout.solver.C0455b.AbstractC0456a
    /* renamed from: i */
    public void mo34084i(SolverVariable solverVariable, float f) {
        int i;
        float f2 = f2053a;
        if (f > (-f2) && f < f2) {
            mo34083j(solverVariable, true);
            return;
        }
        int i2 = 0;
        if (this.f2063k == 0) {
            m34080m(0, solverVariable, f);
            m34081l(solverVariable, 0);
            this.f2064l = 0;
            return;
        }
        int m34077p = m34077p(solverVariable);
        if (m34077p != -1) {
            this.f2060h[m34077p] = f;
            return;
        }
        if (this.f2063k + 1 >= this.f2055c) {
            m34078o();
        }
        int i3 = this.f2063k;
        int i4 = this.f2064l;
        int i5 = -1;
        while (true) {
            i = i5;
            if (i2 >= i3) {
                break;
            }
            int[] iArr = this.f2059g;
            int i6 = iArr[i4];
            int i7 = solverVariable.f1971d;
            if (i6 == i7) {
                this.f2060h[i4] = f;
                return;
            }
            if (iArr[i4] < i7) {
                i5 = i4;
            }
            i4 = this.f2062j[i4];
            if (i4 == -1) {
                i = i5;
                break;
            }
            i2++;
        }
        m34076q(i, solverVariable, f);
    }

    @Override // androidx.constraintlayout.solver.C0455b.AbstractC0456a
    /* renamed from: j */
    public float mo34083j(SolverVariable solverVariable, boolean z) {
        int m34077p = m34077p(solverVariable);
        if (m34077p == -1) {
            return 0.0f;
        }
        m34075r(solverVariable);
        float f = this.f2060h[m34077p];
        if (this.f2064l == m34077p) {
            this.f2064l = this.f2062j[m34077p];
        }
        this.f2059g[m34077p] = -1;
        int[] iArr = this.f2061i;
        if (iArr[m34077p] != -1) {
            int[] iArr2 = this.f2062j;
            iArr2[iArr[m34077p]] = iArr2[m34077p];
        }
        int[] iArr3 = this.f2062j;
        if (iArr3[m34077p] != -1) {
            iArr[iArr3[m34077p]] = iArr[m34077p];
        }
        this.f2063k--;
        solverVariable.f1981n--;
        if (z) {
            solverVariable.m34169c(this.f2065m);
        }
        return f;
    }

    @Override // androidx.constraintlayout.solver.C0455b.AbstractC0456a
    /* renamed from: k */
    public void mo34082k(float f) {
        int i = this.f2063k;
        int i2 = this.f2064l;
        for (int i3 = 0; i3 < i; i3++) {
            float[] fArr = this.f2060h;
            fArr[i2] = fArr[i2] / f;
            i2 = this.f2062j[i2];
            if (i2 == -1) {
                return;
            }
        }
    }

    /* renamed from: p */
    public int m34077p(SolverVariable solverVariable) {
        int[] iArr;
        if (this.f2063k == 0 || solverVariable == null) {
            return -1;
        }
        int i = solverVariable.f1971d;
        int i2 = this.f2057e[i % this.f2056d];
        if (i2 == -1) {
            return -1;
        }
        int i3 = i2;
        if (this.f2059g[i2] == i) {
            return i2;
        }
        while (true) {
            iArr = this.f2058f;
            if (iArr[i3] == -1 || this.f2059g[iArr[i3]] == i) {
                break;
            }
            i3 = iArr[i3];
        }
        if (iArr[i3] == -1 || this.f2059g[iArr[i3]] != i) {
            return -1;
        }
        return iArr[i3];
    }

    public String toString() {
        String str = hashCode() + " { ";
        int i = this.f2063k;
        for (int i2 = 0; i2 < i; i2++) {
            SolverVariable mo34091b = mo34091b(i2);
            if (mo34091b != null) {
                String str2 = str + mo34091b + " = " + mo34089d(i2) + " ";
                int m34077p = m34077p(mo34091b);
                String str3 = str2 + "[p: ";
                String str4 = (this.f2061i[m34077p] != -1 ? str3 + this.f2066n.f2013d[this.f2059g[this.f2061i[m34077p]]] : str3 + "none") + ", n: ";
                str = (this.f2062j[m34077p] != -1 ? str4 + this.f2066n.f2013d[this.f2059g[this.f2062j[m34077p]]] : str4 + "none") + "]";
            }
        }
        return str + " }";
    }
}
