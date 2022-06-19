package androidx.constraintlayout.solver;

import java.util.Arrays;
import java.util.HashSet;
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/solver/SolverVariable.class */
public class SolverVariable {

    /* renamed from: a */
    private static int f1968a = 1;

    /* renamed from: b */
    public boolean f1969b;

    /* renamed from: c */
    private String f1970c;

    /* renamed from: g */
    public float f1974g;

    /* renamed from: k */
    Type f1978k;

    /* renamed from: d */
    public int f1971d = -1;

    /* renamed from: e */
    int f1972e = -1;

    /* renamed from: f */
    public int f1973f = 0;

    /* renamed from: h */
    public boolean f1975h = false;

    /* renamed from: i */
    float[] f1976i = new float[9];

    /* renamed from: j */
    float[] f1977j = new float[9];

    /* renamed from: l */
    C0455b[] f1979l = new C0455b[16];

    /* renamed from: m */
    int f1980m = 0;

    /* renamed from: n */
    public int f1981n = 0;

    /* renamed from: o */
    boolean f1982o = false;

    /* renamed from: p */
    int f1983p = -1;

    /* renamed from: q */
    float f1984q = 0.0f;

    /* renamed from: r */
    HashSet<C0455b> f1985r = null;

    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/solver/SolverVariable$Type.class */
    public enum Type {
        UNRESTRICTED,
        CONSTANT,
        SLACK,
        ERROR,
        UNKNOWN
    }

    public SolverVariable(Type type, String str) {
        this.f1978k = type;
    }

    /* renamed from: b */
    public static void m34170b() {
        f1968a++;
    }

    /* renamed from: a */
    public final void m34171a(C0455b c0455b) {
        int i = 0;
        while (true) {
            int i2 = this.f1980m;
            if (i >= i2) {
                C0455b[] c0455bArr = this.f1979l;
                if (i2 >= c0455bArr.length) {
                    this.f1979l = (C0455b[]) Arrays.copyOf(c0455bArr, c0455bArr.length * 2);
                }
                C0455b[] c0455bArr2 = this.f1979l;
                int i3 = this.f1980m;
                c0455bArr2[i3] = c0455b;
                this.f1980m = i3 + 1;
                return;
            } else if (this.f1979l[i] == c0455b) {
                return;
            } else {
                i++;
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0034, code lost:
        r5.f1980m--;
     */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x003e, code lost:
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x001a, code lost:
        if (r8 >= (r0 - 1)) goto L16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x001d, code lost:
        r0 = r5.f1979l;
        r0 = r8 + 1;
        r0[r8] = r0[r0];
        r8 = r0;
     */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m34169c(androidx.constraintlayout.solver.C0455b r6) {
        /*
            r5 = this;
            r0 = r5
            int r0 = r0.f1980m
            r7 = r0
            r0 = 0
            r8 = r0
        L7:
            r0 = r8
            r1 = r7
            if (r0 >= r1) goto L45
            r0 = r5
            androidx.constraintlayout.solver.b[] r0 = r0.f1979l
            r1 = r8
            r0 = r0[r1]
            r1 = r6
            if (r0 != r1) goto L3f
        L16:
            r0 = r8
            r1 = r7
            r2 = 1
            int r1 = r1 - r2
            if (r0 >= r1) goto L34
            r0 = r5
            androidx.constraintlayout.solver.b[] r0 = r0.f1979l
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
            goto L16
        L34:
            r0 = r5
            r1 = r5
            int r1 = r1.f1980m
            r2 = 1
            int r1 = r1 - r2
            r0.f1980m = r1
            return
        L3f:
            int r8 = r8 + 1
            goto L7
        L45:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.solver.SolverVariable.m34169c(androidx.constraintlayout.solver.b):void");
    }

    /* renamed from: d */
    public void m34168d() {
        this.f1970c = null;
        this.f1978k = Type.UNKNOWN;
        this.f1973f = 0;
        this.f1971d = -1;
        this.f1972e = -1;
        this.f1974g = 0.0f;
        this.f1975h = false;
        this.f1982o = false;
        this.f1983p = -1;
        this.f1984q = 0.0f;
        int i = this.f1980m;
        for (int i2 = 0; i2 < i; i2++) {
            this.f1979l[i2] = null;
        }
        this.f1980m = 0;
        this.f1981n = 0;
        this.f1969b = false;
        Arrays.fill(this.f1977j, 0.0f);
    }

    /* renamed from: e */
    public void m34167e(C0458d c0458d, float f) {
        this.f1974g = f;
        this.f1975h = true;
        this.f1982o = false;
        this.f1983p = -1;
        this.f1984q = 0.0f;
        int i = this.f1980m;
        this.f1972e = -1;
        for (int i2 = 0; i2 < i; i2++) {
            this.f1979l[i2].m34164A(c0458d, this, false);
        }
        this.f1980m = 0;
    }

    /* renamed from: f */
    public void m34166f(Type type, String str) {
        this.f1978k = type;
    }

    /* renamed from: g */
    public final void m34165g(C0458d c0458d, C0455b c0455b) {
        int i = this.f1980m;
        for (int i2 = 0; i2 < i; i2++) {
            this.f1979l[i2].mo34104B(c0458d, c0455b, false);
        }
        this.f1980m = 0;
    }

    public String toString() {
        String str;
        if (this.f1970c != null) {
            str = "" + this.f1970c;
        } else {
            str = "" + this.f1971d;
        }
        return str;
    }
}
