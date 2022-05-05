package androidx.constraintlayout.solver;

import androidx.constraintlayout.solver.ArrayRow;
import java.util.Arrays;
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/solver/ArrayLinkedVariables.class */
public class ArrayLinkedVariables implements ArrayRow.ArrayRowVariables {

    /* renamed from: l */
    private static float f2032l = 0.001f;

    /* renamed from: b */
    private final ArrayRow f2034b;

    /* renamed from: c */
    protected final Cache f2035c;

    /* renamed from: a */
    int f2033a = 0;

    /* renamed from: d */
    private int f2036d = 8;

    /* renamed from: e */
    private SolverVariable f2037e = null;

    /* renamed from: f */
    private int[] f2038f = new int[8];

    /* renamed from: g */
    private int[] f2039g = new int[8];

    /* renamed from: h */
    private float[] f2040h = new float[8];

    /* renamed from: i */
    private int f2041i = -1;

    /* renamed from: j */
    private int f2042j = -1;

    /* renamed from: k */
    private boolean f2043k = false;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ArrayLinkedVariables(ArrayRow arrayRow, Cache cache) {
        this.f2034b = arrayRow;
        this.f2035c = cache;
    }

    @Override // androidx.constraintlayout.solver.ArrayRow.ArrayRowVariables
    /* renamed from: a */
    public int mo20451a() {
        return this.f2033a;
    }

    @Override // androidx.constraintlayout.solver.ArrayRow.ArrayRowVariables
    /* renamed from: b */
    public SolverVariable mo20450b(int i) {
        int i2 = this.f2041i;
        for (int i3 = 0; i2 != -1 && i3 < this.f2033a; i3++) {
            if (i3 == i) {
                return this.f2035c.f2053d[this.f2038f[i2]];
            }
            i2 = this.f2039g[i2];
        }
        return null;
    }

    @Override // androidx.constraintlayout.solver.ArrayRow.ArrayRowVariables
    /* renamed from: c */
    public void mo20449c() {
        int i = this.f2041i;
        for (int i2 = 0; i != -1 && i2 < this.f2033a; i2++) {
            float[] fArr = this.f2040h;
            fArr[i] = fArr[i] * (-1.0f);
            i = this.f2039g[i];
        }
    }

    @Override // androidx.constraintlayout.solver.ArrayRow.ArrayRowVariables
    public final void clear() {
        int i = this.f2041i;
        for (int i2 = 0; i != -1 && i2 < this.f2033a; i2++) {
            SolverVariable solverVariable = this.f2035c.f2053d[this.f2038f[i]];
            if (solverVariable != null) {
                solverVariable.m20456c(this.f2034b);
            }
            i = this.f2039g[i];
        }
        this.f2041i = -1;
        this.f2042j = -1;
        this.f2043k = false;
        this.f2033a = 0;
    }

    @Override // androidx.constraintlayout.solver.ArrayRow.ArrayRowVariables
    /* renamed from: d */
    public float mo20448d(int i) {
        int i2 = this.f2041i;
        for (int i3 = 0; i2 != -1 && i3 < this.f2033a; i3++) {
            if (i3 == i) {
                return this.f2040h[i2];
            }
            i2 = this.f2039g[i2];
        }
        return 0.0f;
    }

    @Override // androidx.constraintlayout.solver.ArrayRow.ArrayRowVariables
    /* renamed from: e */
    public void mo20447e(SolverVariable solverVariable, float f, boolean z) {
        float f2 = f2032l;
        if (f <= (-f2) || f >= f2) {
            int i = this.f2041i;
            if (i == -1) {
                this.f2041i = 0;
                this.f2040h[0] = f;
                this.f2038f[0] = solverVariable.f2123c;
                this.f2039g[0] = -1;
                solverVariable.f2133m++;
                solverVariable.m20458a(this.f2034b);
                this.f2033a++;
                if (!this.f2043k) {
                    int i2 = this.f2042j + 1;
                    this.f2042j = i2;
                    int[] iArr = this.f2038f;
                    if (i2 >= iArr.length) {
                        this.f2043k = true;
                        this.f2042j = iArr.length - 1;
                        return;
                    }
                    return;
                }
                return;
            }
            int i3 = -1;
            for (int i4 = 0; i != -1 && i4 < this.f2033a; i4++) {
                int[] iArr2 = this.f2038f;
                int i5 = iArr2[i];
                int i6 = solverVariable.f2123c;
                if (i5 == i6) {
                    float f3 = this.f2040h[i] + f;
                    float f4 = f2032l;
                    float f5 = f3;
                    if (f3 > (-f4)) {
                        f5 = f3;
                        if (f3 < f4) {
                            f5 = 0.0f;
                        }
                    }
                    this.f2040h[i] = f5;
                    if (f5 == 0.0f) {
                        if (i == this.f2041i) {
                            this.f2041i = this.f2039g[i];
                        } else {
                            int[] iArr3 = this.f2039g;
                            iArr3[i3] = iArr3[i];
                        }
                        if (z) {
                            solverVariable.m20456c(this.f2034b);
                        }
                        if (this.f2043k) {
                            this.f2042j = i;
                        }
                        solverVariable.f2133m--;
                        this.f2033a--;
                        return;
                    }
                    return;
                }
                if (iArr2[i] < i6) {
                    i3 = i;
                }
                i = this.f2039g[i];
            }
            int i7 = this.f2042j;
            if (this.f2043k) {
                int[] iArr4 = this.f2038f;
                if (iArr4[i7] != -1) {
                    i7 = iArr4.length;
                }
            } else {
                i7++;
            }
            int[] iArr5 = this.f2038f;
            int i8 = i7;
            if (i7 >= iArr5.length) {
                i8 = i7;
                if (this.f2033a < iArr5.length) {
                    int i9 = 0;
                    while (true) {
                        int[] iArr6 = this.f2038f;
                        i8 = i7;
                        if (i9 >= iArr6.length) {
                            break;
                        } else if (iArr6[i9] == -1) {
                            i8 = i9;
                            break;
                        } else {
                            i9++;
                        }
                    }
                }
            }
            int[] iArr7 = this.f2038f;
            int i10 = i8;
            if (i8 >= iArr7.length) {
                i10 = iArr7.length;
                int i11 = this.f2036d * 2;
                this.f2036d = i11;
                this.f2043k = false;
                this.f2042j = i10 - 1;
                this.f2040h = Arrays.copyOf(this.f2040h, i11);
                this.f2038f = Arrays.copyOf(this.f2038f, this.f2036d);
                this.f2039g = Arrays.copyOf(this.f2039g, this.f2036d);
            }
            this.f2038f[i10] = solverVariable.f2123c;
            this.f2040h[i10] = f;
            if (i3 != -1) {
                int[] iArr8 = this.f2039g;
                iArr8[i10] = iArr8[i3];
                iArr8[i3] = i10;
            } else {
                this.f2039g[i10] = this.f2041i;
                this.f2041i = i10;
            }
            solverVariable.f2133m++;
            solverVariable.m20458a(this.f2034b);
            this.f2033a++;
            if (!this.f2043k) {
                this.f2042j++;
            }
            int i12 = this.f2042j;
            int[] iArr9 = this.f2038f;
            if (i12 >= iArr9.length) {
                this.f2043k = true;
                this.f2042j = iArr9.length - 1;
            }
        }
    }

    @Override // androidx.constraintlayout.solver.ArrayRow.ArrayRowVariables
    /* renamed from: f */
    public final float mo20446f(SolverVariable solverVariable) {
        int i = this.f2041i;
        for (int i2 = 0; i != -1 && i2 < this.f2033a; i2++) {
            if (this.f2038f[i] == solverVariable.f2123c) {
                return this.f2040h[i];
            }
            i = this.f2039g[i];
        }
        return 0.0f;
    }

    @Override // androidx.constraintlayout.solver.ArrayRow.ArrayRowVariables
    /* renamed from: g */
    public boolean mo20445g(SolverVariable solverVariable) {
        int i = this.f2041i;
        if (i == -1) {
            return false;
        }
        for (int i2 = 0; i != -1 && i2 < this.f2033a; i2++) {
            if (this.f2038f[i] == solverVariable.f2123c) {
                return true;
            }
            i = this.f2039g[i];
        }
        return false;
    }

    @Override // androidx.constraintlayout.solver.ArrayRow.ArrayRowVariables
    /* renamed from: h */
    public float mo20444h(ArrayRow arrayRow, boolean z) {
        float f = mo20446f(arrayRow.f2044a);
        mo20442j(arrayRow.f2044a, z);
        ArrayRow.ArrayRowVariables arrayRowVariables = arrayRow.f2048e;
        int a = arrayRowVariables.mo20451a();
        for (int i = 0; i < a; i++) {
            SolverVariable b = arrayRowVariables.mo20450b(i);
            mo20447e(b, arrayRowVariables.mo20446f(b) * f, z);
        }
        return f;
    }

    @Override // androidx.constraintlayout.solver.ArrayRow.ArrayRowVariables
    /* renamed from: i */
    public final void mo20443i(SolverVariable solverVariable, float f) {
        if (f == 0.0f) {
            mo20442j(solverVariable, true);
            return;
        }
        int i = this.f2041i;
        if (i == -1) {
            this.f2041i = 0;
            this.f2040h[0] = f;
            this.f2038f[0] = solverVariable.f2123c;
            this.f2039g[0] = -1;
            solverVariable.f2133m++;
            solverVariable.m20458a(this.f2034b);
            this.f2033a++;
            if (!this.f2043k) {
                int i2 = this.f2042j + 1;
                this.f2042j = i2;
                int[] iArr = this.f2038f;
                if (i2 >= iArr.length) {
                    this.f2043k = true;
                    this.f2042j = iArr.length - 1;
                    return;
                }
                return;
            }
            return;
        }
        int i3 = -1;
        for (int i4 = 0; i != -1 && i4 < this.f2033a; i4++) {
            int[] iArr2 = this.f2038f;
            int i5 = iArr2[i];
            int i6 = solverVariable.f2123c;
            if (i5 == i6) {
                this.f2040h[i] = f;
                return;
            }
            if (iArr2[i] < i6) {
                i3 = i;
            }
            i = this.f2039g[i];
        }
        int i7 = this.f2042j;
        if (this.f2043k) {
            int[] iArr3 = this.f2038f;
            if (iArr3[i7] != -1) {
                i7 = iArr3.length;
            }
        } else {
            i7++;
        }
        int[] iArr4 = this.f2038f;
        int i8 = i7;
        if (i7 >= iArr4.length) {
            i8 = i7;
            if (this.f2033a < iArr4.length) {
                int i9 = 0;
                while (true) {
                    int[] iArr5 = this.f2038f;
                    i8 = i7;
                    if (i9 >= iArr5.length) {
                        break;
                    } else if (iArr5[i9] == -1) {
                        i8 = i9;
                        break;
                    } else {
                        i9++;
                    }
                }
            }
        }
        int[] iArr6 = this.f2038f;
        int i10 = i8;
        if (i8 >= iArr6.length) {
            i10 = iArr6.length;
            int i11 = this.f2036d * 2;
            this.f2036d = i11;
            this.f2043k = false;
            this.f2042j = i10 - 1;
            this.f2040h = Arrays.copyOf(this.f2040h, i11);
            this.f2038f = Arrays.copyOf(this.f2038f, this.f2036d);
            this.f2039g = Arrays.copyOf(this.f2039g, this.f2036d);
        }
        this.f2038f[i10] = solverVariable.f2123c;
        this.f2040h[i10] = f;
        if (i3 != -1) {
            int[] iArr7 = this.f2039g;
            iArr7[i10] = iArr7[i3];
            iArr7[i3] = i10;
        } else {
            this.f2039g[i10] = this.f2041i;
            this.f2041i = i10;
        }
        solverVariable.f2133m++;
        solverVariable.m20458a(this.f2034b);
        this.f2033a++;
        if (!this.f2043k) {
            this.f2042j++;
        }
        if (this.f2033a >= this.f2038f.length) {
            this.f2043k = true;
        }
        int i12 = this.f2042j;
        int[] iArr8 = this.f2038f;
        if (i12 >= iArr8.length) {
            this.f2043k = true;
            this.f2042j = iArr8.length - 1;
        }
    }

    @Override // androidx.constraintlayout.solver.ArrayRow.ArrayRowVariables
    /* renamed from: j */
    public final float mo20442j(SolverVariable solverVariable, boolean z) {
        if (this.f2037e == solverVariable) {
            this.f2037e = null;
        }
        int i = this.f2041i;
        if (i == -1) {
            return 0.0f;
        }
        int i2 = 0;
        int i3 = -1;
        while (i != -1 && i2 < this.f2033a) {
            if (this.f2038f[i] == solverVariable.f2123c) {
                if (i == this.f2041i) {
                    this.f2041i = this.f2039g[i];
                } else {
                    int[] iArr = this.f2039g;
                    iArr[i3] = iArr[i];
                }
                if (z) {
                    solverVariable.m20456c(this.f2034b);
                }
                solverVariable.f2133m--;
                this.f2033a--;
                this.f2038f[i] = -1;
                if (this.f2043k) {
                    this.f2042j = i;
                }
                return this.f2040h[i];
            }
            i = this.f2039g[i];
            i2++;
            i3 = i;
        }
        return 0.0f;
    }

    @Override // androidx.constraintlayout.solver.ArrayRow.ArrayRowVariables
    /* renamed from: k */
    public void mo20441k(float f) {
        int i = this.f2041i;
        for (int i2 = 0; i != -1 && i2 < this.f2033a; i2++) {
            float[] fArr = this.f2040h;
            fArr[i] = fArr[i] / f;
            i = this.f2039g[i];
        }
    }

    public String toString() {
        int i = this.f2041i;
        String str = "";
        for (int i2 = 0; i != -1 && i2 < this.f2033a; i2++) {
            str = ((str + " -> ") + this.f2040h[i] + " : ") + this.f2035c.f2053d[this.f2038f[i]];
            i = this.f2039g[i];
        }
        return str;
    }
}
