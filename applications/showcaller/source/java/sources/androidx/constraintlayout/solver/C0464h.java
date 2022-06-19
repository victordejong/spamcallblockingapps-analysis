package androidx.constraintlayout.solver;

import androidx.constraintlayout.solver.C0455b;
import java.util.Arrays;
import java.util.Comparator;
/* renamed from: androidx.constraintlayout.solver.h */
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/solver/h.class */
public class C0464h extends C0455b {

    /* renamed from: g */
    private int f2043g = 128;

    /* renamed from: h */
    private SolverVariable[] f2044h = new SolverVariable[128];

    /* renamed from: i */
    private SolverVariable[] f2045i = new SolverVariable[128];

    /* renamed from: j */
    private int f2046j = 0;

    /* renamed from: k */
    C0466b f2047k = new C0466b(this);

    /* renamed from: l */
    C0457c f2048l;

    /* renamed from: androidx.constraintlayout.solver.h$a */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/solver/h$a.class */
    public class C0465a implements Comparator<SolverVariable> {
        C0465a() {
            C0464h.this = r4;
        }

        /* renamed from: a */
        public int compare(SolverVariable solverVariable, SolverVariable solverVariable2) {
            return solverVariable.f1971d - solverVariable2.f1971d;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.constraintlayout.solver.h$b */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/solver/h$b.class */
    public class C0466b implements Comparable {

        /* renamed from: d */
        SolverVariable f2050d;

        /* renamed from: e */
        C0464h f2051e;

        public C0466b(C0464h c0464h) {
            C0464h.this = r4;
            this.f2051e = c0464h;
        }

        /* renamed from: a */
        public boolean m34097a(SolverVariable solverVariable, float f) {
            boolean z = true;
            if (!this.f2050d.f1969b) {
                for (int i = 0; i < 9; i++) {
                    float f2 = solverVariable.f1977j[i];
                    if (f2 != 0.0f) {
                        float f3 = f2 * f;
                        float f4 = f3;
                        if (Math.abs(f3) < 1.0E-4f) {
                            f4 = 0.0f;
                        }
                        this.f2050d.f1977j[i] = f4;
                    } else {
                        this.f2050d.f1977j[i] = 0.0f;
                    }
                }
                return true;
            }
            for (int i2 = 0; i2 < 9; i2++) {
                float[] fArr = this.f2050d.f1977j;
                fArr[i2] = fArr[i2] + (solverVariable.f1977j[i2] * f);
                if (Math.abs(fArr[i2]) < 1.0E-4f) {
                    this.f2050d.f1977j[i2] = 0.0f;
                } else {
                    z = false;
                }
            }
            if (!z) {
                return false;
            }
            C0464h.this.m34101G(this.f2050d);
            return false;
        }

        @Override // java.lang.Comparable
        public int compareTo(Object obj) {
            return this.f2050d.f1971d - ((SolverVariable) obj).f1971d;
        }

        /* renamed from: d */
        public void m34096d(SolverVariable solverVariable) {
            this.f2050d = solverVariable;
        }

        /* renamed from: e */
        public final boolean m34095e() {
            for (int i = 8; i >= 0; i--) {
                float f = this.f2050d.f1977j[i];
                if (f > 0.0f) {
                    return false;
                }
                if (f < 0.0f) {
                    return true;
                }
            }
            return false;
        }

        /* renamed from: f */
        public final boolean m34094f(SolverVariable solverVariable) {
            for (int i = 8; i >= 0; i--) {
                float f = solverVariable.f1977j[i];
                float f2 = this.f2050d.f1977j[i];
                if (f2 != f) {
                    return f2 < f;
                }
            }
            return false;
        }

        /* renamed from: g */
        public void m34093g() {
            Arrays.fill(this.f2050d.f1977j, 0.0f);
        }

        public String toString() {
            String str = "[ ";
            String str2 = str;
            if (this.f2050d != null) {
                int i = 0;
                while (true) {
                    str2 = str;
                    if (i >= 9) {
                        break;
                    }
                    str = str + this.f2050d.f1977j[i] + " ";
                    i++;
                }
            }
            return str2 + "] " + this.f2050d;
        }
    }

    public C0464h(C0457c c0457c) {
        super(c0457c);
        this.f2048l = c0457c;
    }

    /* renamed from: F */
    private final void m34102F(SolverVariable solverVariable) {
        int i;
        int i2 = this.f2046j;
        SolverVariable[] solverVariableArr = this.f2044h;
        if (i2 + 1 > solverVariableArr.length) {
            SolverVariable[] solverVariableArr2 = (SolverVariable[]) Arrays.copyOf(solverVariableArr, solverVariableArr.length * 2);
            this.f2044h = solverVariableArr2;
            this.f2045i = (SolverVariable[]) Arrays.copyOf(solverVariableArr2, solverVariableArr2.length * 2);
        }
        SolverVariable[] solverVariableArr3 = this.f2044h;
        int i3 = this.f2046j;
        solverVariableArr3[i3] = solverVariable;
        int i4 = i3 + 1;
        this.f2046j = i4;
        if (i4 > 1 && solverVariableArr3[i4 - 1].f1971d > solverVariable.f1971d) {
            int i5 = 0;
            while (true) {
                i = this.f2046j;
                if (i5 >= i) {
                    break;
                }
                this.f2045i[i5] = this.f2044h[i5];
                i5++;
            }
            Arrays.sort(this.f2045i, 0, i, new C0465a());
            for (int i6 = 0; i6 < this.f2046j; i6++) {
                this.f2044h[i6] = this.f2045i[i6];
            }
        }
        solverVariable.f1969b = true;
        solverVariable.m34171a(this);
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0037, code lost:
        r5.f2046j = r0 - 1;
        r6.f1969b = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x0043, code lost:
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x0014, code lost:
        r0 = r5.f2046j;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x001d, code lost:
        if (r7 >= (r0 - 1)) goto L16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0020, code lost:
        r0 = r5.f2044h;
        r0 = r7 + 1;
        r0[r7] = r0[r0];
        r7 = r0;
     */
    /* renamed from: G */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m34101G(androidx.constraintlayout.solver.SolverVariable r6) {
        /*
            r5 = this;
            r0 = 0
            r7 = r0
        L2:
            r0 = r7
            r1 = r5
            int r1 = r1.f2046j
            if (r0 >= r1) goto L4a
            r0 = r5
            androidx.constraintlayout.solver.SolverVariable[] r0 = r0.f2044h
            r1 = r7
            r0 = r0[r1]
            r1 = r6
            if (r0 != r1) goto L44
        L14:
            r0 = r5
            int r0 = r0.f2046j
            r8 = r0
            r0 = r7
            r1 = r8
            r2 = 1
            int r1 = r1 - r2
            if (r0 >= r1) goto L37
            r0 = r5
            androidx.constraintlayout.solver.SolverVariable[] r0 = r0.f2044h
            r9 = r0
            r0 = r7
            r1 = 1
            int r0 = r0 + r1
            r8 = r0
            r0 = r9
            r1 = r7
            r2 = r9
            r3 = r8
            r2 = r2[r3]
            r0[r1] = r2
            r0 = r8
            r7 = r0
            goto L14
        L37:
            r0 = r5
            r1 = r8
            r2 = 1
            int r1 = r1 - r2
            r0.f2046j = r1
            r0 = r6
            r1 = 0
            r0.f1969b = r1
            return
        L44:
            int r7 = r7 + 1
            goto L2
        L4a:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.solver.C0464h.m34101G(androidx.constraintlayout.solver.SolverVariable):void");
    }

    @Override // androidx.constraintlayout.solver.C0455b
    /* renamed from: B */
    public void mo34104B(C0458d c0458d, C0455b c0455b, boolean z) {
        SolverVariable solverVariable = c0455b.f2004a;
        if (solverVariable == null) {
            return;
        }
        C0455b.AbstractC0456a abstractC0456a = c0455b.f2008e;
        int mo34092a = abstractC0456a.mo34092a();
        for (int i = 0; i < mo34092a; i++) {
            SolverVariable mo34091b = abstractC0456a.mo34091b(i);
            float mo34089d = abstractC0456a.mo34089d(i);
            this.f2047k.m34096d(mo34091b);
            if (this.f2047k.m34097a(solverVariable, mo34089d)) {
                m34102F(mo34091b);
            }
            this.f2005b += c0455b.f2005b * mo34089d;
        }
        m34101G(solverVariable);
    }

    @Override // androidx.constraintlayout.solver.C0455b, androidx.constraintlayout.solver.C0458d.AbstractC0459a
    /* renamed from: a */
    public void mo34100a(SolverVariable solverVariable) {
        this.f2047k.m34096d(solverVariable);
        this.f2047k.m34093g();
        solverVariable.f1977j[solverVariable.f1973f] = 1.0f;
        m34102F(solverVariable);
    }

    @Override // androidx.constraintlayout.solver.C0455b, androidx.constraintlayout.solver.C0458d.AbstractC0459a
    /* renamed from: b */
    public SolverVariable mo34099b(C0458d c0458d, boolean[] zArr) {
        int i;
        int i2;
        int i3 = 0;
        int i4 = -1;
        while (true) {
            i = i4;
            if (i3 >= this.f2046j) {
                break;
            }
            SolverVariable solverVariable = this.f2044h[i3];
            if (zArr[solverVariable.f1971d]) {
                i2 = i;
            } else {
                this.f2047k.m34096d(solverVariable);
                if (i == -1) {
                    i2 = i;
                    if (!this.f2047k.m34095e()) {
                    }
                    i2 = i3;
                } else {
                    i2 = i;
                    if (!this.f2047k.m34094f(this.f2044h[i])) {
                    }
                    i2 = i3;
                }
            }
            i3++;
            i4 = i2;
        }
        if (i == -1) {
            return null;
        }
        return this.f2044h[i];
    }

    @Override // androidx.constraintlayout.solver.C0455b, androidx.constraintlayout.solver.C0458d.AbstractC0459a
    public void clear() {
        this.f2046j = 0;
        this.f2005b = 0.0f;
    }

    @Override // androidx.constraintlayout.solver.C0455b, androidx.constraintlayout.solver.C0458d.AbstractC0459a
    public boolean isEmpty() {
        return this.f2046j == 0;
    }

    @Override // androidx.constraintlayout.solver.C0455b
    public String toString() {
        String str = " goal -> (" + this.f2005b + ") : ";
        for (int i = 0; i < this.f2046j; i++) {
            this.f2047k.m34096d(this.f2044h[i]);
            str = str + this.f2047k + " ";
        }
        return str;
    }
}
