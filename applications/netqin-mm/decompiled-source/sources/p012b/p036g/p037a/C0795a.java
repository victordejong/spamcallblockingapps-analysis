package p012b.p036g.p037a;

import androidx.constraintlayout.solver.SolverVariable;
import java.util.Arrays;
/* renamed from: b.g.a.a */
/* loaded from: classes-dex2jar.jar:b/g/a/a.class */
public class C0795a {

    /* renamed from: b */
    public final C0796b f3716b;

    /* renamed from: c */
    public final C0797c f3717c;

    /* renamed from: a */
    public int f3715a = 0;

    /* renamed from: d */
    public int f3718d = 8;

    /* renamed from: e */
    public SolverVariable f3719e = null;

    /* renamed from: f */
    public int[] f3720f = new int[8];

    /* renamed from: g */
    public int[] f3721g = new int[8];

    /* renamed from: h */
    public float[] f3722h = new float[8];

    /* renamed from: i */
    public int f3723i = -1;

    /* renamed from: j */
    public int f3724j = -1;

    /* renamed from: k */
    public boolean f3725k = false;

    public C0795a(C0796b bVar, C0797c cVar) {
        this.f3716b = bVar;
        this.f3717c = cVar;
    }

    /* renamed from: a */
    public final float m35992a(SolverVariable solverVariable, boolean z) {
        if (this.f3719e == solverVariable) {
            this.f3719e = null;
        }
        int i = this.f3723i;
        if (i == -1) {
            return 0.0f;
        }
        int i2 = 0;
        int i3 = -1;
        while (i != -1 && i2 < this.f3715a) {
            if (this.f3720f[i] == solverVariable.f864b) {
                if (i == this.f3723i) {
                    this.f3723i = this.f3721g[i];
                } else {
                    int[] iArr = this.f3721g;
                    iArr[i3] = iArr[i];
                }
                if (z) {
                    solverVariable.m38810b(this.f3716b);
                }
                solverVariable.f872j--;
                this.f3715a--;
                this.f3720f[i] = -1;
                if (this.f3725k) {
                    this.f3724j = i;
                }
                return this.f3722h[i];
            }
            i = this.f3721g[i];
            i2++;
            i3 = i;
        }
        return 0.0f;
    }

    /* renamed from: a */
    public final SolverVariable m35997a(int i) {
        int i2 = this.f3723i;
        for (int i3 = 0; i2 != -1 && i3 < this.f3715a; i3++) {
            if (i3 == i) {
                return this.f3717c.f3733c[this.f3720f[i2]];
            }
            i2 = this.f3721g[i2];
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x00a2  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x0205 A[SYNTHETIC] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public androidx.constraintlayout.solver.SolverVariable m35989a(p012b.p036g.p037a.C0799e r5) {
        /*
            Method dump skipped, instructions count: 563
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p012b.p036g.p037a.C0795a.m35989a(b.g.a.e):androidx.constraintlayout.solver.SolverVariable");
    }

    /* renamed from: a */
    public SolverVariable m35988a(boolean[] zArr, SolverVariable solverVariable) {
        int i = this.f3723i;
        SolverVariable solverVariable2 = null;
        float f = 0.0f;
        for (int i2 = 0; i != -1 && i2 < this.f3715a; i2++) {
            solverVariable2 = solverVariable2;
            f = f;
            if (this.f3722h[i] < 0.0f) {
                SolverVariable solverVariable3 = this.f3717c.f3733c[this.f3720f[i]];
                if (zArr != null) {
                    solverVariable2 = solverVariable2;
                    f = f;
                    if (zArr[solverVariable3.f864b]) {
                    }
                }
                solverVariable2 = solverVariable2;
                f = f;
                if (solverVariable3 != solverVariable) {
                    SolverVariable.Type type = solverVariable3.f869g;
                    if (type != SolverVariable.Type.SLACK) {
                        solverVariable2 = solverVariable2;
                        f = f;
                        if (type != SolverVariable.Type.ERROR) {
                        }
                    }
                    float f2 = this.f3722h[i];
                    solverVariable2 = solverVariable2;
                    f = f;
                    if (f2 < f) {
                        solverVariable2 = solverVariable3;
                        f = f2;
                    }
                }
            }
            i = this.f3721g[i];
        }
        return solverVariable2;
    }

    /* renamed from: a */
    public final void m35999a() {
        int i = this.f3723i;
        for (int i2 = 0; i != -1 && i2 < this.f3715a; i2++) {
            SolverVariable solverVariable = this.f3717c.f3733c[this.f3720f[i]];
            if (solverVariable != null) {
                solverVariable.m38810b(this.f3716b);
            }
            i = this.f3721g[i];
        }
        this.f3723i = -1;
        this.f3724j = -1;
        this.f3725k = false;
        this.f3715a = 0;
    }

    /* renamed from: a */
    public void m35998a(float f) {
        int i = this.f3723i;
        for (int i2 = 0; i != -1 && i2 < this.f3715a; i2++) {
            float[] fArr = this.f3722h;
            fArr[i] = fArr[i] / f;
            i = this.f3721g[i];
        }
    }

    /* renamed from: a */
    public final void m35995a(SolverVariable solverVariable, float f) {
        if (f == 0.0f) {
            m35992a(solverVariable, true);
            return;
        }
        int i = this.f3723i;
        if (i == -1) {
            this.f3723i = 0;
            this.f3722h[0] = f;
            this.f3720f[0] = solverVariable.f864b;
            this.f3721g[0] = -1;
            solverVariable.f872j++;
            solverVariable.m38812a(this.f3716b);
            this.f3715a++;
            if (!this.f3725k) {
                int i2 = this.f3724j + 1;
                this.f3724j = i2;
                int[] iArr = this.f3720f;
                if (i2 >= iArr.length) {
                    this.f3725k = true;
                    this.f3724j = iArr.length - 1;
                    return;
                }
                return;
            }
            return;
        }
        int i3 = -1;
        for (int i4 = 0; i != -1 && i4 < this.f3715a; i4++) {
            int[] iArr2 = this.f3720f;
            int i5 = iArr2[i];
            int i6 = solverVariable.f864b;
            if (i5 == i6) {
                this.f3722h[i] = f;
                return;
            }
            if (iArr2[i] < i6) {
                i3 = i;
            }
            i = this.f3721g[i];
        }
        int i7 = this.f3724j;
        if (this.f3725k) {
            int[] iArr3 = this.f3720f;
            if (iArr3[i7] != -1) {
                i7 = iArr3.length;
            }
        } else {
            i7++;
        }
        int[] iArr4 = this.f3720f;
        int i8 = i7;
        if (i7 >= iArr4.length) {
            i8 = i7;
            if (this.f3715a < iArr4.length) {
                int i9 = 0;
                while (true) {
                    int[] iArr5 = this.f3720f;
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
        int[] iArr6 = this.f3720f;
        int i10 = i8;
        if (i8 >= iArr6.length) {
            i10 = iArr6.length;
            int i11 = this.f3718d * 2;
            this.f3718d = i11;
            this.f3725k = false;
            this.f3724j = i10 - 1;
            this.f3722h = Arrays.copyOf(this.f3722h, i11);
            this.f3720f = Arrays.copyOf(this.f3720f, this.f3718d);
            this.f3721g = Arrays.copyOf(this.f3721g, this.f3718d);
        }
        this.f3720f[i10] = solverVariable.f864b;
        this.f3722h[i10] = f;
        if (i3 != -1) {
            int[] iArr7 = this.f3721g;
            iArr7[i10] = iArr7[i3];
            iArr7[i3] = i10;
        } else {
            this.f3721g[i10] = this.f3723i;
            this.f3723i = i10;
        }
        solverVariable.f872j++;
        solverVariable.m38812a(this.f3716b);
        this.f3715a++;
        if (!this.f3725k) {
            this.f3724j++;
        }
        if (this.f3715a >= this.f3720f.length) {
            this.f3725k = true;
        }
        int i12 = this.f3724j;
        int[] iArr8 = this.f3720f;
        if (i12 >= iArr8.length) {
            this.f3725k = true;
            this.f3724j = iArr8.length - 1;
        }
    }

    /* renamed from: a */
    public final void m35994a(SolverVariable solverVariable, float f, boolean z) {
        if (f != 0.0f) {
            int i = this.f3723i;
            if (i == -1) {
                this.f3723i = 0;
                this.f3722h[0] = f;
                this.f3720f[0] = solverVariable.f864b;
                this.f3721g[0] = -1;
                solverVariable.f872j++;
                solverVariable.m38812a(this.f3716b);
                this.f3715a++;
                if (!this.f3725k) {
                    int i2 = this.f3724j + 1;
                    this.f3724j = i2;
                    int[] iArr = this.f3720f;
                    if (i2 >= iArr.length) {
                        this.f3725k = true;
                        this.f3724j = iArr.length - 1;
                        return;
                    }
                    return;
                }
                return;
            }
            int i3 = -1;
            for (int i4 = 0; i != -1 && i4 < this.f3715a; i4++) {
                int[] iArr2 = this.f3720f;
                int i5 = iArr2[i];
                int i6 = solverVariable.f864b;
                if (i5 == i6) {
                    float[] fArr = this.f3722h;
                    fArr[i] = fArr[i] + f;
                    if (fArr[i] == 0.0f) {
                        if (i == this.f3723i) {
                            this.f3723i = this.f3721g[i];
                        } else {
                            int[] iArr3 = this.f3721g;
                            iArr3[i3] = iArr3[i];
                        }
                        if (z) {
                            solverVariable.m38810b(this.f3716b);
                        }
                        if (this.f3725k) {
                            this.f3724j = i;
                        }
                        solverVariable.f872j--;
                        this.f3715a--;
                        return;
                    }
                    return;
                }
                if (iArr2[i] < i6) {
                    i3 = i;
                }
                i = this.f3721g[i];
            }
            int i7 = this.f3724j;
            if (this.f3725k) {
                int[] iArr4 = this.f3720f;
                if (iArr4[i7] != -1) {
                    i7 = iArr4.length;
                }
            } else {
                i7++;
            }
            int[] iArr5 = this.f3720f;
            int i8 = i7;
            if (i7 >= iArr5.length) {
                i8 = i7;
                if (this.f3715a < iArr5.length) {
                    int i9 = 0;
                    while (true) {
                        int[] iArr6 = this.f3720f;
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
            int[] iArr7 = this.f3720f;
            int i10 = i8;
            if (i8 >= iArr7.length) {
                i10 = iArr7.length;
                int i11 = this.f3718d * 2;
                this.f3718d = i11;
                this.f3725k = false;
                this.f3724j = i10 - 1;
                this.f3722h = Arrays.copyOf(this.f3722h, i11);
                this.f3720f = Arrays.copyOf(this.f3720f, this.f3718d);
                this.f3721g = Arrays.copyOf(this.f3721g, this.f3718d);
            }
            this.f3720f[i10] = solverVariable.f864b;
            this.f3722h[i10] = f;
            if (i3 != -1) {
                int[] iArr8 = this.f3721g;
                iArr8[i10] = iArr8[i3];
                iArr8[i3] = i10;
            } else {
                this.f3721g[i10] = this.f3723i;
                this.f3723i = i10;
            }
            solverVariable.f872j++;
            solverVariable.m38812a(this.f3716b);
            this.f3715a++;
            if (!this.f3725k) {
                this.f3724j++;
            }
            int i12 = this.f3724j;
            int[] iArr9 = this.f3720f;
            if (i12 >= iArr9.length) {
                this.f3725k = true;
                this.f3724j = iArr9.length - 1;
            }
        }
    }

    /* renamed from: a */
    public final void m35991a(C0796b bVar, C0796b bVar2, boolean z) {
        int i = this.f3723i;
        while (true) {
            for (int i2 = 0; i != -1 && i2 < this.f3715a; i2++) {
                int i3 = this.f3720f[i];
                SolverVariable solverVariable = bVar2.f3726a;
                if (i3 == solverVariable.f864b) {
                    float f = this.f3722h[i];
                    m35992a(solverVariable, z);
                    C0795a aVar = bVar2.f3729d;
                    int i4 = aVar.f3723i;
                    for (int i5 = 0; i4 != -1 && i5 < aVar.f3715a; i5++) {
                        m35994a(this.f3717c.f3733c[aVar.f3720f[i4]], aVar.f3722h[i4] * f, z);
                        i4 = aVar.f3721g[i4];
                    }
                    bVar.f3727b += bVar2.f3727b * f;
                    if (z) {
                        bVar2.f3726a.m38810b(bVar);
                    }
                    i = this.f3723i;
                } else {
                    i = this.f3721g[i];
                }
            }
            return;
        }
    }

    /* renamed from: a */
    public void m35990a(C0796b bVar, C0796b[] bVarArr) {
        int i = this.f3723i;
        while (true) {
            for (int i2 = 0; i != -1 && i2 < this.f3715a; i2++) {
                SolverVariable solverVariable = this.f3717c.f3733c[this.f3720f[i]];
                if (solverVariable.f865c != -1) {
                    float f = this.f3722h[i];
                    m35992a(solverVariable, true);
                    C0796b bVar2 = bVarArr[solverVariable.f865c];
                    if (!bVar2.f3730e) {
                        C0795a aVar = bVar2.f3729d;
                        int i3 = aVar.f3723i;
                        for (int i4 = 0; i3 != -1 && i4 < aVar.f3715a; i4++) {
                            m35994a(this.f3717c.f3733c[aVar.f3720f[i3]], aVar.f3722h[i3] * f, true);
                            i3 = aVar.f3721g[i3];
                        }
                    }
                    bVar.f3727b += bVar2.f3727b * f;
                    bVar2.f3726a.m38810b(bVar);
                    i = this.f3723i;
                } else {
                    i = this.f3721g[i];
                }
            }
            return;
        }
    }

    /* renamed from: a */
    public final boolean m35996a(SolverVariable solverVariable) {
        int i = this.f3723i;
        if (i == -1) {
            return false;
        }
        for (int i2 = 0; i != -1 && i2 < this.f3715a; i2++) {
            if (this.f3720f[i] == solverVariable.f864b) {
                return true;
            }
            i = this.f3721g[i];
        }
        return false;
    }

    /* renamed from: a */
    public final boolean m35993a(SolverVariable solverVariable, C0799e eVar) {
        boolean z = true;
        if (solverVariable.f872j > 1) {
            z = false;
        }
        return z;
    }

    /* renamed from: b */
    public final float m35986b(int i) {
        int i2 = this.f3723i;
        for (int i3 = 0; i2 != -1 && i3 < this.f3715a; i3++) {
            if (i3 == i) {
                return this.f3722h[i2];
            }
            i2 = this.f3721g[i2];
        }
        return 0.0f;
    }

    /* renamed from: b */
    public final float m35985b(SolverVariable solverVariable) {
        int i = this.f3723i;
        for (int i2 = 0; i != -1 && i2 < this.f3715a; i2++) {
            if (this.f3720f[i] == solverVariable.f864b) {
                return this.f3722h[i];
            }
            i = this.f3721g[i];
        }
        return 0.0f;
    }

    /* renamed from: b */
    public void m35987b() {
        int i = this.f3723i;
        for (int i2 = 0; i != -1 && i2 < this.f3715a; i2++) {
            float[] fArr = this.f3722h;
            fArr[i] = fArr[i] * (-1.0f);
            i = this.f3721g[i];
        }
    }

    public String toString() {
        int i = this.f3723i;
        String str = "";
        for (int i2 = 0; i != -1 && i2 < this.f3715a; i2++) {
            str = ((str + " -> ") + this.f3722h[i] + " : ") + this.f3717c.f3733c[this.f3720f[i]];
            i = this.f3721g[i];
        }
        return str;
    }
}
