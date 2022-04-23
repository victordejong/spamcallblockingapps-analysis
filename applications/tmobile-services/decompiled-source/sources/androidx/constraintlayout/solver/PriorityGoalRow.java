package androidx.constraintlayout.solver;

import androidx.constraintlayout.solver.ArrayRow;
import java.util.Arrays;
import java.util.Comparator;
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/solver/PriorityGoalRow.class */
public class PriorityGoalRow extends ArrayRow {

    /* renamed from: g */
    private int f2113g = 128;

    /* renamed from: h */
    private SolverVariable[] f2114h = new SolverVariable[128];

    /* renamed from: i */
    private SolverVariable[] f2115i = new SolverVariable[128];

    /* renamed from: j */
    private int f2116j = 0;

    /* renamed from: k */
    GoalVariableAccessor f2117k = new GoalVariableAccessor(this);

    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/solver/PriorityGoalRow$GoalVariableAccessor.class */
    class GoalVariableAccessor implements Comparable {

        /* renamed from: f */
        SolverVariable f2118f;

        public GoalVariableAccessor(PriorityGoalRow priorityGoalRow) {
        }

        /* renamed from: a */
        public boolean m20463a(SolverVariable solverVariable, float f) {
            boolean z = true;
            if (this.f2118f.f2121a) {
                for (int i = 0; i < 9; i++) {
                    float[] fArr = this.f2118f.f2129i;
                    fArr[i] = fArr[i] + (solverVariable.f2129i[i] * f);
                    if (Math.abs(fArr[i]) < 1.0E-4f) {
                        this.f2118f.f2129i[i] = 0.0f;
                    } else {
                        z = false;
                    }
                }
                if (!z) {
                    return false;
                }
                PriorityGoalRow.this.m20467G(this.f2118f);
                return false;
            }
            for (int i2 = 0; i2 < 9; i2++) {
                float f2 = solverVariable.f2129i[i2];
                if (f2 != 0.0f) {
                    float f3 = f2 * f;
                    float f4 = f3;
                    if (Math.abs(f3) < 1.0E-4f) {
                        f4 = 0.0f;
                    }
                    this.f2118f.f2129i[i2] = f4;
                } else {
                    this.f2118f.f2129i[i2] = 0.0f;
                }
            }
            return true;
        }

        /* renamed from: b */
        public void m20462b(SolverVariable solverVariable) {
            this.f2118f = solverVariable;
        }

        @Override // java.lang.Comparable
        public int compareTo(Object obj) {
            return this.f2118f.f2123c - ((SolverVariable) obj).f2123c;
        }

        /* renamed from: e */
        public final boolean m20461e() {
            for (int i = 8; i >= 0; i--) {
                float f = this.f2118f.f2129i[i];
                if (f > 0.0f) {
                    return false;
                }
                if (f < 0.0f) {
                    return true;
                }
            }
            return false;
        }

        /* renamed from: g */
        public final boolean m20460g(SolverVariable solverVariable) {
            for (int i = 8; i >= 0; i--) {
                float f = solverVariable.f2129i[i];
                float f2 = this.f2118f.f2129i[i];
                if (f2 != f) {
                    return f2 < f;
                }
            }
            return false;
        }

        /* renamed from: h */
        public void m20459h() {
            Arrays.fill(this.f2118f.f2129i, 0.0f);
        }

        public String toString() {
            String str = "[ ";
            String str2 = str;
            if (this.f2118f != null) {
                int i = 0;
                while (true) {
                    str2 = str;
                    if (i >= 9) {
                        break;
                    }
                    str = str + this.f2118f.f2129i[i] + " ";
                    i++;
                }
            }
            return str2 + "] " + this.f2118f;
        }
    }

    public PriorityGoalRow(Cache cache) {
        super(cache);
    }

    /* renamed from: F */
    private final void m20468F(SolverVariable solverVariable) {
        int i;
        int i2 = this.f2116j;
        SolverVariable[] solverVariableArr = this.f2114h;
        if (i2 + 1 > solverVariableArr.length) {
            SolverVariable[] solverVariableArr2 = (SolverVariable[]) Arrays.copyOf(solverVariableArr, solverVariableArr.length * 2);
            this.f2114h = solverVariableArr2;
            this.f2115i = (SolverVariable[]) Arrays.copyOf(solverVariableArr2, solverVariableArr2.length * 2);
        }
        SolverVariable[] solverVariableArr3 = this.f2114h;
        int i3 = this.f2116j;
        solverVariableArr3[i3] = solverVariable;
        int i4 = i3 + 1;
        this.f2116j = i4;
        if (i4 > 1 && solverVariableArr3[i4 - 1].f2123c > solverVariable.f2123c) {
            int i5 = 0;
            while (true) {
                i = this.f2116j;
                if (i5 >= i) {
                    break;
                }
                this.f2115i[i5] = this.f2114h[i5];
                i5++;
            }
            Arrays.sort(this.f2115i, 0, i, new Comparator<SolverVariable>(this) { // from class: androidx.constraintlayout.solver.PriorityGoalRow.1
                /* renamed from: a */
                public int compare(SolverVariable solverVariable2, SolverVariable solverVariable3) {
                    return solverVariable2.f2123c - solverVariable3.f2123c;
                }
            });
            for (int i6 = 0; i6 < this.f2116j; i6++) {
                this.f2114h[i6] = this.f2115i[i6];
            }
        }
        solverVariable.f2121a = true;
        solverVariable.m20458a(this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:10:0x0037, code lost:
        r5.f2116j = r0 - 1;
        r6.f2121a = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x0043, code lost:
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x0014, code lost:
        r0 = r5.f2116j;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x001d, code lost:
        if (r7 >= (r0 - 1)) goto L_0x0037;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0020, code lost:
        r0 = r5.f2114h;
        r0 = r7 + 1;
        r0[r7] = r0[r0];
        r7 = r0;
     */
    /* renamed from: G */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m20467G(androidx.constraintlayout.solver.SolverVariable r6) {
        /*
            r5 = this;
            r0 = 0
            r7 = r0
        L_0x0002:
            r0 = r7
            r1 = r5
            int r1 = r1.f2116j
            if (r0 >= r1) goto L_0x004a
            r0 = r5
            androidx.constraintlayout.solver.SolverVariable[] r0 = r0.f2114h
            r1 = r7
            r0 = r0[r1]
            r1 = r6
            if (r0 != r1) goto L_0x0044
        L_0x0014:
            r0 = r5
            int r0 = r0.f2116j
            r8 = r0
            r0 = r7
            r1 = r8
            r2 = 1
            int r1 = r1 - r2
            if (r0 >= r1) goto L_0x0037
            r0 = r5
            androidx.constraintlayout.solver.SolverVariable[] r0 = r0.f2114h
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
            goto L_0x0014
        L_0x0037:
            r0 = r5
            r1 = r8
            r2 = 1
            int r1 = r1 - r2
            r0.f2116j = r1
            r0 = r6
            r1 = 0
            r0.f2121a = r1
            return
        L_0x0044:
            int r7 = r7 + 1
            goto L_0x0002
        L_0x004a:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.solver.PriorityGoalRow.m20467G(androidx.constraintlayout.solver.SolverVariable):void");
    }

    @Override // androidx.constraintlayout.solver.ArrayRow
    /* renamed from: B */
    public void mo20470B(LinearSystem linearSystem, ArrayRow arrayRow, boolean z) {
        SolverVariable solverVariable = arrayRow.f2044a;
        if (solverVariable != null) {
            ArrayRow.ArrayRowVariables arrayRowVariables = arrayRow.f2048e;
            int a = arrayRowVariables.mo20451a();
            for (int i = 0; i < a; i++) {
                SolverVariable b = arrayRowVariables.mo20450b(i);
                float d = arrayRowVariables.mo20448d(i);
                this.f2117k.m20462b(b);
                if (this.f2117k.m20463a(solverVariable, d)) {
                    m20468F(b);
                }
                this.f2045b += arrayRow.f2045b * d;
            }
            m20467G(solverVariable);
        }
    }

    @Override // androidx.constraintlayout.solver.ArrayRow, androidx.constraintlayout.solver.LinearSystem.Row
    /* renamed from: a */
    public void mo20466a(SolverVariable solverVariable) {
        this.f2117k.m20462b(solverVariable);
        this.f2117k.m20459h();
        solverVariable.f2129i[solverVariable.f2125e] = 1.0f;
        m20468F(solverVariable);
    }

    @Override // androidx.constraintlayout.solver.ArrayRow, androidx.constraintlayout.solver.LinearSystem.Row
    /* renamed from: b */
    public SolverVariable mo20465b(LinearSystem linearSystem, boolean[] zArr) {
        int i = -1;
        for (int i2 = 0; i2 < this.f2116j; i2++) {
            SolverVariable solverVariable = this.f2114h[i2];
            if (zArr[solverVariable.f2123c]) {
                i = i;
            } else {
                this.f2117k.m20462b(solverVariable);
                if (i == -1) {
                    i = i;
                    if (!this.f2117k.m20461e()) {
                    }
                    i = i2;
                } else {
                    i = i;
                    if (!this.f2117k.m20460g(this.f2114h[i])) {
                    }
                    i = i2;
                }
            }
        }
        if (i == -1) {
            return null;
        }
        return this.f2114h[i];
    }

    @Override // androidx.constraintlayout.solver.ArrayRow, androidx.constraintlayout.solver.LinearSystem.Row
    public void clear() {
        this.f2116j = 0;
        this.f2045b = 0.0f;
    }

    @Override // androidx.constraintlayout.solver.ArrayRow, androidx.constraintlayout.solver.LinearSystem.Row
    public boolean isEmpty() {
        return this.f2116j == 0;
    }

    @Override // androidx.constraintlayout.solver.ArrayRow
    public String toString() {
        String str = " goal -> (" + this.f2045b + ") : ";
        for (int i = 0; i < this.f2116j; i++) {
            this.f2117k.m20462b(this.f2114h[i]);
            str = str + this.f2117k + " ";
        }
        return str;
    }
}
