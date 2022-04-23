package androidx.constraintlayout.solver;

import java.util.Arrays;
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/solver/SolverVariable.class */
public class SolverVariable {

    /* renamed from: n */
    private static int f1009n = 1;

    /* renamed from: a */
    public boolean f1010a;

    /* renamed from: b */
    private String f1011b;

    /* renamed from: f */
    public float f1015f;

    /* renamed from: j */
    Type f1019j;

    /* renamed from: c */
    public int f1012c = -1;

    /* renamed from: d */
    int f1013d = -1;

    /* renamed from: e */
    public int f1014e = 0;

    /* renamed from: g */
    public boolean f1016g = false;

    /* renamed from: h */
    float[] f1017h = new float[9];

    /* renamed from: i */
    float[] f1018i = new float[9];

    /* renamed from: k */
    b[] f1020k = new b[16];

    /* renamed from: l */
    int f1021l = 0;

    /* renamed from: m */
    public int f1022m = 0;

    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/solver/SolverVariable$Type.class */
    public enum Type {
        UNRESTRICTED,
        CONSTANT,
        SLACK,
        ERROR,
        UNKNOWN
    }

    public SolverVariable(Type type, String str) {
        this.f1019j = type;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public static void m14082b() {
        f1009n++;
    }

    /* renamed from: a */
    public final void m14083a(b bVar) {
        int i = 0;
        while (true) {
            int i2 = this.f1021l;
            if (i >= i2) {
                b[] bVarArr = this.f1020k;
                if (i2 >= bVarArr.length) {
                    this.f1020k = (b[]) Arrays.copyOf(bVarArr, bVarArr.length * 2);
                }
                b[] bVarArr2 = this.f1020k;
                int i3 = this.f1021l;
                bVarArr2[i3] = bVar;
                this.f1021l = i3 + 1;
                return;
            } else if (this.f1020k[i] != bVar) {
                i++;
            } else {
                return;
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0034, code lost:
        r5.f1021l--;
     */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x003e, code lost:
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x001a, code lost:
        if (r8 >= (r0 - 1)) goto L_0x0034;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x001d, code lost:
        r0 = r5.f1020k;
        r0 = r8 + 1;
        r0[r8] = r0[r0];
        r8 = r0;
     */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m14081c(androidx.constraintlayout.solver.b r6) {
        /*
            r5 = this;
            r0 = r5
            int r0 = r0.f1021l
            r7 = r0
            r0 = 0
            r8 = r0
        L_0x0007:
            r0 = r8
            r1 = r7
            if (r0 >= r1) goto L_0x0045
            r0 = r5
            androidx.constraintlayout.solver.b[] r0 = r0.f1020k
            r1 = r8
            r0 = r0[r1]
            r1 = r6
            if (r0 != r1) goto L_0x003f
        L_0x0016:
            r0 = r8
            r1 = r7
            r2 = 1
            int r1 = r1 - r2
            if (r0 >= r1) goto L_0x0034
            r0 = r5
            androidx.constraintlayout.solver.b[] r0 = r0.f1020k
            r6 = r0
            r0 = r8
            r1 = 1
            int r0 = r0 + r1
            r9 = r0
            r0 = r6
            r1 = r8
            r2 = r6
            r3 = r9
            r2 = r2[r3]
            r0[r1] = r2
            r0 = r9
            r8 = r0
            goto L_0x0016
        L_0x0034:
            r0 = r5
            r1 = r5
            int r1 = r1.f1021l
            r2 = 1
            int r1 = r1 - r2
            r0.f1021l = r1
            return
        L_0x003f:
            int r8 = r8 + 1
            goto L_0x0007
        L_0x0045:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.solver.SolverVariable.m14081c(androidx.constraintlayout.solver.b):void");
    }

    /* renamed from: d */
    public void m14080d() {
        this.f1011b = null;
        this.f1019j = Type.UNKNOWN;
        this.f1014e = 0;
        this.f1012c = -1;
        this.f1013d = -1;
        this.f1015f = 0.0f;
        this.f1016g = false;
        int i = this.f1021l;
        for (int i2 = 0; i2 < i; i2++) {
            this.f1020k[i2] = null;
        }
        this.f1021l = 0;
        this.f1022m = 0;
        this.f1010a = false;
        Arrays.fill(this.f1018i, 0.0f);
    }

    /* renamed from: e */
    public void m14079e(C0199d dVar, float f) {
        this.f1015f = f;
        this.f1016g = true;
        int i = this.f1021l;
        for (int i2 = 0; i2 < i; i2++) {
            this.f1020k[i2].B(dVar, this, false);
        }
        this.f1021l = 0;
    }

    /* renamed from: f */
    public void m14078f(Type type, String str) {
        this.f1019j = type;
    }

    /* renamed from: g */
    public final void m14077g(b bVar) {
        int i = this.f1021l;
        for (int i2 = 0; i2 < i; i2++) {
            this.f1020k[i2].C(bVar, false);
        }
        this.f1021l = 0;
    }

    public String toString() {
        StringBuilder sb;
        if (this.f1011b != null) {
            sb = new StringBuilder();
            sb.append("");
            sb.append(this.f1011b);
        } else {
            sb = new StringBuilder();
            sb.append("");
            sb.append(this.f1012c);
        }
        return sb.toString();
    }
}
