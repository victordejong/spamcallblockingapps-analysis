package androidx.constraintlayout.solver;

import androidx.constraintlayout.solver.SolverVariable;
import androidx.constraintlayout.solver.widgets.ConstraintAnchor;
import androidx.constraintlayout.solver.widgets.ConstraintWidget;
import java.util.Arrays;
import java.util.HashMap;
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/solver/LinearSystem.class */
public class LinearSystem {

    /* renamed from: r */
    public static boolean f2054r = false;

    /* renamed from: s */
    public static boolean f2055s = true;

    /* renamed from: t */
    public static boolean f2056t = true;

    /* renamed from: u */
    public static boolean f2057u = true;

    /* renamed from: v */
    public static boolean f2058v = false;

    /* renamed from: w */
    private static int f2059w = 1000;

    /* renamed from: x */
    public static Metrics f2060x;

    /* renamed from: y */
    public static long f2061y;

    /* renamed from: z */
    public static long f2062z;

    /* renamed from: d */
    private Row f2066d;

    /* renamed from: g */
    ArrayRow[] f2069g;

    /* renamed from: n */
    final Cache f2076n;

    /* renamed from: q */
    private Row f2079q;

    /* renamed from: a */
    public boolean f2063a = false;

    /* renamed from: b */
    int f2064b = 0;

    /* renamed from: c */
    private HashMap<String, SolverVariable> f2065c = null;

    /* renamed from: e */
    private int f2067e = 32;

    /* renamed from: f */
    private int f2068f = 32;

    /* renamed from: h */
    public boolean f2070h = false;

    /* renamed from: i */
    public boolean f2071i = false;

    /* renamed from: j */
    private boolean[] f2072j = new boolean[32];

    /* renamed from: k */
    int f2073k = 1;

    /* renamed from: l */
    int f2074l = 0;

    /* renamed from: m */
    private int f2075m = 32;

    /* renamed from: o */
    private SolverVariable[] f2077o = new SolverVariable[f2059w];

    /* renamed from: p */
    private int f2078p = 0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/solver/LinearSystem$Row.class */
    public interface Row {
        /* renamed from: a */
        void mo20466a(SolverVariable solverVariable);

        /* renamed from: b */
        SolverVariable mo20465b(LinearSystem linearSystem, boolean[] zArr);

        /* renamed from: c */
        void mo20474c(Row row);

        void clear();

        SolverVariable getKey();

        boolean isEmpty();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/solver/LinearSystem$ValuesRow.class */
    public class ValuesRow extends ArrayRow {
        public ValuesRow(LinearSystem linearSystem, Cache cache) {
            this.f2048e = new SolverVariableValues(this, cache);
        }
    }

    public LinearSystem() {
        this.f2069g = null;
        this.f2069g = new ArrayRow[32];
        m20502C();
        Cache cache = new Cache();
        this.f2076n = cache;
        this.f2066d = new PriorityGoalRow(cache);
        if (f2058v) {
            this.f2079q = new ValuesRow(this, this.f2076n);
        } else {
            this.f2079q = new ArrayRow(this.f2076n);
        }
    }

    /* renamed from: B */
    private final int m20503B(Row row, boolean z) {
        Metrics metrics = f2060x;
        if (metrics != null) {
            metrics.f2092h++;
        }
        for (int i = 0; i < this.f2073k; i++) {
            this.f2072j[i] = false;
        }
        boolean z2 = false;
        int i2 = 0;
        while (!z2) {
            Metrics metrics2 = f2060x;
            if (metrics2 != null) {
                metrics2.f2093i++;
            }
            int i3 = i2 + 1;
            if (i3 >= this.f2073k * 2) {
                return i3;
            }
            if (row.getKey() != null) {
                this.f2072j[row.getKey().f2123c] = true;
            }
            SolverVariable b = row.mo20465b(this, this.f2072j);
            if (b != null) {
                boolean[] zArr = this.f2072j;
                int i4 = b.f2123c;
                if (zArr[i4]) {
                    return i3;
                }
                zArr[i4] = true;
            }
            if (b != null) {
                float f = Float.MAX_VALUE;
                int i5 = -1;
                for (int i6 = 0; i6 < this.f2074l; i6++) {
                    ArrayRow arrayRow = this.f2069g[i6];
                    if (arrayRow.f2044a.f2130j == SolverVariable.Type.UNRESTRICTED) {
                        f = f;
                        i5 = i5;
                    } else if (arrayRow.f2049f) {
                        f = f;
                        i5 = i5;
                    } else {
                        f = f;
                        i5 = i5;
                        if (arrayRow.m20511t(b)) {
                            float f2 = arrayRow.f2048e.mo20446f(b);
                            f = f;
                            i5 = i5;
                            if (f2 < 0.0f) {
                                float f3 = (-arrayRow.f2045b) / f2;
                                f = f;
                                i5 = i5;
                                if (f3 < f) {
                                    i5 = i6;
                                    f = f3;
                                }
                            }
                        }
                    }
                }
                i2 = i3;
                if (i5 > -1) {
                    ArrayRow arrayRow2 = this.f2069g[i5];
                    arrayRow2.f2044a.f2124d = -1;
                    Metrics metrics3 = f2060x;
                    if (metrics3 != null) {
                        metrics3.f2094j++;
                    }
                    arrayRow2.m20507x(b);
                    SolverVariable solverVariable = arrayRow2.f2044a;
                    solverVariable.f2124d = i5;
                    solverVariable.m20452g(this, arrayRow2);
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
    private void m20502C() {
        if (f2058v) {
            for (int i = 0; i < this.f2074l; i++) {
                ArrayRow arrayRow = this.f2069g[i];
                if (arrayRow != null) {
                    this.f2076n.f2050a.mo20473a(arrayRow);
                }
                this.f2069g[i] = null;
            }
            return;
        }
        for (int i2 = 0; i2 < this.f2074l; i2++) {
            ArrayRow arrayRow2 = this.f2069g[i2];
            if (arrayRow2 != null) {
                this.f2076n.f2051b.mo20473a(arrayRow2);
            }
            this.f2069g[i2] = null;
        }
    }

    /* renamed from: a */
    private SolverVariable m20500a(SolverVariable.Type type, String str) {
        SolverVariable solverVariable;
        SolverVariable b = this.f2076n.f2052c.mo20472b();
        if (b == null) {
            SolverVariable solverVariable2 = new SolverVariable(type, str);
            solverVariable2.m20453f(type, str);
            solverVariable = solverVariable2;
        } else {
            b.m20455d();
            b.m20453f(type, str);
            solverVariable = b;
        }
        int i = this.f2078p;
        int i2 = f2059w;
        if (i >= i2) {
            int i3 = i2 * 2;
            f2059w = i3;
            this.f2077o = (SolverVariable[]) Arrays.copyOf(this.f2077o, i3);
        }
        SolverVariable[] solverVariableArr = this.f2077o;
        int i4 = this.f2078p;
        this.f2078p = i4 + 1;
        solverVariableArr[i4] = solverVariable;
        return solverVariable;
    }

    /* renamed from: l */
    private final void m20489l(ArrayRow arrayRow) {
        int i;
        if (!f2056t || !arrayRow.f2049f) {
            ArrayRow[] arrayRowArr = this.f2069g;
            int i2 = this.f2074l;
            arrayRowArr[i2] = arrayRow;
            SolverVariable solverVariable = arrayRow.f2044a;
            solverVariable.f2124d = i2;
            this.f2074l = i2 + 1;
            solverVariable.m20452g(this, arrayRow);
        } else {
            arrayRow.f2044a.m20454e(this, arrayRow.f2045b);
        }
        if (f2056t && this.f2063a) {
            int i3 = 0;
            while (i3 < this.f2074l) {
                if (this.f2069g[i3] == null) {
                    System.out.println("WTF");
                }
                ArrayRow[] arrayRowArr2 = this.f2069g;
                int i4 = i3;
                if (arrayRowArr2[i3] != null) {
                    i4 = i3;
                    if (arrayRowArr2[i3].f2049f) {
                        ArrayRow arrayRow2 = arrayRowArr2[i3];
                        arrayRow2.f2044a.m20454e(this, arrayRow2.f2045b);
                        if (f2058v) {
                            this.f2076n.f2050a.mo20473a(arrayRow2);
                        } else {
                            this.f2076n.f2051b.mo20473a(arrayRow2);
                        }
                        this.f2069g[i3] = null;
                        int i5 = i3 + 1;
                        int i6 = i5;
                        while (true) {
                            i = this.f2074l;
                            if (i5 >= i) {
                                break;
                            }
                            ArrayRow[] arrayRowArr3 = this.f2069g;
                            int i7 = i5 - 1;
                            arrayRowArr3[i7] = arrayRowArr3[i5];
                            if (arrayRowArr3[i7].f2044a.f2124d == i5) {
                                arrayRowArr3[i7].f2044a.f2124d = i7;
                            }
                            i6 = i5;
                            i5++;
                        }
                        if (i6 < i) {
                            this.f2069g[i6] = null;
                        }
                        this.f2074l--;
                        i4 = i3 - 1;
                    }
                }
                i3 = i4 + 1;
            }
            this.f2063a = false;
        }
    }

    /* renamed from: n */
    private void m20487n() {
        for (int i = 0; i < this.f2074l; i++) {
            ArrayRow arrayRow = this.f2069g[i];
            arrayRow.f2044a.f2126f = arrayRow.f2045b;
        }
    }

    /* renamed from: s */
    public static ArrayRow m20482s(LinearSystem linearSystem, SolverVariable solverVariable, SolverVariable solverVariable2, float f) {
        ArrayRow r = linearSystem.m20483r();
        r.m20521j(solverVariable, solverVariable2, f);
        return r;
    }

    /* renamed from: u */
    private int m20480u(Row row) throws Exception {
        boolean z;
        int i;
        int i2 = 0;
        while (true) {
            if (i2 >= this.f2074l) {
                z = false;
                break;
            }
            ArrayRow[] arrayRowArr = this.f2069g;
            if (arrayRowArr[i2].f2044a.f2130j != SolverVariable.Type.UNRESTRICTED && arrayRowArr[i2].f2045b < 0.0f) {
                z = true;
                break;
            }
            i2++;
        }
        if (z) {
            boolean z2 = false;
            i = 0;
            while (!z2) {
                Metrics metrics = f2060x;
                if (metrics != null) {
                    metrics.f2095k++;
                }
                int i3 = i + 1;
                float f = Float.MAX_VALUE;
                int i4 = -1;
                int i5 = -1;
                int i6 = 0;
                for (int i7 = 0; i7 < this.f2074l; i7++) {
                    ArrayRow arrayRow = this.f2069g[i7];
                    if (arrayRow.f2044a.f2130j == SolverVariable.Type.UNRESTRICTED) {
                        f = f;
                        i4 = i4;
                        i5 = i5;
                        i6 = i6;
                    } else if (arrayRow.f2049f) {
                        f = f;
                        i4 = i4;
                        i5 = i5;
                        i6 = i6;
                    } else {
                        f = f;
                        i4 = i4;
                        i5 = i5;
                        i6 = i6;
                        if (arrayRow.f2045b < 0.0f) {
                            if (f2057u) {
                                int a = arrayRow.f2048e.mo20451a();
                                int i8 = 0;
                                while (true) {
                                    f = f;
                                    i4 = i4;
                                    i5 = i5;
                                    i6 = i6;
                                    if (i8 < a) {
                                        SolverVariable b = arrayRow.f2048e.mo20450b(i8);
                                        float f2 = arrayRow.f2048e.mo20446f(b);
                                        if (f2 <= 0.0f) {
                                            f = f;
                                            i4 = i4;
                                            i5 = i5;
                                            i6 = i6;
                                        } else {
                                            int i9 = 0;
                                            int i10 = i4;
                                            while (true) {
                                                f = f;
                                                i4 = i10;
                                                i5 = i5;
                                                i6 = i6;
                                                if (i9 < 9) {
                                                    float f3 = b.f2128h[i9] / f2;
                                                    if (f3 >= f || i9 != i6) {
                                                        i6 = i6;
                                                        if (i9 <= i6) {
                                                            i9++;
                                                        }
                                                    }
                                                    i5 = b.f2123c;
                                                    i6 = i9;
                                                    i10 = i7;
                                                    f = f3;
                                                    i9++;
                                                }
                                            }
                                        }
                                        i8++;
                                    }
                                }
                            } else {
                                int i11 = 1;
                                while (true) {
                                    f = f;
                                    i4 = i4;
                                    i5 = i5;
                                    i6 = i6;
                                    if (i11 < this.f2073k) {
                                        SolverVariable solverVariable = this.f2076n.f2053d[i11];
                                        float f4 = arrayRow.f2048e.mo20446f(solverVariable);
                                        if (f4 <= 0.0f) {
                                            f = f;
                                            i4 = i4;
                                            i5 = i5;
                                            i6 = i6;
                                        } else {
                                            int i12 = 0;
                                            int i13 = i4;
                                            while (true) {
                                                f = f;
                                                i4 = i13;
                                                i5 = i5;
                                                i6 = i6;
                                                if (i12 < 9) {
                                                    float f5 = solverVariable.f2128h[i12] / f4;
                                                    if (f5 >= f || i12 != i6) {
                                                        i6 = i6;
                                                        if (i12 <= i6) {
                                                            i12++;
                                                        }
                                                    }
                                                    i5 = i11;
                                                    i6 = i12;
                                                    i13 = i7;
                                                    f = f5;
                                                    i12++;
                                                }
                                            }
                                        }
                                        i11++;
                                    }
                                }
                            }
                        }
                    }
                }
                if (i4 != -1) {
                    ArrayRow arrayRow2 = this.f2069g[i4];
                    arrayRow2.f2044a.f2124d = -1;
                    Metrics metrics2 = f2060x;
                    if (metrics2 != null) {
                        metrics2.f2094j++;
                    }
                    arrayRow2.m20507x(this.f2076n.f2053d[i5]);
                    SolverVariable solverVariable2 = arrayRow2.f2044a;
                    solverVariable2.f2124d = i4;
                    solverVariable2.m20452g(this, arrayRow2);
                } else {
                    z2 = true;
                }
                i = i3;
                if (i3 > this.f2073k / 2) {
                    z2 = true;
                    i = i3;
                }
            }
        } else {
            i = 0;
        }
        return i;
    }

    /* renamed from: w */
    public static Metrics m20478w() {
        return f2060x;
    }

    /* renamed from: y */
    private void m20476y() {
        int i = this.f2067e * 2;
        this.f2067e = i;
        this.f2069g = (ArrayRow[]) Arrays.copyOf(this.f2069g, i);
        Cache cache = this.f2076n;
        cache.f2053d = (SolverVariable[]) Arrays.copyOf(cache.f2053d, this.f2067e);
        int i2 = this.f2067e;
        this.f2072j = new boolean[i2];
        this.f2068f = i2;
        this.f2075m = i2;
        Metrics metrics = f2060x;
        if (metrics != null) {
            metrics.f2088d++;
            metrics.f2099o = Math.max(metrics.f2099o, i2);
            Metrics metrics2 = f2060x;
            metrics2.f2108x = metrics2.f2099o;
        }
    }

    /* renamed from: A */
    void m20504A(Row row) throws Exception {
        Metrics metrics = f2060x;
        if (metrics != null) {
            metrics.f2104t++;
            metrics.f2105u = Math.max(metrics.f2105u, this.f2073k);
            Metrics metrics2 = f2060x;
            metrics2.f2106v = Math.max(metrics2.f2106v, this.f2074l);
        }
        m20480u(row);
        m20503B(row, false);
        m20487n();
    }

    /* renamed from: D */
    public void m20501D() {
        Cache cache;
        int i = 0;
        while (true) {
            cache = this.f2076n;
            SolverVariable[] solverVariableArr = cache.f2053d;
            if (i >= solverVariableArr.length) {
                break;
            }
            SolverVariable solverVariable = solverVariableArr[i];
            if (solverVariable != null) {
                solverVariable.m20455d();
            }
            i++;
        }
        cache.f2052c.mo20471c(this.f2077o, this.f2078p);
        this.f2078p = 0;
        Arrays.fill(this.f2076n.f2053d, (Object) null);
        HashMap<String, SolverVariable> hashMap = this.f2065c;
        if (hashMap != null) {
            hashMap.clear();
        }
        this.f2064b = 0;
        this.f2066d.clear();
        this.f2073k = 1;
        for (int i2 = 0; i2 < this.f2074l; i2++) {
            ArrayRow[] arrayRowArr = this.f2069g;
            if (arrayRowArr[i2] != null) {
                arrayRowArr[i2].f2046c = false;
            }
        }
        m20502C();
        this.f2074l = 0;
        if (f2058v) {
            this.f2079q = new ValuesRow(this, this.f2076n);
        } else {
            this.f2079q = new ArrayRow(this.f2076n);
        }
    }

    /* renamed from: b */
    public void m20499b(ConstraintWidget constraintWidget, ConstraintWidget constraintWidget2, float f, int i) {
        SolverVariable q = m20484q(constraintWidget.mo20199p(ConstraintAnchor.Type.LEFT));
        SolverVariable q2 = m20484q(constraintWidget.mo20199p(ConstraintAnchor.Type.TOP));
        SolverVariable q3 = m20484q(constraintWidget.mo20199p(ConstraintAnchor.Type.RIGHT));
        SolverVariable q4 = m20484q(constraintWidget.mo20199p(ConstraintAnchor.Type.BOTTOM));
        SolverVariable q5 = m20484q(constraintWidget2.mo20199p(ConstraintAnchor.Type.LEFT));
        SolverVariable q6 = m20484q(constraintWidget2.mo20199p(ConstraintAnchor.Type.TOP));
        SolverVariable q7 = m20484q(constraintWidget2.mo20199p(ConstraintAnchor.Type.RIGHT));
        SolverVariable q8 = m20484q(constraintWidget2.mo20199p(ConstraintAnchor.Type.BOTTOM));
        ArrayRow r = m20483r();
        double d = f;
        double sin = Math.sin(d);
        double d2 = i;
        r.m20514q(q2, q4, q6, q8, (float) (sin * d2));
        m20497d(r);
        ArrayRow r2 = m20483r();
        r2.m20514q(q, q3, q5, q7, (float) (Math.cos(d) * d2));
        m20497d(r2);
    }

    /* renamed from: c */
    public void m20498c(SolverVariable solverVariable, SolverVariable solverVariable2, int i, float f, SolverVariable solverVariable3, SolverVariable solverVariable4, int i2, int i3) {
        ArrayRow r = m20483r();
        r.m20523h(solverVariable, solverVariable2, i, f, solverVariable3, solverVariable4, i2);
        if (i3 != 8) {
            r.m20527d(this, i3);
        }
        m20497d(r);
    }

    /* JADX WARN: Removed duplicated region for block: B:45:0x0125 A[RETURN] */
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m20497d(androidx.constraintlayout.solver.ArrayRow r7) {
        /*
            Method dump skipped, instructions count: 304
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.solver.LinearSystem.m20497d(androidx.constraintlayout.solver.ArrayRow):void");
    }

    /* renamed from: e */
    public ArrayRow m20496e(SolverVariable solverVariable, SolverVariable solverVariable2, int i, int i2) {
        if (!f2055s || i2 != 8 || !solverVariable2.f2127g || solverVariable.f2124d != -1) {
            ArrayRow r = m20483r();
            r.m20517n(solverVariable, solverVariable2, i);
            if (i2 != 8) {
                r.m20527d(this, i2);
            }
            m20497d(r);
            return r;
        }
        solverVariable.m20454e(this, solverVariable2.f2126f + i);
        return null;
    }

    /* renamed from: f */
    public void m20495f(SolverVariable solverVariable, int i) {
        if (!f2055s || solverVariable.f2124d != -1) {
            int i2 = solverVariable.f2124d;
            if (i2 != -1) {
                ArrayRow arrayRow = this.f2069g[i2];
                if (arrayRow.f2049f) {
                    arrayRow.f2045b = i;
                } else if (arrayRow.f2048e.mo20451a() == 0) {
                    arrayRow.f2049f = true;
                    arrayRow.f2045b = i;
                } else {
                    ArrayRow r = m20483r();
                    r.m20518m(solverVariable, i);
                    m20497d(r);
                }
            } else {
                ArrayRow r2 = m20483r();
                r2.m20522i(solverVariable, i);
                m20497d(r2);
            }
        } else {
            float f = i;
            solverVariable.m20454e(this, f);
            for (int i3 = 0; i3 < this.f2064b + 1; i3++) {
                SolverVariable solverVariable2 = this.f2076n.f2053d[i3];
                if (solverVariable2 != null && solverVariable2.f2134n && solverVariable2.f2135o == solverVariable.f2123c) {
                    solverVariable2.m20454e(this, solverVariable2.f2136p + f);
                }
            }
        }
    }

    /* renamed from: g */
    public void m20494g(SolverVariable solverVariable, SolverVariable solverVariable2, int i, boolean z) {
        ArrayRow r = m20483r();
        SolverVariable t = m20481t();
        t.f2125e = 0;
        r.m20516o(solverVariable, solverVariable2, t, i);
        m20497d(r);
    }

    /* renamed from: h */
    public void m20493h(SolverVariable solverVariable, SolverVariable solverVariable2, int i, int i2) {
        ArrayRow r = m20483r();
        SolverVariable t = m20481t();
        t.f2125e = 0;
        r.m20516o(solverVariable, solverVariable2, t, i);
        if (i2 != 8) {
            m20488m(r, (int) (r.f2048e.mo20446f(t) * (-1.0f)), i2);
        }
        m20497d(r);
    }

    /* renamed from: i */
    public void m20492i(SolverVariable solverVariable, SolverVariable solverVariable2, int i, boolean z) {
        ArrayRow r = m20483r();
        SolverVariable t = m20481t();
        t.f2125e = 0;
        r.m20515p(solverVariable, solverVariable2, t, i);
        m20497d(r);
    }

    /* renamed from: j */
    public void m20491j(SolverVariable solverVariable, SolverVariable solverVariable2, int i, int i2) {
        ArrayRow r = m20483r();
        SolverVariable t = m20481t();
        t.f2125e = 0;
        r.m20515p(solverVariable, solverVariable2, t, i);
        if (i2 != 8) {
            m20488m(r, (int) (r.f2048e.mo20446f(t) * (-1.0f)), i2);
        }
        m20497d(r);
    }

    /* renamed from: k */
    public void m20490k(SolverVariable solverVariable, SolverVariable solverVariable2, SolverVariable solverVariable3, SolverVariable solverVariable4, float f, int i) {
        ArrayRow r = m20483r();
        r.m20520k(solverVariable, solverVariable2, solverVariable3, solverVariable4, f);
        if (i != 8) {
            r.m20527d(this, i);
        }
        m20497d(r);
    }

    /* renamed from: m */
    void m20488m(ArrayRow arrayRow, int i, int i2) {
        arrayRow.m20526e(m20486o(i2, null), i);
    }

    /* renamed from: o */
    public SolverVariable m20486o(int i, String str) {
        Metrics metrics = f2060x;
        if (metrics != null) {
            metrics.f2096l++;
        }
        if (this.f2073k + 1 >= this.f2068f) {
            m20476y();
        }
        SolverVariable a = m20500a(SolverVariable.Type.ERROR, str);
        int i2 = this.f2064b + 1;
        this.f2064b = i2;
        this.f2073k++;
        a.f2123c = i2;
        a.f2125e = i;
        this.f2076n.f2053d[i2] = a;
        this.f2066d.mo20466a(a);
        return a;
    }

    /* renamed from: p */
    public SolverVariable m20485p() {
        Metrics metrics = f2060x;
        if (metrics != null) {
            metrics.f2098n++;
        }
        if (this.f2073k + 1 >= this.f2068f) {
            m20476y();
        }
        SolverVariable a = m20500a(SolverVariable.Type.SLACK, null);
        int i = this.f2064b + 1;
        this.f2064b = i;
        this.f2073k++;
        a.f2123c = i;
        this.f2076n.f2053d[i] = a;
        return a;
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x005e, code lost:
        if (r4.f2076n.f2053d[r0] == null) goto L_0x0061;
     */
    /* renamed from: q */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public androidx.constraintlayout.solver.SolverVariable m20484q(java.lang.Object r5) {
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
            int r0 = r0.f2073k
            r1 = 1
            int r0 = r0 + r1
            r1 = r4
            int r1 = r1.f2068f
            if (r0 < r1) goto L_0x0019
            r0 = r4
            r0.m20476y()
        L_0x0019:
            r0 = r5
            boolean r0 = r0 instanceof androidx.constraintlayout.solver.widgets.ConstraintAnchor
            if (r0 == 0) goto L_0x009f
            r0 = r5
            androidx.constraintlayout.solver.widgets.ConstraintAnchor r0 = (androidx.constraintlayout.solver.widgets.ConstraintAnchor) r0
            r7 = r0
            r0 = r7
            androidx.constraintlayout.solver.SolverVariable r0 = r0.m20409i()
            r6 = r0
            r0 = r6
            r5 = r0
            r0 = r6
            if (r0 != 0) goto L_0x003d
            r0 = r7
            r1 = r4
            androidx.constraintlayout.solver.Cache r1 = r1.f2076n
            r0.m20399s(r1)
            r0 = r7
            androidx.constraintlayout.solver.SolverVariable r0 = r0.m20409i()
            r5 = r0
        L_0x003d:
            r0 = r5
            int r0 = r0.f2123c
            r8 = r0
            r0 = r8
            r1 = -1
            if (r0 == r1) goto L_0x0061
            r0 = r8
            r1 = r4
            int r1 = r1.f2064b
            if (r0 > r1) goto L_0x0061
            r0 = r5
            r6 = r0
            r0 = r4
            androidx.constraintlayout.solver.Cache r0 = r0.f2076n
            androidx.constraintlayout.solver.SolverVariable[] r0 = r0.f2053d
            r1 = r8
            r0 = r0[r1]
            if (r0 != 0) goto L_0x009f
        L_0x0061:
            r0 = r5
            int r0 = r0.f2123c
            r1 = -1
            if (r0 == r1) goto L_0x006d
            r0 = r5
            r0.m20455d()
        L_0x006d:
            r0 = r4
            int r0 = r0.f2064b
            r1 = 1
            int r0 = r0 + r1
            r8 = r0
            r0 = r4
            r1 = r8
            r0.f2064b = r1
            r0 = r4
            r1 = r4
            int r1 = r1.f2073k
            r2 = 1
            int r1 = r1 + r2
            r0.f2073k = r1
            r0 = r5
            r1 = r8
            r0.f2123c = r1
            r0 = r5
            androidx.constraintlayout.solver.SolverVariable$Type r1 = androidx.constraintlayout.solver.SolverVariable.Type.UNRESTRICTED
            r0.f2130j = r1
            r0 = r4
            androidx.constraintlayout.solver.Cache r0 = r0.f2076n
            androidx.constraintlayout.solver.SolverVariable[] r0 = r0.f2053d
            r1 = r8
            r2 = r5
            r0[r1] = r2
            r0 = r5
            r6 = r0
        L_0x009f:
            r0 = r6
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.solver.LinearSystem.m20484q(java.lang.Object):androidx.constraintlayout.solver.SolverVariable");
    }

    /* renamed from: r */
    public ArrayRow m20483r() {
        ArrayRow arrayRow;
        if (f2058v) {
            arrayRow = this.f2076n.f2050a.mo20472b();
            if (arrayRow == null) {
                arrayRow = new ValuesRow(this, this.f2076n);
                f2062z++;
            } else {
                arrayRow.m20506y();
            }
        } else {
            arrayRow = this.f2076n.f2051b.mo20472b();
            if (arrayRow == null) {
                arrayRow = new ArrayRow(this.f2076n);
                f2061y++;
            } else {
                arrayRow.m20506y();
            }
        }
        SolverVariable.m20457b();
        return arrayRow;
    }

    /* renamed from: t */
    public SolverVariable m20481t() {
        Metrics metrics = f2060x;
        if (metrics != null) {
            metrics.f2097m++;
        }
        if (this.f2073k + 1 >= this.f2068f) {
            m20476y();
        }
        SolverVariable a = m20500a(SolverVariable.Type.SLACK, null);
        int i = this.f2064b + 1;
        this.f2064b = i;
        this.f2073k++;
        a.f2123c = i;
        this.f2076n.f2053d[i] = a;
        return a;
    }

    /* renamed from: v */
    public Cache m20479v() {
        return this.f2076n;
    }

    /* renamed from: x */
    public int m20477x(Object obj) {
        SolverVariable i = ((ConstraintAnchor) obj).m20409i();
        if (i != null) {
            return (int) (i.f2126f + 0.5f);
        }
        return 0;
    }

    /* renamed from: z */
    public void m20475z() throws Exception {
        Metrics metrics = f2060x;
        if (metrics != null) {
            metrics.f2089e++;
        }
        if (this.f2066d.isEmpty()) {
            m20487n();
        } else if (this.f2070h || this.f2071i) {
            Metrics metrics2 = f2060x;
            if (metrics2 != null) {
                metrics2.f2101q++;
            }
            boolean z = false;
            int i = 0;
            while (true) {
                if (i >= this.f2074l) {
                    z = true;
                    break;
                } else if (!this.f2069g[i].f2049f) {
                    break;
                } else {
                    i++;
                }
            }
            if (!z) {
                m20504A(this.f2066d);
                return;
            }
            Metrics metrics3 = f2060x;
            if (metrics3 != null) {
                metrics3.f2100p++;
            }
            m20487n();
        } else {
            m20504A(this.f2066d);
        }
    }
}
