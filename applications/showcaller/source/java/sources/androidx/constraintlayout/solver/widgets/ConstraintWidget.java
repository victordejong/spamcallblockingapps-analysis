package androidx.constraintlayout.solver.widgets;

import androidx.constraintlayout.solver.C0457c;
import androidx.constraintlayout.solver.C0458d;
import androidx.constraintlayout.solver.widgets.ConstraintAnchor;
import androidx.constraintlayout.solver.widgets.analyzer.C0476c;
import androidx.constraintlayout.solver.widgets.analyzer.C0484k;
import androidx.constraintlayout.solver.widgets.analyzer.C0487m;
import androidx.constraintlayout.solver.widgets.analyzer.WidgetRun;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/solver/widgets/ConstraintWidget.class */
public class ConstraintWidget {

    /* renamed from: a */
    public static float f2087a = 0.5f;

    /* renamed from: A */
    public boolean f2088A;

    /* renamed from: A0 */
    boolean f2089A0;

    /* renamed from: E0 */
    boolean f2097E0;

    /* renamed from: F0 */
    boolean f2099F0;

    /* renamed from: G */
    private boolean f2100G;

    /* renamed from: R */
    public ConstraintAnchor f2118R;

    /* renamed from: S */
    public ConstraintAnchor[] f2119S;

    /* renamed from: V */
    public DimensionBehaviour[] f2122V;

    /* renamed from: d */
    public C0476c f2132d;

    /* renamed from: e */
    public C0476c f2134e;

    /* renamed from: i0 */
    protected int f2143i0;

    /* renamed from: j0 */
    protected int f2145j0;

    /* renamed from: k0 */
    float f2147k0;

    /* renamed from: l0 */
    float f2149l0;

    /* renamed from: m0 */
    private Object f2151m0;

    /* renamed from: r0 */
    int f2161r0;

    /* renamed from: s0 */
    int f2163s0;

    /* renamed from: t0 */
    int f2165t0;

    /* renamed from: u0 */
    int f2167u0;

    /* renamed from: v0 */
    boolean f2169v0;

    /* renamed from: w0 */
    boolean f2171w0;

    /* renamed from: x0 */
    boolean f2173x0;

    /* renamed from: y0 */
    boolean f2175y0;

    /* renamed from: z */
    public boolean f2176z;

    /* renamed from: z0 */
    boolean f2177z0;

    /* renamed from: b */
    public boolean f2128b = false;

    /* renamed from: c */
    public WidgetRun[] f2130c = new WidgetRun[2];

    /* renamed from: f */
    public C0484k f2136f = null;

    /* renamed from: g */
    public C0487m f2138g = null;

    /* renamed from: h */
    public boolean[] f2140h = {true, true};

    /* renamed from: i */
    boolean f2142i = false;

    /* renamed from: j */
    private boolean f2144j = true;

    /* renamed from: k */
    private boolean f2146k = false;

    /* renamed from: l */
    private boolean f2148l = true;

    /* renamed from: m */
    private boolean f2150m = false;

    /* renamed from: n */
    private boolean f2152n = false;

    /* renamed from: o */
    public int f2154o = -1;

    /* renamed from: p */
    public int f2156p = -1;

    /* renamed from: q */
    public int f2158q = 0;

    /* renamed from: r */
    public int f2160r = 0;

    /* renamed from: s */
    public int[] f2162s = new int[2];

    /* renamed from: t */
    public int f2164t = 0;

    /* renamed from: u */
    public int f2166u = 0;

    /* renamed from: v */
    public float f2168v = 1.0f;

    /* renamed from: w */
    public int f2170w = 0;

    /* renamed from: x */
    public int f2172x = 0;

    /* renamed from: y */
    public float f2174y = 1.0f;

    /* renamed from: B */
    int f2090B = -1;

    /* renamed from: C */
    float f2092C = 1.0f;

    /* renamed from: D */
    private int[] f2094D = {Integer.MAX_VALUE, Integer.MAX_VALUE};

    /* renamed from: E */
    private float f2096E = 0.0f;

    /* renamed from: F */
    private boolean f2098F = false;

    /* renamed from: H */
    private boolean f2102H = false;

    /* renamed from: I */
    private int f2104I = 0;

    /* renamed from: J */
    private int f2106J = 0;

    /* renamed from: K */
    public ConstraintAnchor f2108K = new ConstraintAnchor(this, ConstraintAnchor.Type.LEFT);

    /* renamed from: L */
    public ConstraintAnchor f2110L = new ConstraintAnchor(this, ConstraintAnchor.Type.TOP);

    /* renamed from: M */
    public ConstraintAnchor f2112M = new ConstraintAnchor(this, ConstraintAnchor.Type.RIGHT);

    /* renamed from: N */
    public ConstraintAnchor f2114N = new ConstraintAnchor(this, ConstraintAnchor.Type.BOTTOM);

    /* renamed from: O */
    public ConstraintAnchor f2115O = new ConstraintAnchor(this, ConstraintAnchor.Type.BASELINE);

    /* renamed from: P */
    ConstraintAnchor f2116P = new ConstraintAnchor(this, ConstraintAnchor.Type.CENTER_X);

    /* renamed from: Q */
    ConstraintAnchor f2117Q = new ConstraintAnchor(this, ConstraintAnchor.Type.CENTER_Y);

    /* renamed from: T */
    protected ArrayList<ConstraintAnchor> f2120T = new ArrayList<>();

    /* renamed from: U */
    private boolean[] f2121U = new boolean[2];

    /* renamed from: W */
    public ConstraintWidget f2123W = null;

    /* renamed from: X */
    int f2124X = 0;

    /* renamed from: Y */
    int f2125Y = 0;

    /* renamed from: Z */
    public float f2126Z = 0.0f;

    /* renamed from: a0 */
    protected int f2127a0 = -1;

    /* renamed from: b0 */
    protected int f2129b0 = 0;

    /* renamed from: c0 */
    protected int f2131c0 = 0;

    /* renamed from: d0 */
    int f2133d0 = 0;

    /* renamed from: e0 */
    int f2135e0 = 0;

    /* renamed from: f0 */
    protected int f2137f0 = 0;

    /* renamed from: g0 */
    protected int f2139g0 = 0;

    /* renamed from: h0 */
    int f2141h0 = 0;

    /* renamed from: n0 */
    private int f2153n0 = 0;

    /* renamed from: o0 */
    private int f2155o0 = 0;

    /* renamed from: p0 */
    private String f2157p0 = null;

    /* renamed from: q0 */
    private String f2159q0 = null;

    /* renamed from: B0 */
    boolean f2091B0 = false;

    /* renamed from: C0 */
    int f2093C0 = 0;

    /* renamed from: D0 */
    int f2095D0 = 0;

    /* renamed from: G0 */
    public float[] f2101G0 = {-1.0f, -1.0f};

    /* renamed from: H0 */
    protected ConstraintWidget[] f2103H0 = {null, null};

    /* renamed from: I0 */
    protected ConstraintWidget[] f2105I0 = {null, null};

    /* renamed from: J0 */
    ConstraintWidget f2107J0 = null;

    /* renamed from: K0 */
    ConstraintWidget f2109K0 = null;

    /* renamed from: L0 */
    public int f2111L0 = -1;

    /* renamed from: M0 */
    public int f2113M0 = -1;

    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour.class */
    public enum DimensionBehaviour {
        FIXED,
        WRAP_CONTENT,
        MATCH_CONSTRAINT,
        MATCH_PARENT
    }

    /* renamed from: androidx.constraintlayout.solver.widgets.ConstraintWidget$a */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/solver/widgets/ConstraintWidget$a.class */
    public static /* synthetic */ class C0469a {

        /* renamed from: a */
        static final /* synthetic */ int[] f2183a;

        /* renamed from: b */
        static final /* synthetic */ int[] f2184b;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:30:0x00a6 -> B:49:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:31:0x00aa -> B:45:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:32:0x00ae -> B:57:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:33:0x00b2 -> B:10:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:34:0x00b6 -> B:61:0x0049). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:35:0x00ba -> B:59:0x0054). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:36:0x00be -> B:67:0x005f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:37:0x00c2 -> B:63:0x006a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:38:0x00c6 -> B:47:0x0075). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:39:0x00ca -> B:43:0x0081). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:40:0x00ce -> B:55:0x008d). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:41:0x00d2 -> B:51:0x0099). Please submit an issue!!! */
        static {
            int[] iArr = new int[DimensionBehaviour.values().length];
            f2184b = iArr;
            try {
                iArr[DimensionBehaviour.FIXED.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f2184b[DimensionBehaviour.WRAP_CONTENT.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f2184b[DimensionBehaviour.MATCH_PARENT.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f2184b[DimensionBehaviour.MATCH_CONSTRAINT.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            int[] iArr2 = new int[ConstraintAnchor.Type.values().length];
            f2183a = iArr2;
            try {
                iArr2[ConstraintAnchor.Type.LEFT.ordinal()] = 1;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f2183a[ConstraintAnchor.Type.TOP.ordinal()] = 2;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f2183a[ConstraintAnchor.Type.RIGHT.ordinal()] = 3;
            } catch (NoSuchFieldError e7) {
            }
            try {
                f2183a[ConstraintAnchor.Type.BOTTOM.ordinal()] = 4;
            } catch (NoSuchFieldError e8) {
            }
            try {
                f2183a[ConstraintAnchor.Type.BASELINE.ordinal()] = 5;
            } catch (NoSuchFieldError e9) {
            }
            try {
                f2183a[ConstraintAnchor.Type.CENTER.ordinal()] = 6;
            } catch (NoSuchFieldError e10) {
            }
            try {
                f2183a[ConstraintAnchor.Type.CENTER_X.ordinal()] = 7;
            } catch (NoSuchFieldError e11) {
            }
            try {
                f2183a[ConstraintAnchor.Type.CENTER_Y.ordinal()] = 8;
            } catch (NoSuchFieldError e12) {
            }
            try {
                f2183a[ConstraintAnchor.Type.NONE.ordinal()] = 9;
            } catch (NoSuchFieldError e13) {
            }
        }
    }

    public ConstraintWidget() {
        ConstraintAnchor constraintAnchor = new ConstraintAnchor(this, ConstraintAnchor.Type.CENTER);
        this.f2118R = constraintAnchor;
        this.f2119S = new ConstraintAnchor[]{this.f2108K, this.f2112M, this.f2110L, this.f2114N, this.f2115O, constraintAnchor};
        DimensionBehaviour dimensionBehaviour = DimensionBehaviour.FIXED;
        this.f2122V = new DimensionBehaviour[]{dimensionBehaviour, dimensionBehaviour};
        float f = f2087a;
        this.f2147k0 = f;
        this.f2149l0 = f;
        m33996d();
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x003e, code lost:
        if (r0[r5].f2072f.f2072f == r0[r5]) goto L11;
     */
    /* renamed from: b0 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean m33999b0(int r5) {
        /*
            r4 = this;
            r0 = r5
            r1 = 2
            int r0 = r0 * r1
            r5 = r0
            r0 = r4
            androidx.constraintlayout.solver.widgets.ConstraintAnchor[] r0 = r0.f2119S
            r6 = r0
            r0 = r6
            r1 = r5
            r0 = r0[r1]
            androidx.constraintlayout.solver.widgets.ConstraintAnchor r0 = r0.f2072f
            r7 = r0
            r0 = 1
            r8 = r0
            r0 = r7
            if (r0 == 0) goto L44
            r0 = r6
            r1 = r5
            r0 = r0[r1]
            androidx.constraintlayout.solver.widgets.ConstraintAnchor r0 = r0.f2072f
            androidx.constraintlayout.solver.widgets.ConstraintAnchor r0 = r0.f2072f
            r1 = r6
            r2 = r5
            r1 = r1[r2]
            if (r0 == r1) goto L44
            int r5 = r5 + 1
            r0 = r6
            r1 = r5
            r0 = r0[r1]
            androidx.constraintlayout.solver.widgets.ConstraintAnchor r0 = r0.f2072f
            if (r0 == 0) goto L44
            r0 = r6
            r1 = r5
            r0 = r0[r1]
            androidx.constraintlayout.solver.widgets.ConstraintAnchor r0 = r0.f2072f
            androidx.constraintlayout.solver.widgets.ConstraintAnchor r0 = r0.f2072f
            r1 = r6
            r2 = r5
            r1 = r1[r2]
            if (r0 != r1) goto L44
            goto L47
        L44:
            r0 = 0
            r8 = r0
        L47:
            r0 = r8
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.solver.widgets.ConstraintWidget.m33999b0(int):boolean");
    }

    /* renamed from: d */
    private void m33996d() {
        this.f2120T.add(this.f2108K);
        this.f2120T.add(this.f2110L);
        this.f2120T.add(this.f2112M);
        this.f2120T.add(this.f2114N);
        this.f2120T.add(this.f2116P);
        this.f2120T.add(this.f2117Q);
        this.f2120T.add(this.f2118R);
        this.f2120T.add(this.f2115O);
    }

    /* JADX WARN: Code restructure failed: missing block: B:332:0x07a6, code lost:
        if (r0 == r0) goto L333;
     */
    /* JADX WARN: Removed duplicated region for block: B:119:0x0328  */
    /* JADX WARN: Removed duplicated region for block: B:245:0x05fe  */
    /* JADX WARN: Removed duplicated region for block: B:253:0x061d  */
    /* JADX WARN: Removed duplicated region for block: B:267:0x0678  */
    /* JADX WARN: Removed duplicated region for block: B:272:0x0686  */
    /* JADX WARN: Removed duplicated region for block: B:286:0x06d3  */
    /* JADX WARN: Removed duplicated region for block: B:296:0x0703  */
    /* JADX WARN: Removed duplicated region for block: B:337:0x07d4  */
    /* JADX WARN: Removed duplicated region for block: B:346:0x07fe  */
    /* JADX WARN: Removed duplicated region for block: B:361:0x0841  */
    /* JADX WARN: Removed duplicated region for block: B:383:0x08a5  */
    /* JADX WARN: Removed duplicated region for block: B:415:? A[ADDED_TO_REGION, RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:418:? A[ADDED_TO_REGION, RETURN, SYNTHETIC] */
    /* renamed from: i */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void m33989i(androidx.constraintlayout.solver.C0458d r11, boolean r12, boolean r13, boolean r14, boolean r15, androidx.constraintlayout.solver.SolverVariable r16, androidx.constraintlayout.solver.SolverVariable r17, androidx.constraintlayout.solver.widgets.ConstraintWidget.DimensionBehaviour r18, boolean r19, androidx.constraintlayout.solver.widgets.ConstraintAnchor r20, androidx.constraintlayout.solver.widgets.ConstraintAnchor r21, int r22, int r23, int r24, int r25, float r26, boolean r27, boolean r28, boolean r29, boolean r30, boolean r31, int r32, int r33, int r34, int r35, float r36, boolean r37) {
        /*
            Method dump skipped, instructions count: 2364
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.solver.widgets.ConstraintWidget.m33989i(androidx.constraintlayout.solver.d, boolean, boolean, boolean, boolean, androidx.constraintlayout.solver.SolverVariable, androidx.constraintlayout.solver.SolverVariable, androidx.constraintlayout.solver.widgets.ConstraintWidget$DimensionBehaviour, boolean, androidx.constraintlayout.solver.widgets.ConstraintAnchor, androidx.constraintlayout.solver.widgets.ConstraintAnchor, int, int, int, int, float, boolean, boolean, boolean, boolean, boolean, int, int, int, int, float, boolean):void");
    }

    /* renamed from: A */
    public int m34053A() {
        return this.f2093C0;
    }

    /* renamed from: A0 */
    public void m34052A0(float f) {
        this.f2147k0 = f;
    }

    /* renamed from: B */
    public DimensionBehaviour m34051B() {
        return this.f2122V[0];
    }

    /* renamed from: B0 */
    public void m34050B0(int i) {
        this.f2093C0 = i;
    }

    /* renamed from: C */
    public int m34049C() {
        ConstraintAnchor constraintAnchor = this.f2108K;
        int i = 0;
        if (constraintAnchor != null) {
            i = 0 + constraintAnchor.f2073g;
        }
        ConstraintAnchor constraintAnchor2 = this.f2112M;
        int i2 = i;
        if (constraintAnchor2 != null) {
            i2 = i + constraintAnchor2.f2073g;
        }
        return i2;
    }

    /* renamed from: C0 */
    public void m34048C0(int i, int i2) {
        this.f2129b0 = i;
        int i3 = i2 - i;
        this.f2124X = i3;
        int i4 = this.f2143i0;
        if (i3 < i4) {
            this.f2124X = i4;
        }
    }

    /* renamed from: D */
    public int m34047D() {
        return this.f2104I;
    }

    /* renamed from: D0 */
    public void m34046D0(DimensionBehaviour dimensionBehaviour) {
        this.f2122V[0] = dimensionBehaviour;
    }

    /* renamed from: E */
    public int m34045E() {
        return this.f2106J;
    }

    /* renamed from: E0 */
    public void m34044E0(int i, int i2, int i3, float f) {
        this.f2158q = i;
        this.f2164t = i2;
        int i4 = i3;
        if (i3 == Integer.MAX_VALUE) {
            i4 = 0;
        }
        this.f2166u = i4;
        this.f2168v = f;
        if (f <= 0.0f || f >= 1.0f || i != 0) {
            return;
        }
        this.f2158q = 2;
    }

    /* renamed from: F */
    public int m34043F(int i) {
        if (i == 0) {
            return m34013U();
        }
        if (i != 1) {
            return 0;
        }
        return m33962y();
    }

    /* renamed from: F0 */
    public void m34042F0(float f) {
        this.f2101G0[0] = f;
    }

    /* renamed from: G */
    public int m34041G() {
        return this.f2094D[1];
    }

    /* renamed from: G0 */
    public void m34040G0(int i, boolean z) {
        this.f2121U[i] = z;
    }

    /* renamed from: H */
    public int m34039H() {
        return this.f2094D[0];
    }

    /* renamed from: H0 */
    public void m34038H0(boolean z) {
        this.f2100G = z;
    }

    /* renamed from: I */
    public int m34037I() {
        return this.f2145j0;
    }

    /* renamed from: I0 */
    public void m34036I0(boolean z) {
        this.f2102H = z;
    }

    /* renamed from: J */
    public int m34035J() {
        return this.f2143i0;
    }

    /* renamed from: J0 */
    public void m34034J0(int i, int i2) {
        this.f2104I = i;
        this.f2106J = i2;
        m34028M0(false);
    }

    /* renamed from: K */
    public ConstraintWidget m34033K(int i) {
        ConstraintAnchor constraintAnchor;
        ConstraintAnchor constraintAnchor2;
        if (i != 0) {
            if (i != 1 || (constraintAnchor2 = (constraintAnchor = this.f2114N).f2072f) == null || constraintAnchor2.f2072f != constraintAnchor) {
                return null;
            }
            return constraintAnchor2.f2070d;
        }
        ConstraintAnchor constraintAnchor3 = this.f2112M;
        ConstraintAnchor constraintAnchor4 = constraintAnchor3.f2072f;
        if (constraintAnchor4 != null && constraintAnchor4.f2072f == constraintAnchor3) {
            return constraintAnchor4.f2070d;
        }
        return null;
    }

    /* renamed from: K0 */
    public void m34032K0(int i) {
        this.f2094D[1] = i;
    }

    /* renamed from: L */
    public ConstraintWidget m34031L() {
        return this.f2123W;
    }

    /* renamed from: L0 */
    public void m34030L0(int i) {
        this.f2094D[0] = i;
    }

    /* renamed from: M */
    public ConstraintWidget m34029M(int i) {
        ConstraintAnchor constraintAnchor;
        ConstraintAnchor constraintAnchor2;
        if (i != 0) {
            if (i != 1 || (constraintAnchor2 = (constraintAnchor = this.f2110L).f2072f) == null || constraintAnchor2.f2072f != constraintAnchor) {
                return null;
            }
            return constraintAnchor2.f2070d;
        }
        ConstraintAnchor constraintAnchor3 = this.f2108K;
        ConstraintAnchor constraintAnchor4 = constraintAnchor3.f2072f;
        if (constraintAnchor4 != null && constraintAnchor4.f2072f == constraintAnchor3) {
            return constraintAnchor4.f2070d;
        }
        return null;
    }

    /* renamed from: M0 */
    public void m34028M0(boolean z) {
        this.f2144j = z;
    }

    /* renamed from: N */
    public int m34027N() {
        return m34011V() + this.f2124X;
    }

    /* renamed from: N0 */
    public void m34026N0(int i) {
        if (i < 0) {
            this.f2145j0 = 0;
        } else {
            this.f2145j0 = i;
        }
    }

    /* renamed from: O */
    public WidgetRun m34025O(int i) {
        if (i == 0) {
            return this.f2136f;
        }
        if (i != 1) {
            return null;
        }
        return this.f2138g;
    }

    /* renamed from: O0 */
    public void m34024O0(int i) {
        if (i < 0) {
            this.f2143i0 = 0;
        } else {
            this.f2143i0 = i;
        }
    }

    /* renamed from: P */
    public float m34023P() {
        return this.f2149l0;
    }

    /* renamed from: P0 */
    public void m34022P0(int i, int i2) {
        this.f2129b0 = i;
        this.f2131c0 = i2;
    }

    /* renamed from: Q */
    public int m34021Q() {
        return this.f2095D0;
    }

    /* renamed from: Q0 */
    public void m34020Q0(ConstraintWidget constraintWidget) {
        this.f2123W = constraintWidget;
    }

    /* renamed from: R */
    public DimensionBehaviour m34019R() {
        return this.f2122V[1];
    }

    /* renamed from: R0 */
    public void m34018R0(float f) {
        this.f2149l0 = f;
    }

    /* renamed from: S */
    public int m34017S() {
        int i = 0;
        if (this.f2108K != null) {
            i = 0 + this.f2110L.f2073g;
        }
        int i2 = i;
        if (this.f2112M != null) {
            i2 = i + this.f2114N.f2073g;
        }
        return i2;
    }

    /* renamed from: S0 */
    public void m34016S0(int i) {
        this.f2095D0 = i;
    }

    /* renamed from: T */
    public int m34015T() {
        return this.f2155o0;
    }

    /* renamed from: T0 */
    public void m34014T0(int i, int i2) {
        this.f2131c0 = i;
        int i3 = i2 - i;
        this.f2125Y = i3;
        int i4 = this.f2145j0;
        if (i3 < i4) {
            this.f2125Y = i4;
        }
    }

    /* renamed from: U */
    public int m34013U() {
        if (this.f2155o0 == 8) {
            return 0;
        }
        return this.f2124X;
    }

    /* renamed from: U0 */
    public void m34012U0(DimensionBehaviour dimensionBehaviour) {
        this.f2122V[1] = dimensionBehaviour;
    }

    /* renamed from: V */
    public int m34011V() {
        ConstraintWidget constraintWidget = this.f2123W;
        return (constraintWidget == null || !(constraintWidget instanceof C0493d)) ? this.f2129b0 : ((C0493d) constraintWidget).f2311U0 + this.f2129b0;
    }

    /* renamed from: V0 */
    public void m34010V0(int i, int i2, int i3, float f) {
        this.f2160r = i;
        this.f2170w = i2;
        int i4 = i3;
        if (i3 == Integer.MAX_VALUE) {
            i4 = 0;
        }
        this.f2172x = i4;
        this.f2174y = f;
        if (f <= 0.0f || f >= 1.0f || i != 0) {
            return;
        }
        this.f2160r = 2;
    }

    /* renamed from: W */
    public int m34009W() {
        ConstraintWidget constraintWidget = this.f2123W;
        return (constraintWidget == null || !(constraintWidget instanceof C0493d)) ? this.f2131c0 : ((C0493d) constraintWidget).f2312V0 + this.f2131c0;
    }

    /* renamed from: W0 */
    public void m34008W0(float f) {
        this.f2101G0[1] = f;
    }

    /* renamed from: X */
    public boolean m34007X() {
        return this.f2098F;
    }

    /* renamed from: X0 */
    public void m34006X0(int i) {
        this.f2155o0 = i;
    }

    /* renamed from: Y */
    public boolean m34005Y(int i) {
        boolean z = true;
        if (i != 0) {
            return ((this.f2110L.f2072f != null ? 1 : 0) + (this.f2114N.f2072f != null ? 1 : 0)) + (this.f2115O.f2072f != null ? 1 : 0) < 2;
        }
        if ((this.f2108K.f2072f != null ? 1 : 0) + (this.f2112M.f2072f != null ? 1 : 0) >= 2) {
            z = false;
        }
        return z;
    }

    /* renamed from: Y0 */
    public void m34004Y0(int i) {
        this.f2124X = i;
        int i2 = this.f2143i0;
        if (i < i2) {
            this.f2124X = i2;
        }
    }

    /* renamed from: Z */
    public boolean m34003Z() {
        int size = this.f2120T.size();
        for (int i = 0; i < size; i++) {
            if (this.f2120T.get(i).m34062m()) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: Z0 */
    public void m34002Z0(int i) {
        this.f2129b0 = i;
    }

    /* renamed from: a0 */
    public void m34001a0(ConstraintAnchor.Type type, ConstraintWidget constraintWidget, ConstraintAnchor.Type type2, int i, int i2) {
        mo33769p(type).m34073b(constraintWidget.mo33769p(type2), i, i2, true);
    }

    /* renamed from: a1 */
    public void m34000a1(int i) {
        this.f2131c0 = i;
    }

    /* renamed from: b1 */
    public void m33998b1(boolean z, boolean z2, boolean z3, boolean z4) {
        if (this.f2090B == -1) {
            if (z3 && !z4) {
                this.f2090B = 0;
            } else if (!z3 && z4) {
                this.f2090B = 1;
                if (this.f2127a0 == -1) {
                    this.f2092C = 1.0f / this.f2092C;
                }
            }
        }
        if (this.f2090B == 0 && (!this.f2110L.m34060o() || !this.f2114N.m34060o())) {
            this.f2090B = 1;
        } else if (this.f2090B == 1 && (!this.f2108K.m34060o() || !this.f2112M.m34060o())) {
            this.f2090B = 0;
        }
        if (this.f2090B == -1 && (!this.f2110L.m34060o() || !this.f2114N.m34060o() || !this.f2108K.m34060o() || !this.f2112M.m34060o())) {
            if (this.f2110L.m34060o() && this.f2114N.m34060o()) {
                this.f2090B = 0;
            } else if (this.f2108K.m34060o() && this.f2112M.m34060o()) {
                this.f2092C = 1.0f / this.f2092C;
                this.f2090B = 1;
            }
        }
        if (this.f2090B == -1) {
            int i = this.f2164t;
            if (i > 0 && this.f2170w == 0) {
                this.f2090B = 0;
            } else if (i != 0 || this.f2170w <= 0) {
            } else {
                this.f2092C = 1.0f / this.f2092C;
                this.f2090B = 1;
            }
        }
    }

    /* renamed from: c0 */
    public boolean m33997c0() {
        ConstraintAnchor constraintAnchor = this.f2108K;
        ConstraintAnchor constraintAnchor2 = constraintAnchor.f2072f;
        if (constraintAnchor2 == null || constraintAnchor2.f2072f != constraintAnchor) {
            ConstraintAnchor constraintAnchor3 = this.f2112M;
            ConstraintAnchor constraintAnchor4 = constraintAnchor3.f2072f;
            return constraintAnchor4 != null && constraintAnchor4.f2072f == constraintAnchor3;
        }
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x0096, code lost:
        if (r0 == Integer.MAX_VALUE) goto L22;
     */
    /* renamed from: c1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void mo33858c1(boolean r4, boolean r5) {
        /*
            Method dump skipped, instructions count: 354
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.solver.widgets.ConstraintWidget.mo33858c1(boolean, boolean):void");
    }

    /* renamed from: d0 */
    public boolean m33995d0() {
        return this.f2100G;
    }

    /* JADX WARN: Code restructure failed: missing block: B:39:0x0120, code lost:
        if (r11 == Integer.MAX_VALUE) goto L40;
     */
    /* renamed from: d1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void mo33784d1(androidx.constraintlayout.solver.C0458d r7, boolean r8) {
        /*
            Method dump skipped, instructions count: 314
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.solver.widgets.ConstraintWidget.mo33784d1(androidx.constraintlayout.solver.d, boolean):void");
    }

    /* renamed from: e */
    public void m33994e(C0493d c0493d, C0458d c0458d, HashSet<ConstraintWidget> hashSet, int i, boolean z) {
        if (z) {
            if (!hashSet.contains(this)) {
                return;
            }
            C0500i.m33763a(c0493d, c0458d, this);
            hashSet.remove(this);
            mo33781g(c0458d, c0493d.m33865G1(64));
        }
        if (i == 0) {
            HashSet<ConstraintAnchor> m34071d = this.f2108K.m34071d();
            if (m34071d != null) {
                Iterator<ConstraintAnchor> it = m34071d.iterator();
                while (it.hasNext()) {
                    it.next().f2070d.m33994e(c0493d, c0458d, hashSet, i, true);
                }
            }
            HashSet<ConstraintAnchor> m34071d2 = this.f2112M.m34071d();
            if (m34071d2 == null) {
                return;
            }
            Iterator<ConstraintAnchor> it2 = m34071d2.iterator();
            while (it2.hasNext()) {
                it2.next().f2070d.m33994e(c0493d, c0458d, hashSet, i, true);
            }
            return;
        }
        HashSet<ConstraintAnchor> m34071d3 = this.f2110L.m34071d();
        if (m34071d3 != null) {
            Iterator<ConstraintAnchor> it3 = m34071d3.iterator();
            while (it3.hasNext()) {
                it3.next().f2070d.m33994e(c0493d, c0458d, hashSet, i, true);
            }
        }
        HashSet<ConstraintAnchor> m34071d4 = this.f2114N.m34071d();
        if (m34071d4 != null) {
            Iterator<ConstraintAnchor> it4 = m34071d4.iterator();
            while (it4.hasNext()) {
                it4.next().f2070d.m33994e(c0493d, c0458d, hashSet, i, true);
            }
        }
        HashSet<ConstraintAnchor> m34071d5 = this.f2115O.m34071d();
        if (m34071d5 == null) {
            return;
        }
        Iterator<ConstraintAnchor> it5 = m34071d5.iterator();
        while (it5.hasNext()) {
            it5.next().f2070d.m33994e(c0493d, c0458d, hashSet, i, true);
        }
    }

    /* renamed from: e0 */
    public boolean m33993e0() {
        ConstraintAnchor constraintAnchor = this.f2110L;
        ConstraintAnchor constraintAnchor2 = constraintAnchor.f2072f;
        if (constraintAnchor2 == null || constraintAnchor2.f2072f != constraintAnchor) {
            ConstraintAnchor constraintAnchor3 = this.f2114N;
            ConstraintAnchor constraintAnchor4 = constraintAnchor3.f2072f;
            return constraintAnchor4 != null && constraintAnchor4.f2072f == constraintAnchor3;
        }
        return true;
    }

    /* renamed from: f */
    public boolean m33992f() {
        return (this instanceof C0501j) || (this instanceof C0496f);
    }

    /* renamed from: f0 */
    public boolean m33991f0() {
        return this.f2102H;
    }

    /* JADX WARN: Removed duplicated region for block: B:277:0x0832  */
    /* JADX WARN: Removed duplicated region for block: B:290:0x0864  */
    /* JADX WARN: Removed duplicated region for block: B:293:0x0871  */
    /* JADX WARN: Removed duplicated region for block: B:294:0x087e  */
    /* JADX WARN: Removed duplicated region for block: B:297:0x088c  */
    /* JADX WARN: Removed duplicated region for block: B:298:0x089b  */
    /* JADX WARN: Removed duplicated region for block: B:305:0x08bb  */
    /* JADX WARN: Removed duplicated region for block: B:309:0x0900  */
    /* JADX WARN: Removed duplicated region for block: B:316:0x0979  */
    /* JADX WARN: Removed duplicated region for block: B:317:0x097f  */
    /* JADX WARN: Removed duplicated region for block: B:321:0x09c9  */
    /* JADX WARN: Removed duplicated region for block: B:327:0x0a0b  */
    /* renamed from: g */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void mo33781g(androidx.constraintlayout.solver.C0458d r30, boolean r31) {
        /*
            Method dump skipped, instructions count: 2627
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.solver.widgets.ConstraintWidget.mo33781g(androidx.constraintlayout.solver.d, boolean):void");
    }

    /* renamed from: g0 */
    public boolean m33990g0() {
        return this.f2144j && this.f2155o0 != 8;
    }

    /* renamed from: h */
    public boolean mo33779h() {
        return this.f2155o0 != 8;
    }

    /* renamed from: h0 */
    public boolean mo33778h0() {
        return this.f2150m || (this.f2108K.m34061n() && this.f2112M.m34061n());
    }

    /* renamed from: i0 */
    public boolean mo33776i0() {
        return this.f2152n || (this.f2110L.m34061n() && this.f2114N.m34061n());
    }

    /* JADX WARN: Code restructure failed: missing block: B:91:0x02f9, code lost:
        if (r7 == androidx.constraintlayout.solver.widgets.ConstraintAnchor.Type.RIGHT) goto L92;
     */
    /* renamed from: j */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m33988j(androidx.constraintlayout.solver.widgets.ConstraintAnchor.Type r7, androidx.constraintlayout.solver.widgets.ConstraintWidget r8, androidx.constraintlayout.solver.widgets.ConstraintAnchor.Type r9, int r10) {
        /*
            Method dump skipped, instructions count: 910
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.solver.widgets.ConstraintWidget.m33988j(androidx.constraintlayout.solver.widgets.ConstraintAnchor$Type, androidx.constraintlayout.solver.widgets.ConstraintWidget, androidx.constraintlayout.solver.widgets.ConstraintAnchor$Type, int):void");
    }

    /* renamed from: j0 */
    public boolean m33987j0() {
        DimensionBehaviour[] dimensionBehaviourArr = this.f2122V;
        DimensionBehaviour dimensionBehaviour = dimensionBehaviourArr[0];
        DimensionBehaviour dimensionBehaviour2 = DimensionBehaviour.MATCH_CONSTRAINT;
        boolean z = false;
        if (dimensionBehaviour == dimensionBehaviour2) {
            z = false;
            if (dimensionBehaviourArr[1] == dimensionBehaviour2) {
                z = true;
            }
        }
        return z;
    }

    /* renamed from: k */
    public void m33986k(ConstraintAnchor constraintAnchor, ConstraintAnchor constraintAnchor2, int i) {
        if (constraintAnchor.m34067h() == this) {
            m33988j(constraintAnchor.m34064k(), constraintAnchor2.m34067h(), constraintAnchor2.m34064k(), i);
        }
    }

    /* renamed from: k0 */
    public void mo33734k0() {
        this.f2108K.m34058q();
        this.f2110L.m34058q();
        this.f2112M.m34058q();
        this.f2114N.m34058q();
        this.f2115O.m34058q();
        this.f2116P.m34058q();
        this.f2117Q.m34058q();
        this.f2118R.m34058q();
        this.f2123W = null;
        this.f2096E = 0.0f;
        this.f2124X = 0;
        this.f2125Y = 0;
        this.f2126Z = 0.0f;
        this.f2127a0 = -1;
        this.f2129b0 = 0;
        this.f2131c0 = 0;
        this.f2137f0 = 0;
        this.f2139g0 = 0;
        this.f2141h0 = 0;
        this.f2143i0 = 0;
        this.f2145j0 = 0;
        float f = f2087a;
        this.f2147k0 = f;
        this.f2149l0 = f;
        DimensionBehaviour[] dimensionBehaviourArr = this.f2122V;
        DimensionBehaviour dimensionBehaviour = DimensionBehaviour.FIXED;
        dimensionBehaviourArr[0] = dimensionBehaviour;
        dimensionBehaviourArr[1] = dimensionBehaviour;
        this.f2151m0 = null;
        this.f2153n0 = 0;
        this.f2155o0 = 0;
        this.f2159q0 = null;
        this.f2177z0 = false;
        this.f2089A0 = false;
        this.f2093C0 = 0;
        this.f2095D0 = 0;
        this.f2097E0 = false;
        this.f2099F0 = false;
        float[] fArr = this.f2101G0;
        fArr[0] = -1.0f;
        fArr[1] = -1.0f;
        this.f2154o = -1;
        this.f2156p = -1;
        int[] iArr = this.f2094D;
        iArr[0] = Integer.MAX_VALUE;
        iArr[1] = Integer.MAX_VALUE;
        this.f2158q = 0;
        this.f2160r = 0;
        this.f2168v = 1.0f;
        this.f2174y = 1.0f;
        this.f2166u = Integer.MAX_VALUE;
        this.f2172x = Integer.MAX_VALUE;
        this.f2164t = 0;
        this.f2170w = 0;
        this.f2142i = false;
        this.f2090B = -1;
        this.f2092C = 1.0f;
        this.f2091B0 = false;
        boolean[] zArr = this.f2140h;
        zArr[0] = true;
        zArr[1] = true;
        this.f2102H = false;
        boolean[] zArr2 = this.f2121U;
        zArr2[0] = false;
        zArr2[1] = false;
        this.f2144j = true;
    }

    /* renamed from: l */
    public void m33985l(ConstraintWidget constraintWidget, float f, int i) {
        ConstraintAnchor.Type type = ConstraintAnchor.Type.CENTER;
        m34001a0(type, constraintWidget, type, i, 0);
        this.f2096E = f;
    }

    /* renamed from: l0 */
    public void m33984l0() {
        ConstraintWidget m34031L = m34031L();
        if (m34031L == null || !(m34031L instanceof C0493d) || !((C0493d) m34031L()).m33841y1()) {
            int size = this.f2120T.size();
            for (int i = 0; i < size; i++) {
                this.f2120T.get(i).m34058q();
            }
        }
    }

    /* renamed from: m */
    public void mo33764m(ConstraintWidget constraintWidget, HashMap<ConstraintWidget, ConstraintWidget> hashMap) {
        this.f2154o = constraintWidget.f2154o;
        this.f2156p = constraintWidget.f2156p;
        this.f2158q = constraintWidget.f2158q;
        this.f2160r = constraintWidget.f2160r;
        int[] iArr = this.f2162s;
        int[] iArr2 = constraintWidget.f2162s;
        iArr[0] = iArr2[0];
        iArr[1] = iArr2[1];
        this.f2164t = constraintWidget.f2164t;
        this.f2166u = constraintWidget.f2166u;
        this.f2170w = constraintWidget.f2170w;
        this.f2172x = constraintWidget.f2172x;
        this.f2174y = constraintWidget.f2174y;
        this.f2176z = constraintWidget.f2176z;
        this.f2088A = constraintWidget.f2088A;
        this.f2090B = constraintWidget.f2090B;
        this.f2092C = constraintWidget.f2092C;
        int[] iArr3 = constraintWidget.f2094D;
        this.f2094D = Arrays.copyOf(iArr3, iArr3.length);
        this.f2096E = constraintWidget.f2096E;
        this.f2098F = constraintWidget.f2098F;
        this.f2100G = constraintWidget.f2100G;
        this.f2108K.m34058q();
        this.f2110L.m34058q();
        this.f2112M.m34058q();
        this.f2114N.m34058q();
        this.f2115O.m34058q();
        this.f2116P.m34058q();
        this.f2117Q.m34058q();
        this.f2118R.m34058q();
        this.f2122V = (DimensionBehaviour[]) Arrays.copyOf(this.f2122V, 2);
        this.f2123W = this.f2123W == null ? null : hashMap.get(constraintWidget.f2123W);
        this.f2124X = constraintWidget.f2124X;
        this.f2125Y = constraintWidget.f2125Y;
        this.f2126Z = constraintWidget.f2126Z;
        this.f2127a0 = constraintWidget.f2127a0;
        this.f2129b0 = constraintWidget.f2129b0;
        this.f2131c0 = constraintWidget.f2131c0;
        this.f2133d0 = constraintWidget.f2133d0;
        this.f2135e0 = constraintWidget.f2135e0;
        this.f2137f0 = constraintWidget.f2137f0;
        this.f2139g0 = constraintWidget.f2139g0;
        this.f2141h0 = constraintWidget.f2141h0;
        this.f2143i0 = constraintWidget.f2143i0;
        this.f2145j0 = constraintWidget.f2145j0;
        this.f2147k0 = constraintWidget.f2147k0;
        this.f2149l0 = constraintWidget.f2149l0;
        this.f2151m0 = constraintWidget.f2151m0;
        this.f2153n0 = constraintWidget.f2153n0;
        this.f2155o0 = constraintWidget.f2155o0;
        this.f2157p0 = constraintWidget.f2157p0;
        this.f2159q0 = constraintWidget.f2159q0;
        this.f2161r0 = constraintWidget.f2161r0;
        this.f2163s0 = constraintWidget.f2163s0;
        this.f2165t0 = constraintWidget.f2165t0;
        this.f2167u0 = constraintWidget.f2167u0;
        this.f2169v0 = constraintWidget.f2169v0;
        this.f2171w0 = constraintWidget.f2171w0;
        this.f2173x0 = constraintWidget.f2173x0;
        this.f2175y0 = constraintWidget.f2175y0;
        this.f2177z0 = constraintWidget.f2177z0;
        this.f2089A0 = constraintWidget.f2089A0;
        this.f2093C0 = constraintWidget.f2093C0;
        this.f2095D0 = constraintWidget.f2095D0;
        this.f2097E0 = constraintWidget.f2097E0;
        this.f2099F0 = constraintWidget.f2099F0;
        float[] fArr = this.f2101G0;
        float[] fArr2 = constraintWidget.f2101G0;
        fArr[0] = fArr2[0];
        fArr[1] = fArr2[1];
        ConstraintWidget[] constraintWidgetArr = this.f2103H0;
        ConstraintWidget[] constraintWidgetArr2 = constraintWidget.f2103H0;
        constraintWidgetArr[0] = constraintWidgetArr2[0];
        constraintWidgetArr[1] = constraintWidgetArr2[1];
        ConstraintWidget[] constraintWidgetArr3 = this.f2105I0;
        ConstraintWidget[] constraintWidgetArr4 = constraintWidget.f2105I0;
        constraintWidgetArr3[0] = constraintWidgetArr4[0];
        constraintWidgetArr3[1] = constraintWidgetArr4[1];
        ConstraintWidget constraintWidget2 = constraintWidget.f2107J0;
        this.f2107J0 = constraintWidget2 == null ? null : hashMap.get(constraintWidget2);
        ConstraintWidget constraintWidget3 = constraintWidget.f2109K0;
        this.f2109K0 = constraintWidget3 == null ? null : hashMap.get(constraintWidget3);
    }

    /* renamed from: m0 */
    public void m33983m0() {
        this.f2150m = false;
        this.f2152n = false;
        int size = this.f2120T.size();
        for (int i = 0; i < size; i++) {
            this.f2120T.get(i).m34057r();
        }
    }

    /* renamed from: n */
    public void m33982n(C0458d c0458d) {
        c0458d.m34118q(this.f2108K);
        c0458d.m34118q(this.f2110L);
        c0458d.m34118q(this.f2112M);
        c0458d.m34118q(this.f2114N);
        if (this.f2141h0 > 0) {
            c0458d.m34118q(this.f2115O);
        }
    }

    /* renamed from: n0 */
    public void mo33733n0(C0457c c0457c) {
        this.f2108K.m34056s(c0457c);
        this.f2110L.m34056s(c0457c);
        this.f2112M.m34056s(c0457c);
        this.f2114N.m34056s(c0457c);
        this.f2115O.m34056s(c0457c);
        this.f2118R.m34056s(c0457c);
        this.f2116P.m34056s(c0457c);
        this.f2117Q.m34056s(c0457c);
    }

    /* renamed from: o */
    public void m33981o() {
        if (this.f2136f == null) {
            this.f2136f = new C0484k(this);
        }
        if (this.f2138g == null) {
            this.f2138g = new C0487m(this);
        }
    }

    /* renamed from: o0 */
    public void m33980o0(int i) {
        this.f2141h0 = i;
        this.f2098F = i > 0;
    }

    /* renamed from: p */
    public ConstraintAnchor mo33769p(ConstraintAnchor.Type type) {
        switch (C0469a.f2183a[type.ordinal()]) {
            case 1:
                return this.f2108K;
            case 2:
                return this.f2110L;
            case 3:
                return this.f2112M;
            case 4:
                return this.f2114N;
            case 5:
                return this.f2115O;
            case 6:
                return this.f2118R;
            case 7:
                return this.f2116P;
            case 8:
                return this.f2117Q;
            case 9:
                return null;
            default:
                throw new AssertionError(type.name());
        }
    }

    /* renamed from: p0 */
    public void m33979p0(Object obj) {
        this.f2151m0 = obj;
    }

    /* renamed from: q */
    public int m33978q() {
        return this.f2141h0;
    }

    /* renamed from: q0 */
    public void m33977q0(String str) {
        this.f2157p0 = str;
    }

    /* renamed from: r */
    public float m33976r(int i) {
        if (i == 0) {
            return this.f2147k0;
        }
        if (i != 1) {
            return -1.0f;
        }
        return this.f2149l0;
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:37:0x00f0 -> B:38:0x00f3). Please submit an issue!!! */
    /* renamed from: r0 */
    public void m33975r0(String str) {
        float f;
        if (str == null || str.length() == 0) {
            this.f2126Z = 0.0f;
            return;
        }
        int length = str.length();
        int indexOf = str.indexOf(44);
        int i = -1;
        int i2 = 0;
        if (indexOf > 0) {
            i = -1;
            i2 = 0;
            if (indexOf < length - 1) {
                String substring = str.substring(0, indexOf);
                if (substring.equalsIgnoreCase("W")) {
                    i = 0;
                } else {
                    i = -1;
                    if (substring.equalsIgnoreCase("H")) {
                        i = 1;
                    }
                }
                i2 = indexOf + 1;
            }
        }
        int indexOf2 = str.indexOf(58);
        if (indexOf2 < 0 || indexOf2 >= length - 1) {
            String substring2 = str.substring(i2);
            if (substring2.length() > 0) {
                f = Float.parseFloat(substring2);
            }
            f = 0.0f;
        } else {
            String substring3 = str.substring(i2, indexOf2);
            String substring4 = str.substring(indexOf2 + 1);
            if (substring3.length() > 0 && substring4.length() > 0) {
                float parseFloat = Float.parseFloat(substring3);
                float parseFloat2 = Float.parseFloat(substring4);
                if (parseFloat > 0.0f && parseFloat2 > 0.0f) {
                    f = i == 1 ? Math.abs(parseFloat2 / parseFloat) : Math.abs(parseFloat / parseFloat2);
                }
            }
            f = 0.0f;
        }
        if (f <= 0.0f) {
            return;
        }
        this.f2126Z = f;
        this.f2127a0 = i;
    }

    /* renamed from: s */
    public int m33974s() {
        return m34009W() + this.f2125Y;
    }

    /* renamed from: s0 */
    public void m33973s0(int i) {
        if (!this.f2098F) {
            return;
        }
        int i2 = i - this.f2141h0;
        int i3 = this.f2125Y;
        this.f2131c0 = i2;
        this.f2110L.m34055t(i2);
        this.f2114N.m34055t(i3 + i2);
        this.f2115O.m34055t(i);
        this.f2152n = true;
    }

    /* renamed from: t */
    public Object m33972t() {
        return this.f2151m0;
    }

    /* renamed from: t0 */
    public void m33971t0(int i, int i2) {
        this.f2108K.m34055t(i);
        this.f2112M.m34055t(i2);
        this.f2129b0 = i;
        this.f2124X = i2 - i;
        this.f2150m = true;
    }

    public String toString() {
        String str;
        StringBuilder sb = new StringBuilder();
        if (this.f2159q0 != null) {
            str = "type: " + this.f2159q0 + " ";
        } else {
            str = "";
        }
        sb.append(str);
        String str2 = "";
        if (this.f2157p0 != null) {
            str2 = "id: " + this.f2157p0 + " ";
        }
        sb.append(str2);
        sb.append("(");
        sb.append(this.f2129b0);
        sb.append(", ");
        sb.append(this.f2131c0);
        sb.append(") - (");
        sb.append(this.f2124X);
        sb.append(" x ");
        sb.append(this.f2125Y);
        sb.append(")");
        return sb.toString();
    }

    /* renamed from: u */
    public String m33970u() {
        return this.f2157p0;
    }

    /* renamed from: u0 */
    public void m33969u0(int i) {
        this.f2108K.m34055t(i);
        this.f2129b0 = i;
    }

    /* renamed from: v */
    public DimensionBehaviour m33968v(int i) {
        if (i == 0) {
            return m34051B();
        }
        if (i != 1) {
            return null;
        }
        return m34019R();
    }

    /* renamed from: v0 */
    public void m33967v0(int i) {
        this.f2110L.m34055t(i);
        this.f2131c0 = i;
    }

    /* renamed from: w */
    public float m33966w() {
        return this.f2126Z;
    }

    /* renamed from: w0 */
    public void m33965w0(int i, int i2) {
        this.f2110L.m34055t(i);
        this.f2114N.m34055t(i2);
        this.f2131c0 = i;
        this.f2125Y = i2 - i;
        if (this.f2098F) {
            this.f2115O.m34055t(i + this.f2141h0);
        }
        this.f2152n = true;
    }

    /* renamed from: x */
    public int m33964x() {
        return this.f2127a0;
    }

    /* renamed from: x0 */
    public void m33963x0(int i, int i2, int i3, int i4) {
        int i5 = i3 - i;
        int i6 = i4 - i2;
        this.f2129b0 = i;
        this.f2131c0 = i2;
        if (this.f2155o0 == 8) {
            this.f2124X = 0;
            this.f2125Y = 0;
            return;
        }
        DimensionBehaviour[] dimensionBehaviourArr = this.f2122V;
        DimensionBehaviour dimensionBehaviour = dimensionBehaviourArr[0];
        DimensionBehaviour dimensionBehaviour2 = DimensionBehaviour.FIXED;
        int i7 = i5;
        if (dimensionBehaviour == dimensionBehaviour2) {
            int i8 = this.f2124X;
            i7 = i5;
            if (i5 < i8) {
                i7 = i8;
            }
        }
        int i9 = i6;
        if (dimensionBehaviourArr[1] == dimensionBehaviour2) {
            int i10 = this.f2125Y;
            i9 = i6;
            if (i6 < i10) {
                i9 = i10;
            }
        }
        this.f2124X = i7;
        this.f2125Y = i9;
        int i11 = this.f2145j0;
        if (i9 < i11) {
            this.f2125Y = i11;
        }
        int i12 = this.f2143i0;
        if (i7 >= i12) {
            return;
        }
        this.f2124X = i12;
    }

    /* renamed from: y */
    public int m33962y() {
        if (this.f2155o0 == 8) {
            return 0;
        }
        return this.f2125Y;
    }

    /* renamed from: y0 */
    public void m33961y0(boolean z) {
        this.f2098F = z;
    }

    /* renamed from: z */
    public float m33960z() {
        return this.f2147k0;
    }

    /* renamed from: z0 */
    public void m33959z0(int i) {
        this.f2125Y = i;
        int i2 = this.f2145j0;
        if (i < i2) {
            this.f2125Y = i2;
        }
    }
}
