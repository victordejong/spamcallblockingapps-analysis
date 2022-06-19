package androidx.constraintlayout.solver;

import androidx.constraintlayout.solver.C0455b;
import java.util.Arrays;
/* renamed from: androidx.constraintlayout.solver.a */
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/solver/a.class */
public class C0454a implements C0455b.AbstractC0456a {

    /* renamed from: a */
    private static float f1992a = 0.001f;

    /* renamed from: c */
    private final C0455b f1994c;

    /* renamed from: d */
    protected final C0457c f1995d;

    /* renamed from: b */
    int f1993b = 0;

    /* renamed from: e */
    private int f1996e = 8;

    /* renamed from: f */
    private SolverVariable f1997f = null;

    /* renamed from: g */
    private int[] f1998g = new int[8];

    /* renamed from: h */
    private int[] f1999h = new int[8];

    /* renamed from: i */
    private float[] f2000i = new float[8];

    /* renamed from: j */
    private int f2001j = -1;

    /* renamed from: k */
    private int f2002k = -1;

    /* renamed from: l */
    private boolean f2003l = false;

    public C0454a(C0455b c0455b, C0457c c0457c) {
        this.f1994c = c0455b;
        this.f1995d = c0457c;
    }

    @Override // androidx.constraintlayout.solver.C0455b.AbstractC0456a
    /* renamed from: a */
    public int mo34092a() {
        return this.f1993b;
    }

    @Override // androidx.constraintlayout.solver.C0455b.AbstractC0456a
    /* renamed from: b */
    public SolverVariable mo34091b(int i) {
        int i2 = this.f2001j;
        for (int i3 = 0; i2 != -1 && i3 < this.f1993b; i3++) {
            if (i3 == i) {
                return this.f1995d.f2013d[this.f1998g[i2]];
            }
            i2 = this.f1999h[i2];
        }
        return null;
    }

    @Override // androidx.constraintlayout.solver.C0455b.AbstractC0456a
    /* renamed from: c */
    public void mo34090c() {
        int i = this.f2001j;
        for (int i2 = 0; i != -1 && i2 < this.f1993b; i2++) {
            float[] fArr = this.f2000i;
            fArr[i] = fArr[i] * (-1.0f);
            i = this.f1999h[i];
        }
    }

    @Override // androidx.constraintlayout.solver.C0455b.AbstractC0456a
    public final void clear() {
        int i = this.f2001j;
        for (int i2 = 0; i != -1 && i2 < this.f1993b; i2++) {
            SolverVariable solverVariable = this.f1995d.f2013d[this.f1998g[i]];
            if (solverVariable != null) {
                solverVariable.m34169c(this.f1994c);
            }
            i = this.f1999h[i];
        }
        this.f2001j = -1;
        this.f2002k = -1;
        this.f2003l = false;
        this.f1993b = 0;
    }

    @Override // androidx.constraintlayout.solver.C0455b.AbstractC0456a
    /* renamed from: d */
    public float mo34089d(int i) {
        int i2 = this.f2001j;
        for (int i3 = 0; i2 != -1 && i3 < this.f1993b; i3++) {
            if (i3 == i) {
                return this.f2000i[i2];
            }
            i2 = this.f1999h[i2];
        }
        return 0.0f;
    }

    @Override // androidx.constraintlayout.solver.C0455b.AbstractC0456a
    /* renamed from: e */
    public void mo34088e(SolverVariable solverVariable, float f, boolean z) {
        float f2 = f1992a;
        if (f <= (-f2) || f >= f2) {
            int i = this.f2001j;
            if (i == -1) {
                this.f2001j = 0;
                this.f2000i[0] = f;
                this.f1998g[0] = solverVariable.f1971d;
                this.f1999h[0] = -1;
                solverVariable.f1981n++;
                solverVariable.m34171a(this.f1994c);
                this.f1993b++;
                if (this.f2003l) {
                    return;
                }
                int i2 = this.f2002k + 1;
                this.f2002k = i2;
                int[] iArr = this.f1998g;
                if (i2 < iArr.length) {
                    return;
                }
                this.f2003l = true;
                this.f2002k = iArr.length - 1;
                return;
            }
            int i3 = -1;
            for (int i4 = 0; i != -1 && i4 < this.f1993b; i4++) {
                int[] iArr2 = this.f1998g;
                int i5 = iArr2[i];
                int i6 = solverVariable.f1971d;
                if (i5 == i6) {
                    float[] fArr = this.f2000i;
                    float f3 = fArr[i] + f;
                    float f4 = f1992a;
                    float f5 = f3;
                    if (f3 > (-f4)) {
                        f5 = f3;
                        if (f3 < f4) {
                            f5 = 0.0f;
                        }
                    }
                    fArr[i] = f5;
                    if (f5 != 0.0f) {
                        return;
                    }
                    if (i == this.f2001j) {
                        this.f2001j = this.f1999h[i];
                    } else {
                        int[] iArr3 = this.f1999h;
                        iArr3[i3] = iArr3[i];
                    }
                    if (z) {
                        solverVariable.m34169c(this.f1994c);
                    }
                    if (this.f2003l) {
                        this.f2002k = i;
                    }
                    solverVariable.f1981n--;
                    this.f1993b--;
                    return;
                }
                if (iArr2[i] < i6) {
                    i3 = i;
                }
                i = this.f1999h[i];
            }
            int i7 = this.f2002k;
            if (this.f2003l) {
                int[] iArr4 = this.f1998g;
                if (iArr4[i7] != -1) {
                    i7 = iArr4.length;
                }
            } else {
                i7++;
            }
            int[] iArr5 = this.f1998g;
            int i8 = i7;
            if (i7 >= iArr5.length) {
                i8 = i7;
                if (this.f1993b < iArr5.length) {
                    int i9 = 0;
                    while (true) {
                        int[] iArr6 = this.f1998g;
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
            int[] iArr7 = this.f1998g;
            int i10 = i8;
            if (i8 >= iArr7.length) {
                i10 = iArr7.length;
                int i11 = this.f1996e * 2;
                this.f1996e = i11;
                this.f2003l = false;
                this.f2002k = i10 - 1;
                this.f2000i = Arrays.copyOf(this.f2000i, i11);
                this.f1998g = Arrays.copyOf(this.f1998g, this.f1996e);
                this.f1999h = Arrays.copyOf(this.f1999h, this.f1996e);
            }
            this.f1998g[i10] = solverVariable.f1971d;
            this.f2000i[i10] = f;
            if (i3 != -1) {
                int[] iArr8 = this.f1999h;
                iArr8[i10] = iArr8[i3];
                iArr8[i3] = i10;
            } else {
                this.f1999h[i10] = this.f2001j;
                this.f2001j = i10;
            }
            solverVariable.f1981n++;
            solverVariable.m34171a(this.f1994c);
            this.f1993b++;
            if (!this.f2003l) {
                this.f2002k++;
            }
            int i12 = this.f2002k;
            int[] iArr9 = this.f1998g;
            if (i12 < iArr9.length) {
                return;
            }
            this.f2003l = true;
            this.f2002k = iArr9.length - 1;
        }
    }

    @Override // androidx.constraintlayout.solver.C0455b.AbstractC0456a
    /* renamed from: f */
    public final float mo34087f(SolverVariable solverVariable) {
        int i = this.f2001j;
        for (int i2 = 0; i != -1 && i2 < this.f1993b; i2++) {
            if (this.f1998g[i] == solverVariable.f1971d) {
                return this.f2000i[i];
            }
            i = this.f1999h[i];
        }
        return 0.0f;
    }

    @Override // androidx.constraintlayout.solver.C0455b.AbstractC0456a
    /* renamed from: g */
    public boolean mo34086g(SolverVariable solverVariable) {
        int i = this.f2001j;
        if (i == -1) {
            return false;
        }
        for (int i2 = 0; i != -1 && i2 < this.f1993b; i2++) {
            if (this.f1998g[i] == solverVariable.f1971d) {
                return true;
            }
            i = this.f1999h[i];
        }
        return false;
    }

    @Override // androidx.constraintlayout.solver.C0455b.AbstractC0456a
    /* renamed from: h */
    public float mo34085h(C0455b c0455b, boolean z) {
        float mo34087f = mo34087f(c0455b.f2004a);
        mo34083j(c0455b.f2004a, z);
        C0455b.AbstractC0456a abstractC0456a = c0455b.f2008e;
        int mo34092a = abstractC0456a.mo34092a();
        for (int i = 0; i < mo34092a; i++) {
            SolverVariable mo34091b = abstractC0456a.mo34091b(i);
            mo34088e(mo34091b, abstractC0456a.mo34087f(mo34091b) * mo34087f, z);
        }
        return mo34087f;
    }

    @Override // androidx.constraintlayout.solver.C0455b.AbstractC0456a
    /* renamed from: i */
    public final void mo34084i(SolverVariable solverVariable, float f) {
        if (f == 0.0f) {
            mo34083j(solverVariable, true);
            return;
        }
        int i = this.f2001j;
        if (i == -1) {
            this.f2001j = 0;
            this.f2000i[0] = f;
            this.f1998g[0] = solverVariable.f1971d;
            this.f1999h[0] = -1;
            solverVariable.f1981n++;
            solverVariable.m34171a(this.f1994c);
            this.f1993b++;
            if (this.f2003l) {
                return;
            }
            int i2 = this.f2002k + 1;
            this.f2002k = i2;
            int[] iArr = this.f1998g;
            if (i2 < iArr.length) {
                return;
            }
            this.f2003l = true;
            this.f2002k = iArr.length - 1;
            return;
        }
        int i3 = -1;
        for (int i4 = 0; i != -1 && i4 < this.f1993b; i4++) {
            int[] iArr2 = this.f1998g;
            int i5 = iArr2[i];
            int i6 = solverVariable.f1971d;
            if (i5 == i6) {
                this.f2000i[i] = f;
                return;
            }
            if (iArr2[i] < i6) {
                i3 = i;
            }
            i = this.f1999h[i];
        }
        int i7 = this.f2002k;
        if (this.f2003l) {
            int[] iArr3 = this.f1998g;
            if (iArr3[i7] != -1) {
                i7 = iArr3.length;
            }
        } else {
            i7++;
        }
        int[] iArr4 = this.f1998g;
        int i8 = i7;
        if (i7 >= iArr4.length) {
            i8 = i7;
            if (this.f1993b < iArr4.length) {
                int i9 = 0;
                while (true) {
                    int[] iArr5 = this.f1998g;
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
        int[] iArr6 = this.f1998g;
        int i10 = i8;
        if (i8 >= iArr6.length) {
            i10 = iArr6.length;
            int i11 = this.f1996e * 2;
            this.f1996e = i11;
            this.f2003l = false;
            this.f2002k = i10 - 1;
            this.f2000i = Arrays.copyOf(this.f2000i, i11);
            this.f1998g = Arrays.copyOf(this.f1998g, this.f1996e);
            this.f1999h = Arrays.copyOf(this.f1999h, this.f1996e);
        }
        this.f1998g[i10] = solverVariable.f1971d;
        this.f2000i[i10] = f;
        if (i3 != -1) {
            int[] iArr7 = this.f1999h;
            iArr7[i10] = iArr7[i3];
            iArr7[i3] = i10;
        } else {
            this.f1999h[i10] = this.f2001j;
            this.f2001j = i10;
        }
        solverVariable.f1981n++;
        solverVariable.m34171a(this.f1994c);
        int i12 = this.f1993b + 1;
        this.f1993b = i12;
        if (!this.f2003l) {
            this.f2002k++;
        }
        int[] iArr8 = this.f1998g;
        if (i12 >= iArr8.length) {
            this.f2003l = true;
        }
        if (this.f2002k < iArr8.length) {
            return;
        }
        this.f2003l = true;
        this.f2002k = iArr8.length - 1;
    }

    @Override // androidx.constraintlayout.solver.C0455b.AbstractC0456a
    /* renamed from: j */
    public final float mo34083j(SolverVariable solverVariable, boolean z) {
        if (this.f1997f == solverVariable) {
            this.f1997f = null;
        }
        int i = this.f2001j;
        if (i == -1) {
            return 0.0f;
        }
        int i2 = 0;
        int i3 = -1;
        while (i != -1 && i2 < this.f1993b) {
            if (this.f1998g[i] == solverVariable.f1971d) {
                if (i == this.f2001j) {
                    this.f2001j = this.f1999h[i];
                } else {
                    int[] iArr = this.f1999h;
                    iArr[i3] = iArr[i];
                }
                if (z) {
                    solverVariable.m34169c(this.f1994c);
                }
                solverVariable.f1981n--;
                this.f1993b--;
                this.f1998g[i] = -1;
                if (this.f2003l) {
                    this.f2002k = i;
                }
                return this.f2000i[i];
            }
            i2++;
            i3 = i;
            i = this.f1999h[i];
        }
        return 0.0f;
    }

    @Override // androidx.constraintlayout.solver.C0455b.AbstractC0456a
    /* renamed from: k */
    public void mo34082k(float f) {
        int i = this.f2001j;
        for (int i2 = 0; i != -1 && i2 < this.f1993b; i2++) {
            float[] fArr = this.f2000i;
            fArr[i] = fArr[i] / f;
            i = this.f1999h[i];
        }
    }

    public String toString() {
        int i = this.f2001j;
        String str = "";
        for (int i2 = 0; i != -1 && i2 < this.f1993b; i2++) {
            str = ((str + " -> ") + this.f2000i[i] + " : ") + this.f1995d.f2013d[this.f1998g[i]];
            i = this.f1999h[i];
        }
        return str;
    }
}
