package androidx.constraintlayout.solver;

import java.util.Arrays;
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/solver/h$b.class */
class h$b implements Comparable {

    /* renamed from: b */
    SolverVariable f1079b;

    /* renamed from: c */
    final /* synthetic */ h f1080c;

    public h$b(h hVar, h hVar2) {
        this.f1080c = hVar;
    }

    /* renamed from: a */
    public boolean m14028a(SolverVariable solverVariable, float f) {
        boolean z = true;
        if (!this.f1079b.f1010a) {
            for (int i = 0; i < 9; i++) {
                float f2 = solverVariable.f1018i[i];
                if (f2 != 0.0f) {
                    float f3 = f2 * f;
                    float f4 = f3;
                    if (Math.abs(f3) < 1.0E-4f) {
                        f4 = 0.0f;
                    }
                    this.f1079b.f1018i[i] = f4;
                } else {
                    this.f1079b.f1018i[i] = 0.0f;
                }
            }
            return true;
        }
        for (int i2 = 0; i2 < 9; i2++) {
            float[] fArr = this.f1079b.f1018i;
            fArr[i2] = fArr[i2] + (solverVariable.f1018i[i2] * f);
            if (Math.abs(fArr[i2]) < 1.0E-4f) {
                this.f1079b.f1018i[i2] = 0.0f;
            } else {
                z = false;
            }
        }
        if (!z) {
            return false;
        }
        h.E(this.f1080c, this.f1079b);
        return false;
    }

    @Override // java.lang.Comparable
    public int compareTo(Object obj) {
        return this.f1079b.f1012c - ((SolverVariable) obj).f1012c;
    }

    /* renamed from: e */
    public void m14027e(SolverVariable solverVariable) {
        this.f1079b = solverVariable;
    }

    /* renamed from: h */
    public final boolean m14026h() {
        for (int i = 8; i >= 0; i--) {
            float f = this.f1079b.f1018i[i];
            if (f > 0.0f) {
                return false;
            }
            if (f < 0.0f) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: j */
    public final boolean m14025j(SolverVariable solverVariable) {
        for (int i = 8; i >= 0; i--) {
            float f = solverVariable.f1018i[i];
            float f2 = this.f1079b.f1018i[i];
            if (f2 != f) {
                return f2 < f;
            }
        }
        return false;
    }

    /* renamed from: k */
    public void m14024k() {
        Arrays.fill(this.f1079b.f1018i, 0.0f);
    }

    public String toString() {
        String str = "[ ";
        String str2 = str;
        if (this.f1079b != null) {
            int i = 0;
            while (true) {
                str2 = str;
                if (i >= 9) {
                    break;
                }
                str = str + this.f1079b.f1018i[i] + " ";
                i++;
            }
        }
        return str2 + "] " + this.f1079b;
    }
}
