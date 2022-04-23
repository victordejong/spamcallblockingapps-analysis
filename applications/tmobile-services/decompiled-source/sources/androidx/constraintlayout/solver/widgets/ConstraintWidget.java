package androidx.constraintlayout.solver.widgets;

import androidx.constraintlayout.solver.Cache;
import androidx.constraintlayout.solver.LinearSystem;
import androidx.constraintlayout.solver.widgets.ConstraintAnchor;
import androidx.constraintlayout.solver.widgets.analyzer.ChainRun;
import androidx.constraintlayout.solver.widgets.analyzer.HorizontalWidgetRun;
import androidx.constraintlayout.solver.widgets.analyzer.VerticalWidgetRun;
import androidx.constraintlayout.solver.widgets.analyzer.WidgetRun;
import com.google.android.gms.common.api.Api;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/solver/widgets/ConstraintWidget.class */
public class ConstraintWidget {

    /* renamed from: K0 */
    public static float f2197K0 = 0.5f;

    /* renamed from: B0 */
    boolean f2201B0;

    /* renamed from: C0 */
    boolean f2203C0;

    /* renamed from: E */
    private boolean f2206E;

    /* renamed from: P */
    public ConstraintAnchor f2223P;

    /* renamed from: Q */
    public ConstraintAnchor[] f2224Q;

    /* renamed from: T */
    public DimensionBehaviour[] f2227T;

    /* renamed from: b */
    public ChainRun f2236b;

    /* renamed from: c */
    public ChainRun f2238c;

    /* renamed from: g0 */
    protected int f2247g0;

    /* renamed from: h0 */
    protected int f2249h0;

    /* renamed from: i0 */
    float f2251i0;

    /* renamed from: j0 */
    float f2253j0;

    /* renamed from: k0 */
    private Object f2255k0;

    /* renamed from: p0 */
    int f2265p0;

    /* renamed from: q0 */
    int f2267q0;

    /* renamed from: r0 */
    int f2269r0;

    /* renamed from: s0 */
    int f2271s0;

    /* renamed from: t0 */
    boolean f2273t0;

    /* renamed from: u0 */
    boolean f2275u0;

    /* renamed from: v0 */
    boolean f2277v0;

    /* renamed from: w0 */
    boolean f2279w0;

    /* renamed from: x */
    public boolean f2280x;

    /* renamed from: x0 */
    boolean f2281x0;

    /* renamed from: y */
    public boolean f2282y;

    /* renamed from: y0 */
    boolean f2283y0;

    /* renamed from: a */
    public boolean f2234a = false;

    /* renamed from: d */
    public HorizontalWidgetRun f2240d = null;

    /* renamed from: e */
    public VerticalWidgetRun f2242e = null;

    /* renamed from: f */
    public boolean[] f2244f = {true, true};

    /* renamed from: g */
    public int[] f2246g = {0, 0, 0, 0};

    /* renamed from: h */
    private boolean f2248h = true;

    /* renamed from: i */
    private boolean f2250i = false;

    /* renamed from: j */
    private boolean f2252j = true;

    /* renamed from: k */
    private boolean f2254k = false;

    /* renamed from: l */
    private boolean f2256l = false;

    /* renamed from: m */
    public int f2258m = -1;

    /* renamed from: n */
    public int f2260n = -1;

    /* renamed from: o */
    public int f2262o = 0;

    /* renamed from: p */
    public int f2264p = 0;

    /* renamed from: q */
    public int[] f2266q = new int[2];

    /* renamed from: r */
    public int f2268r = 0;

    /* renamed from: s */
    public int f2270s = 0;

    /* renamed from: t */
    public float f2272t = 1.0f;

    /* renamed from: u */
    public int f2274u = 0;

    /* renamed from: v */
    public int f2276v = 0;

    /* renamed from: w */
    public float f2278w = 1.0f;

    /* renamed from: z */
    int f2284z = -1;

    /* renamed from: A */
    float f2198A = 1.0f;

    /* renamed from: B */
    private int[] f2200B = {Api.BaseClientBuilder.API_PRIORITY_OTHER, Api.BaseClientBuilder.API_PRIORITY_OTHER};

    /* renamed from: C */
    private float f2202C = 0.0f;

    /* renamed from: D */
    private boolean f2204D = false;

    /* renamed from: F */
    private boolean f2208F = false;

    /* renamed from: G */
    private int f2210G = 0;

    /* renamed from: H */
    private int f2212H = 0;

    /* renamed from: I */
    public ConstraintAnchor f2214I = new ConstraintAnchor(this, ConstraintAnchor.Type.LEFT);

    /* renamed from: J */
    public ConstraintAnchor f2216J = new ConstraintAnchor(this, ConstraintAnchor.Type.TOP);

    /* renamed from: K */
    public ConstraintAnchor f2218K = new ConstraintAnchor(this, ConstraintAnchor.Type.RIGHT);

    /* renamed from: L */
    public ConstraintAnchor f2219L = new ConstraintAnchor(this, ConstraintAnchor.Type.BOTTOM);

    /* renamed from: M */
    public ConstraintAnchor f2220M = new ConstraintAnchor(this, ConstraintAnchor.Type.BASELINE);

    /* renamed from: N */
    ConstraintAnchor f2221N = new ConstraintAnchor(this, ConstraintAnchor.Type.CENTER_X);

    /* renamed from: O */
    ConstraintAnchor f2222O = new ConstraintAnchor(this, ConstraintAnchor.Type.CENTER_Y);

    /* renamed from: R */
    protected ArrayList<ConstraintAnchor> f2225R = new ArrayList<>();

    /* renamed from: S */
    private boolean[] f2226S = new boolean[2];

    /* renamed from: U */
    public ConstraintWidget f2228U = null;

    /* renamed from: V */
    int f2229V = 0;

    /* renamed from: W */
    int f2230W = 0;

    /* renamed from: X */
    public float f2231X = 0.0f;

    /* renamed from: Y */
    protected int f2232Y = -1;

    /* renamed from: Z */
    protected int f2233Z = 0;

    /* renamed from: a0 */
    protected int f2235a0 = 0;

    /* renamed from: b0 */
    int f2237b0 = 0;

    /* renamed from: c0 */
    int f2239c0 = 0;

    /* renamed from: d0 */
    protected int f2241d0 = 0;

    /* renamed from: e0 */
    protected int f2243e0 = 0;

    /* renamed from: f0 */
    int f2245f0 = 0;

    /* renamed from: l0 */
    private int f2257l0 = 0;

    /* renamed from: m0 */
    private int f2259m0 = 0;

    /* renamed from: n0 */
    private String f2261n0 = null;

    /* renamed from: o0 */
    private String f2263o0 = null;

    /* renamed from: z0 */
    int f2285z0 = 0;

    /* renamed from: A0 */
    int f2199A0 = 0;

    /* renamed from: D0 */
    public float[] f2205D0 = {-1.0f, -1.0f};

    /* renamed from: E0 */
    protected ConstraintWidget[] f2207E0 = {null, null};

    /* renamed from: F0 */
    protected ConstraintWidget[] f2209F0 = {null, null};

    /* renamed from: G0 */
    ConstraintWidget f2211G0 = null;

    /* renamed from: H0 */
    ConstraintWidget f2213H0 = null;

    /* renamed from: I0 */
    public int f2215I0 = -1;

    /* renamed from: J0 */
    public int f2217J0 = -1;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.constraintlayout.solver.widgets.ConstraintWidget$1 */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/solver/widgets/ConstraintWidget$1.class */
    public static /* synthetic */ class C01671 {

        /* renamed from: a */
        static final /* synthetic */ int[] f2286a;

        /* renamed from: b */
        static final /* synthetic */ int[] f2287b;

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
            f2287b = iArr;
            try {
                iArr[DimensionBehaviour.FIXED.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f2287b[DimensionBehaviour.WRAP_CONTENT.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f2287b[DimensionBehaviour.MATCH_PARENT.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f2287b[DimensionBehaviour.MATCH_CONSTRAINT.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            int[] iArr2 = new int[ConstraintAnchor.Type.values().length];
            f2286a = iArr2;
            try {
                iArr2[ConstraintAnchor.Type.LEFT.ordinal()] = 1;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f2286a[ConstraintAnchor.Type.TOP.ordinal()] = 2;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f2286a[ConstraintAnchor.Type.RIGHT.ordinal()] = 3;
            } catch (NoSuchFieldError e7) {
            }
            try {
                f2286a[ConstraintAnchor.Type.BOTTOM.ordinal()] = 4;
            } catch (NoSuchFieldError e8) {
            }
            try {
                f2286a[ConstraintAnchor.Type.BASELINE.ordinal()] = 5;
            } catch (NoSuchFieldError e9) {
            }
            try {
                f2286a[ConstraintAnchor.Type.CENTER.ordinal()] = 6;
            } catch (NoSuchFieldError e10) {
            }
            try {
                f2286a[ConstraintAnchor.Type.CENTER_X.ordinal()] = 7;
            } catch (NoSuchFieldError e11) {
            }
            try {
                f2286a[ConstraintAnchor.Type.CENTER_Y.ordinal()] = 8;
            } catch (NoSuchFieldError e12) {
            }
            try {
                f2286a[ConstraintAnchor.Type.NONE.ordinal()] = 9;
            } catch (NoSuchFieldError e13) {
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour.class */
    public enum DimensionBehaviour {
        FIXED,
        WRAP_CONTENT,
        MATCH_CONSTRAINT,
        MATCH_PARENT
    }

    public ConstraintWidget() {
        ConstraintAnchor constraintAnchor = new ConstraintAnchor(this, ConstraintAnchor.Type.CENTER);
        this.f2223P = constraintAnchor;
        this.f2224Q = new ConstraintAnchor[]{this.f2214I, this.f2218K, this.f2216J, this.f2219L, this.f2220M, constraintAnchor};
        DimensionBehaviour dimensionBehaviour = DimensionBehaviour.FIXED;
        this.f2227T = new DimensionBehaviour[]{dimensionBehaviour, dimensionBehaviour};
        float f = f2197K0;
        this.f2251i0 = f;
        this.f2253j0 = f;
        m20339d();
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x003e, code lost:
        if (r0[r5].f2192f.f2192f == r0[r5]) goto L_0x0047;
     */
    /* renamed from: b0 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean m20342b0(int r5) {
        /*
            r4 = this;
            r0 = r5
            r1 = 2
            int r0 = r0 * r1
            r5 = r0
            r0 = r4
            androidx.constraintlayout.solver.widgets.ConstraintAnchor[] r0 = r0.f2224Q
            r6 = r0
            r0 = r6
            r1 = r5
            r0 = r0[r1]
            androidx.constraintlayout.solver.widgets.ConstraintAnchor r0 = r0.f2192f
            r7 = r0
            r0 = 1
            r8 = r0
            r0 = r7
            if (r0 == 0) goto L_0x0044
            r0 = r6
            r1 = r5
            r0 = r0[r1]
            androidx.constraintlayout.solver.widgets.ConstraintAnchor r0 = r0.f2192f
            androidx.constraintlayout.solver.widgets.ConstraintAnchor r0 = r0.f2192f
            r1 = r6
            r2 = r5
            r1 = r1[r2]
            if (r0 == r1) goto L_0x0044
            int r5 = r5 + 1
            r0 = r6
            r1 = r5
            r0 = r0[r1]
            androidx.constraintlayout.solver.widgets.ConstraintAnchor r0 = r0.f2192f
            if (r0 == 0) goto L_0x0044
            r0 = r6
            r1 = r5
            r0 = r0[r1]
            androidx.constraintlayout.solver.widgets.ConstraintAnchor r0 = r0.f2192f
            androidx.constraintlayout.solver.widgets.ConstraintAnchor r0 = r0.f2192f
            r1 = r6
            r2 = r5
            r1 = r1[r2]
            if (r0 != r1) goto L_0x0044
            goto L_0x0047
        L_0x0044:
            r0 = 0
            r8 = r0
        L_0x0047:
            r0 = r8
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.solver.widgets.ConstraintWidget.m20342b0(int):boolean");
    }

    /* renamed from: d */
    private void m20339d() {
        this.f2225R.add(this.f2214I);
        this.f2225R.add(this.f2216J);
        this.f2225R.add(this.f2218K);
        this.f2225R.add(this.f2219L);
        this.f2225R.add(this.f2221N);
        this.f2225R.add(this.f2222O);
        this.f2225R.add(this.f2223P);
        this.f2225R.add(this.f2220M);
    }

    /* JADX WARN: Removed duplicated region for block: B:253:0x067b  */
    /* JADX WARN: Removed duplicated region for block: B:272:0x06e8  */
    /* JADX WARN: Removed duplicated region for block: B:296:0x076c  */
    /* JADX WARN: Removed duplicated region for block: B:336:0x082d  */
    /* JADX WARN: Removed duplicated region for block: B:345:0x085a  */
    /* JADX WARN: Removed duplicated region for block: B:360:0x08a6  */
    /* JADX WARN: Removed duplicated region for block: B:413:? A[ADDED_TO_REGION, RETURN, SYNTHETIC] */
    /* renamed from: i */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void m20332i(androidx.constraintlayout.solver.LinearSystem r11, boolean r12, boolean r13, boolean r14, boolean r15, androidx.constraintlayout.solver.SolverVariable r16, androidx.constraintlayout.solver.SolverVariable r17, androidx.constraintlayout.solver.widgets.ConstraintWidget.DimensionBehaviour r18, boolean r19, androidx.constraintlayout.solver.widgets.ConstraintAnchor r20, androidx.constraintlayout.solver.widgets.ConstraintAnchor r21, int r22, int r23, int r24, int r25, float r26, boolean r27, boolean r28, boolean r29, boolean r30, boolean r31, int r32, int r33, int r34, int r35, float r36, boolean r37) {
        /*
            Method dump skipped, instructions count: 2466
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.solver.widgets.ConstraintWidget.m20332i(androidx.constraintlayout.solver.LinearSystem, boolean, boolean, boolean, boolean, androidx.constraintlayout.solver.SolverVariable, androidx.constraintlayout.solver.SolverVariable, androidx.constraintlayout.solver.widgets.ConstraintWidget$DimensionBehaviour, boolean, androidx.constraintlayout.solver.widgets.ConstraintAnchor, androidx.constraintlayout.solver.widgets.ConstraintAnchor, int, int, int, int, float, boolean, boolean, boolean, boolean, boolean, int, int, int, int, float, boolean):void");
    }

    /* renamed from: A */
    public int m20396A() {
        return this.f2285z0;
    }

    /* renamed from: A0 */
    public void m20395A0(float f) {
        this.f2251i0 = f;
    }

    /* renamed from: B */
    public DimensionBehaviour m20394B() {
        return this.f2227T[0];
    }

    /* renamed from: B0 */
    public void m20393B0(int i) {
        this.f2285z0 = i;
    }

    /* renamed from: C */
    public int m20392C() {
        ConstraintAnchor constraintAnchor = this.f2214I;
        int i = 0;
        if (constraintAnchor != null) {
            i = 0 + constraintAnchor.f2193g;
        }
        ConstraintAnchor constraintAnchor2 = this.f2218K;
        int i2 = i;
        if (constraintAnchor2 != null) {
            i2 = i + constraintAnchor2.f2193g;
        }
        return i2;
    }

    /* renamed from: C0 */
    public void m20391C0(int i, int i2) {
        this.f2233Z = i;
        int i3 = i2 - i;
        this.f2229V = i3;
        int i4 = this.f2247g0;
        if (i3 < i4) {
            this.f2229V = i4;
        }
    }

    /* renamed from: D */
    public int m20390D() {
        return this.f2210G;
    }

    /* renamed from: D0 */
    public void m20389D0(DimensionBehaviour dimensionBehaviour) {
        this.f2227T[0] = dimensionBehaviour;
    }

    /* renamed from: E */
    public int m20388E() {
        return this.f2212H;
    }

    /* renamed from: E0 */
    public void m20387E0(int i, int i2, int i3, float f) {
        this.f2262o = i;
        this.f2268r = i2;
        int i4 = i3;
        if (i3 == Integer.MAX_VALUE) {
            i4 = 0;
        }
        this.f2270s = i4;
        this.f2272t = f;
        if (f > 0.0f && f < 1.0f && this.f2262o == 0) {
            this.f2262o = 2;
        }
    }

    /* renamed from: F */
    public int m20386F(int i) {
        if (i == 0) {
            return m20356U();
        }
        if (i == 1) {
            return m20305y();
        }
        return 0;
    }

    /* renamed from: F0 */
    public void m20385F0(float f) {
        this.f2205D0[0] = f;
    }

    /* renamed from: G */
    public int m20384G() {
        return this.f2200B[1];
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: G0 */
    public void m20383G0(int i, boolean z) {
        this.f2226S[i] = z;
    }

    /* renamed from: H */
    public int m20382H() {
        return this.f2200B[0];
    }

    /* renamed from: H0 */
    public void m20381H0(boolean z) {
        this.f2206E = z;
    }

    /* renamed from: I */
    public int m20380I() {
        return this.f2249h0;
    }

    /* renamed from: I0 */
    public void m20379I0(boolean z) {
        this.f2208F = z;
    }

    /* renamed from: J */
    public int m20378J() {
        return this.f2247g0;
    }

    /* renamed from: J0 */
    public void m20377J0(int i, int i2) {
        this.f2210G = i;
        this.f2212H = i2;
        m20371M0(false);
    }

    /* renamed from: K */
    public ConstraintWidget m20376K(int i) {
        ConstraintAnchor constraintAnchor;
        ConstraintAnchor constraintAnchor2;
        if (i == 0) {
            ConstraintAnchor constraintAnchor3 = this.f2218K;
            ConstraintAnchor constraintAnchor4 = constraintAnchor3.f2192f;
            if (constraintAnchor4 == null || constraintAnchor4.f2192f != constraintAnchor3) {
                return null;
            }
            return constraintAnchor4.f2190d;
        } else if (i == 1 && (constraintAnchor2 = (constraintAnchor = this.f2219L).f2192f) != null && constraintAnchor2.f2192f == constraintAnchor) {
            return constraintAnchor2.f2190d;
        } else {
            return null;
        }
    }

    /* renamed from: K0 */
    public void m20375K0(int i) {
        this.f2200B[1] = i;
    }

    /* renamed from: L */
    public ConstraintWidget m20374L() {
        return this.f2228U;
    }

    /* renamed from: L0 */
    public void m20373L0(int i) {
        this.f2200B[0] = i;
    }

    /* renamed from: M */
    public ConstraintWidget m20372M(int i) {
        ConstraintAnchor constraintAnchor;
        ConstraintAnchor constraintAnchor2;
        if (i == 0) {
            ConstraintAnchor constraintAnchor3 = this.f2214I;
            ConstraintAnchor constraintAnchor4 = constraintAnchor3.f2192f;
            if (constraintAnchor4 == null || constraintAnchor4.f2192f != constraintAnchor3) {
                return null;
            }
            return constraintAnchor4.f2190d;
        } else if (i == 1 && (constraintAnchor2 = (constraintAnchor = this.f2216J).f2192f) != null && constraintAnchor2.f2192f == constraintAnchor) {
            return constraintAnchor2.f2190d;
        } else {
            return null;
        }
    }

    /* renamed from: M0 */
    public void m20371M0(boolean z) {
        this.f2248h = z;
    }

    /* renamed from: N */
    public int m20370N() {
        return m20354V() + this.f2229V;
    }

    /* renamed from: N0 */
    public void m20369N0(int i) {
        if (i < 0) {
            this.f2249h0 = 0;
        } else {
            this.f2249h0 = i;
        }
    }

    /* renamed from: O */
    public WidgetRun m20368O(int i) {
        if (i == 0) {
            return this.f2240d;
        }
        if (i == 1) {
            return this.f2242e;
        }
        return null;
    }

    /* renamed from: O0 */
    public void m20367O0(int i) {
        if (i < 0) {
            this.f2247g0 = 0;
        } else {
            this.f2247g0 = i;
        }
    }

    /* renamed from: P */
    public float m20366P() {
        return this.f2253j0;
    }

    /* renamed from: P0 */
    public void m20365P0(int i, int i2) {
        this.f2233Z = i;
        this.f2235a0 = i2;
    }

    /* renamed from: Q */
    public int m20364Q() {
        return this.f2199A0;
    }

    /* renamed from: Q0 */
    public void m20363Q0(ConstraintWidget constraintWidget) {
        this.f2228U = constraintWidget;
    }

    /* renamed from: R */
    public DimensionBehaviour m20362R() {
        return this.f2227T[1];
    }

    /* renamed from: R0 */
    public void m20361R0(float f) {
        this.f2253j0 = f;
    }

    /* renamed from: S */
    public int m20360S() {
        int i = 0;
        if (this.f2214I != null) {
            i = 0 + this.f2216J.f2193g;
        }
        int i2 = i;
        if (this.f2218K != null) {
            i2 = i + this.f2219L.f2193g;
        }
        return i2;
    }

    /* renamed from: S0 */
    public void m20359S0(int i) {
        this.f2199A0 = i;
    }

    /* renamed from: T */
    public int m20358T() {
        return this.f2259m0;
    }

    /* renamed from: T0 */
    public void m20357T0(int i, int i2) {
        this.f2235a0 = i;
        int i3 = i2 - i;
        this.f2230W = i3;
        int i4 = this.f2249h0;
        if (i3 < i4) {
            this.f2230W = i4;
        }
    }

    /* renamed from: U */
    public int m20356U() {
        if (this.f2259m0 == 8) {
            return 0;
        }
        return this.f2229V;
    }

    /* renamed from: U0 */
    public void m20355U0(DimensionBehaviour dimensionBehaviour) {
        this.f2227T[1] = dimensionBehaviour;
    }

    /* renamed from: V */
    public int m20354V() {
        ConstraintWidget constraintWidget = this.f2228U;
        return (constraintWidget == null || !(constraintWidget instanceof ConstraintWidgetContainer)) ? this.f2233Z : ((ConstraintWidgetContainer) constraintWidget).f2294S0 + this.f2233Z;
    }

    /* renamed from: V0 */
    public void m20353V0(int i, int i2, int i3, float f) {
        this.f2264p = i;
        this.f2274u = i2;
        int i4 = i3;
        if (i3 == Integer.MAX_VALUE) {
            i4 = 0;
        }
        this.f2276v = i4;
        this.f2278w = f;
        if (f > 0.0f && f < 1.0f && this.f2264p == 0) {
            this.f2264p = 2;
        }
    }

    /* renamed from: W */
    public int m20352W() {
        ConstraintWidget constraintWidget = this.f2228U;
        return (constraintWidget == null || !(constraintWidget instanceof ConstraintWidgetContainer)) ? this.f2235a0 : ((ConstraintWidgetContainer) constraintWidget).f2295T0 + this.f2235a0;
    }

    /* renamed from: W0 */
    public void m20351W0(float f) {
        this.f2205D0[1] = f;
    }

    /* renamed from: X */
    public boolean m20350X() {
        return this.f2204D;
    }

    /* renamed from: X0 */
    public void m20349X0(int i) {
        this.f2259m0 = i;
    }

    /* renamed from: Y */
    public boolean m20348Y(int i) {
        boolean z = true;
        boolean z2 = true;
        if (i == 0) {
            if ((this.f2214I.f2192f != null ? 1 : 0) + (this.f2218K.f2192f != null ? 1 : 0) >= 2) {
                z2 = false;
            }
            return z2;
        }
        if ((this.f2216J.f2192f != null ? 1 : 0) + (this.f2219L.f2192f != null ? 1 : 0) + (this.f2220M.f2192f != null ? 1 : 0) >= 2) {
            z = false;
        }
        return z;
    }

    /* renamed from: Y0 */
    public void m20347Y0(int i) {
        this.f2229V = i;
        int i2 = this.f2247g0;
        if (i < i2) {
            this.f2229V = i2;
        }
    }

    /* renamed from: Z */
    public boolean m20346Z() {
        int size = this.f2225R.size();
        for (int i = 0; i < size; i++) {
            if (this.f2225R.get(i).m20405m()) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: Z0 */
    public void m20345Z0(int i) {
        this.f2233Z = i;
    }

    /* renamed from: a0 */
    public void m20344a0(ConstraintAnchor.Type type, ConstraintWidget constraintWidget, ConstraintAnchor.Type type2, int i, int i2) {
        mo20199p(type).m20416b(constraintWidget.mo20199p(type2), i, i2, true);
    }

    /* renamed from: a1 */
    public void m20343a1(int i) {
        this.f2235a0 = i;
    }

    /* renamed from: b1 */
    public void m20341b1(boolean z, boolean z2, boolean z3, boolean z4) {
        if (this.f2284z == -1) {
            if (z3 && !z4) {
                this.f2284z = 0;
            } else if (!z3 && z4) {
                this.f2284z = 1;
                if (this.f2232Y == -1) {
                    this.f2198A = 1.0f / this.f2198A;
                }
            }
        }
        if (this.f2284z == 0 && (!this.f2216J.m20403o() || !this.f2219L.m20403o())) {
            this.f2284z = 1;
        } else if (this.f2284z == 1 && (!this.f2214I.m20403o() || !this.f2218K.m20403o())) {
            this.f2284z = 0;
        }
        if (this.f2284z == -1 && (!this.f2216J.m20403o() || !this.f2219L.m20403o() || !this.f2214I.m20403o() || !this.f2218K.m20403o())) {
            if (this.f2216J.m20403o() && this.f2219L.m20403o()) {
                this.f2284z = 0;
            } else if (this.f2214I.m20403o() && this.f2218K.m20403o()) {
                this.f2198A = 1.0f / this.f2198A;
                this.f2284z = 1;
            }
        }
        if (this.f2284z != -1) {
            return;
        }
        if (this.f2268r > 0 && this.f2274u == 0) {
            this.f2284z = 0;
        } else if (this.f2268r == 0 && this.f2274u > 0) {
            this.f2198A = 1.0f / this.f2198A;
            this.f2284z = 1;
        }
    }

    /* renamed from: c0 */
    public boolean m20340c0() {
        ConstraintAnchor constraintAnchor = this.f2214I;
        ConstraintAnchor constraintAnchor2 = constraintAnchor.f2192f;
        if (constraintAnchor2 != null && constraintAnchor2.f2192f == constraintAnchor) {
            return true;
        }
        ConstraintAnchor constraintAnchor3 = this.f2218K;
        ConstraintAnchor constraintAnchor4 = constraintAnchor3.f2192f;
        return constraintAnchor4 != null && constraintAnchor4.f2192f == constraintAnchor3;
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x0096, code lost:
        if (r0 == Integer.MAX_VALUE) goto L_0x0099;
     */
    /* renamed from: c1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void mo20288c1(boolean r4, boolean r5) {
        /*
            Method dump skipped, instructions count: 354
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.solver.widgets.ConstraintWidget.mo20288c1(boolean, boolean):void");
    }

    /* renamed from: d0 */
    public boolean m20338d0() {
        return this.f2206E;
    }

    /* JADX WARN: Code restructure failed: missing block: B:39:0x011e, code lost:
        if (r11 == Integer.MAX_VALUE) goto L_0x0121;
     */
    /* renamed from: d1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void mo20214d1(androidx.constraintlayout.solver.LinearSystem r7, boolean r8) {
        /*
            Method dump skipped, instructions count: 312
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.solver.widgets.ConstraintWidget.mo20214d1(androidx.constraintlayout.solver.LinearSystem, boolean):void");
    }

    /* renamed from: e */
    public void m20337e(ConstraintWidgetContainer constraintWidgetContainer, LinearSystem linearSystem, HashSet<ConstraintWidget> hashSet, int i, boolean z) {
        if (z) {
            if (hashSet.contains(this)) {
                Optimizer.m20193a(constraintWidgetContainer, linearSystem, this);
                hashSet.remove(this);
                mo20211g(linearSystem, constraintWidgetContainer.m20295G1(64));
            } else {
                return;
            }
        }
        if (i == 0) {
            HashSet<ConstraintAnchor> d = this.f2214I.m20414d();
            if (d != null) {
                Iterator<ConstraintAnchor> it = d.iterator();
                while (it.hasNext()) {
                    it.next().f2190d.m20337e(constraintWidgetContainer, linearSystem, hashSet, i, true);
                }
            }
            HashSet<ConstraintAnchor> d2 = this.f2218K.m20414d();
            if (d2 != null) {
                Iterator<ConstraintAnchor> it2 = d2.iterator();
                while (it2.hasNext()) {
                    it2.next().f2190d.m20337e(constraintWidgetContainer, linearSystem, hashSet, i, true);
                }
                return;
            }
            return;
        }
        HashSet<ConstraintAnchor> d3 = this.f2216J.m20414d();
        if (d3 != null) {
            Iterator<ConstraintAnchor> it3 = d3.iterator();
            while (it3.hasNext()) {
                it3.next().f2190d.m20337e(constraintWidgetContainer, linearSystem, hashSet, i, true);
            }
        }
        HashSet<ConstraintAnchor> d4 = this.f2219L.m20414d();
        if (d4 != null) {
            Iterator<ConstraintAnchor> it4 = d4.iterator();
            while (it4.hasNext()) {
                it4.next().f2190d.m20337e(constraintWidgetContainer, linearSystem, hashSet, i, true);
            }
        }
        HashSet<ConstraintAnchor> d5 = this.f2220M.m20414d();
        if (d5 != null) {
            Iterator<ConstraintAnchor> it5 = d5.iterator();
            while (it5.hasNext()) {
                it5.next().f2190d.m20337e(constraintWidgetContainer, linearSystem, hashSet, i, true);
            }
        }
    }

    /* renamed from: e0 */
    public boolean m20336e0() {
        ConstraintAnchor constraintAnchor = this.f2216J;
        ConstraintAnchor constraintAnchor2 = constraintAnchor.f2192f;
        if (constraintAnchor2 != null && constraintAnchor2.f2192f == constraintAnchor) {
            return true;
        }
        ConstraintAnchor constraintAnchor3 = this.f2219L;
        ConstraintAnchor constraintAnchor4 = constraintAnchor3.f2192f;
        return constraintAnchor4 != null && constraintAnchor4.f2192f == constraintAnchor3;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: f */
    public boolean m20335f() {
        return (this instanceof VirtualLayout) || (this instanceof Guideline);
    }

    /* renamed from: f0 */
    public boolean m20334f0() {
        return this.f2208F;
    }

    /* JADX WARN: Removed duplicated region for block: B:279:0x088b  */
    /* JADX WARN: Removed duplicated region for block: B:292:0x08be  */
    /* JADX WARN: Removed duplicated region for block: B:295:0x08cd  */
    /* JADX WARN: Removed duplicated region for block: B:296:0x08dc  */
    /* JADX WARN: Removed duplicated region for block: B:299:0x08eb  */
    /* JADX WARN: Removed duplicated region for block: B:300:0x08fa  */
    /* JADX WARN: Removed duplicated region for block: B:307:0x091a  */
    /* JADX WARN: Removed duplicated region for block: B:311:0x0960  */
    /* JADX WARN: Removed duplicated region for block: B:318:0x09da  */
    /* JADX WARN: Removed duplicated region for block: B:319:0x09e0  */
    /* JADX WARN: Removed duplicated region for block: B:323:0x0a2b  */
    /* JADX WARN: Removed duplicated region for block: B:329:0x0a6f  */
    /* renamed from: g */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void mo20211g(androidx.constraintlayout.solver.LinearSystem r30, boolean r31) {
        /*
            Method dump skipped, instructions count: 2723
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.solver.widgets.ConstraintWidget.mo20211g(androidx.constraintlayout.solver.LinearSystem, boolean):void");
    }

    /* renamed from: g0 */
    public boolean m20333g0() {
        return this.f2248h && this.f2259m0 != 8;
    }

    /* renamed from: h */
    public boolean mo20209h() {
        return this.f2259m0 != 8;
    }

    /* renamed from: h0 */
    public boolean mo20208h0() {
        return this.f2254k || (this.f2214I.m20404n() && this.f2218K.m20404n());
    }

    /* renamed from: i0 */
    public boolean mo20206i0() {
        return this.f2256l || (this.f2216J.m20404n() && this.f2219L.m20404n());
    }

    /* JADX WARN: Code restructure failed: missing block: B:91:0x02f9, code lost:
        if (r7 == androidx.constraintlayout.solver.widgets.ConstraintAnchor.Type.RIGHT) goto L_0x02fc;
     */
    /* renamed from: j */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m20331j(androidx.constraintlayout.solver.widgets.ConstraintAnchor.Type r7, androidx.constraintlayout.solver.widgets.ConstraintWidget r8, androidx.constraintlayout.solver.widgets.ConstraintAnchor.Type r9, int r10) {
        /*
            Method dump skipped, instructions count: 916
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.solver.widgets.ConstraintWidget.m20331j(androidx.constraintlayout.solver.widgets.ConstraintAnchor$Type, androidx.constraintlayout.solver.widgets.ConstraintWidget, androidx.constraintlayout.solver.widgets.ConstraintAnchor$Type, int):void");
    }

    /* renamed from: j0 */
    public boolean m20330j0() {
        DimensionBehaviour[] dimensionBehaviourArr = this.f2227T;
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
    public void m20329k(ConstraintAnchor constraintAnchor, ConstraintAnchor constraintAnchor2, int i) {
        if (constraintAnchor.m20410h() == this) {
            m20331j(constraintAnchor.m20407k(), constraintAnchor2.m20410h(), constraintAnchor2.m20407k(), i);
        }
    }

    /* renamed from: k0 */
    public void mo20164k0() {
        this.f2214I.m20401q();
        this.f2216J.m20401q();
        this.f2218K.m20401q();
        this.f2219L.m20401q();
        this.f2220M.m20401q();
        this.f2221N.m20401q();
        this.f2222O.m20401q();
        this.f2223P.m20401q();
        this.f2228U = null;
        this.f2202C = 0.0f;
        this.f2229V = 0;
        this.f2230W = 0;
        this.f2231X = 0.0f;
        this.f2232Y = -1;
        this.f2233Z = 0;
        this.f2235a0 = 0;
        this.f2241d0 = 0;
        this.f2243e0 = 0;
        this.f2245f0 = 0;
        this.f2247g0 = 0;
        this.f2249h0 = 0;
        float f = f2197K0;
        this.f2251i0 = f;
        this.f2253j0 = f;
        DimensionBehaviour[] dimensionBehaviourArr = this.f2227T;
        DimensionBehaviour dimensionBehaviour = DimensionBehaviour.FIXED;
        dimensionBehaviourArr[0] = dimensionBehaviour;
        dimensionBehaviourArr[1] = dimensionBehaviour;
        this.f2255k0 = null;
        this.f2257l0 = 0;
        this.f2259m0 = 0;
        this.f2263o0 = null;
        this.f2281x0 = false;
        this.f2283y0 = false;
        this.f2285z0 = 0;
        this.f2199A0 = 0;
        this.f2201B0 = false;
        this.f2203C0 = false;
        float[] fArr = this.f2205D0;
        fArr[0] = -1.0f;
        fArr[1] = -1.0f;
        this.f2258m = -1;
        this.f2260n = -1;
        int[] iArr = this.f2200B;
        iArr[0] = Integer.MAX_VALUE;
        iArr[1] = Integer.MAX_VALUE;
        this.f2262o = 0;
        this.f2264p = 0;
        this.f2272t = 1.0f;
        this.f2278w = 1.0f;
        this.f2270s = Api.BaseClientBuilder.API_PRIORITY_OTHER;
        this.f2276v = Api.BaseClientBuilder.API_PRIORITY_OTHER;
        this.f2268r = 0;
        this.f2274u = 0;
        this.f2284z = -1;
        this.f2198A = 1.0f;
        boolean[] zArr = this.f2244f;
        zArr[0] = true;
        zArr[1] = true;
        this.f2208F = false;
        boolean[] zArr2 = this.f2226S;
        zArr2[0] = false;
        zArr2[1] = false;
        this.f2248h = true;
    }

    /* renamed from: l */
    public void m20328l(ConstraintWidget constraintWidget, float f, int i) {
        ConstraintAnchor.Type type = ConstraintAnchor.Type.CENTER;
        m20344a0(type, constraintWidget, type, i, 0);
        this.f2202C = f;
    }

    /* renamed from: l0 */
    public void m20327l0() {
        ConstraintWidget L = m20374L();
        if (L == null || !(L instanceof ConstraintWidgetContainer) || !((ConstraintWidgetContainer) m20374L()).m20271y1()) {
            int size = this.f2225R.size();
            for (int i = 0; i < size; i++) {
                this.f2225R.get(i).m20401q();
            }
        }
    }

    /* renamed from: m */
    public void mo20194m(ConstraintWidget constraintWidget, HashMap<ConstraintWidget, ConstraintWidget> hashMap) {
        this.f2258m = constraintWidget.f2258m;
        this.f2260n = constraintWidget.f2260n;
        this.f2262o = constraintWidget.f2262o;
        this.f2264p = constraintWidget.f2264p;
        int[] iArr = this.f2266q;
        int[] iArr2 = constraintWidget.f2266q;
        iArr[0] = iArr2[0];
        iArr[1] = iArr2[1];
        this.f2268r = constraintWidget.f2268r;
        this.f2270s = constraintWidget.f2270s;
        this.f2274u = constraintWidget.f2274u;
        this.f2276v = constraintWidget.f2276v;
        this.f2278w = constraintWidget.f2278w;
        this.f2280x = constraintWidget.f2280x;
        this.f2282y = constraintWidget.f2282y;
        this.f2284z = constraintWidget.f2284z;
        this.f2198A = constraintWidget.f2198A;
        int[] iArr3 = constraintWidget.f2200B;
        this.f2200B = Arrays.copyOf(iArr3, iArr3.length);
        this.f2202C = constraintWidget.f2202C;
        this.f2204D = constraintWidget.f2204D;
        this.f2206E = constraintWidget.f2206E;
        this.f2214I.m20401q();
        this.f2216J.m20401q();
        this.f2218K.m20401q();
        this.f2219L.m20401q();
        this.f2220M.m20401q();
        this.f2221N.m20401q();
        this.f2222O.m20401q();
        this.f2223P.m20401q();
        this.f2227T = (DimensionBehaviour[]) Arrays.copyOf(this.f2227T, 2);
        ConstraintWidget constraintWidget2 = null;
        this.f2228U = this.f2228U == null ? null : hashMap.get(constraintWidget.f2228U);
        this.f2229V = constraintWidget.f2229V;
        this.f2230W = constraintWidget.f2230W;
        this.f2231X = constraintWidget.f2231X;
        this.f2232Y = constraintWidget.f2232Y;
        this.f2233Z = constraintWidget.f2233Z;
        this.f2235a0 = constraintWidget.f2235a0;
        this.f2237b0 = constraintWidget.f2237b0;
        this.f2239c0 = constraintWidget.f2239c0;
        this.f2241d0 = constraintWidget.f2241d0;
        this.f2243e0 = constraintWidget.f2243e0;
        this.f2245f0 = constraintWidget.f2245f0;
        this.f2247g0 = constraintWidget.f2247g0;
        this.f2249h0 = constraintWidget.f2249h0;
        this.f2251i0 = constraintWidget.f2251i0;
        this.f2253j0 = constraintWidget.f2253j0;
        this.f2255k0 = constraintWidget.f2255k0;
        this.f2257l0 = constraintWidget.f2257l0;
        this.f2259m0 = constraintWidget.f2259m0;
        this.f2261n0 = constraintWidget.f2261n0;
        this.f2263o0 = constraintWidget.f2263o0;
        this.f2265p0 = constraintWidget.f2265p0;
        this.f2267q0 = constraintWidget.f2267q0;
        this.f2269r0 = constraintWidget.f2269r0;
        this.f2271s0 = constraintWidget.f2271s0;
        this.f2273t0 = constraintWidget.f2273t0;
        this.f2275u0 = constraintWidget.f2275u0;
        this.f2277v0 = constraintWidget.f2277v0;
        this.f2279w0 = constraintWidget.f2279w0;
        this.f2281x0 = constraintWidget.f2281x0;
        this.f2283y0 = constraintWidget.f2283y0;
        this.f2285z0 = constraintWidget.f2285z0;
        this.f2199A0 = constraintWidget.f2199A0;
        this.f2201B0 = constraintWidget.f2201B0;
        this.f2203C0 = constraintWidget.f2203C0;
        float[] fArr = this.f2205D0;
        float[] fArr2 = constraintWidget.f2205D0;
        fArr[0] = fArr2[0];
        fArr[1] = fArr2[1];
        ConstraintWidget[] constraintWidgetArr = this.f2207E0;
        ConstraintWidget[] constraintWidgetArr2 = constraintWidget.f2207E0;
        constraintWidgetArr[0] = constraintWidgetArr2[0];
        constraintWidgetArr[1] = constraintWidgetArr2[1];
        ConstraintWidget[] constraintWidgetArr3 = this.f2209F0;
        ConstraintWidget[] constraintWidgetArr4 = constraintWidget.f2209F0;
        constraintWidgetArr3[0] = constraintWidgetArr4[0];
        constraintWidgetArr3[1] = constraintWidgetArr4[1];
        ConstraintWidget constraintWidget3 = constraintWidget.f2211G0;
        this.f2211G0 = constraintWidget3 == null ? null : hashMap.get(constraintWidget3);
        ConstraintWidget constraintWidget4 = constraintWidget.f2213H0;
        if (constraintWidget4 != null) {
            constraintWidget2 = hashMap.get(constraintWidget4);
        }
        this.f2213H0 = constraintWidget2;
    }

    /* renamed from: m0 */
    public void m20326m0() {
        this.f2254k = false;
        this.f2256l = false;
        int size = this.f2225R.size();
        for (int i = 0; i < size; i++) {
            this.f2225R.get(i).m20400r();
        }
    }

    /* renamed from: n */
    public void m20325n(LinearSystem linearSystem) {
        linearSystem.m20484q(this.f2214I);
        linearSystem.m20484q(this.f2216J);
        linearSystem.m20484q(this.f2218K);
        linearSystem.m20484q(this.f2219L);
        if (this.f2245f0 > 0) {
            linearSystem.m20484q(this.f2220M);
        }
    }

    /* renamed from: n0 */
    public void mo20163n0(Cache cache) {
        this.f2214I.m20399s(cache);
        this.f2216J.m20399s(cache);
        this.f2218K.m20399s(cache);
        this.f2219L.m20399s(cache);
        this.f2220M.m20399s(cache);
        this.f2223P.m20399s(cache);
        this.f2221N.m20399s(cache);
        this.f2222O.m20399s(cache);
    }

    /* renamed from: o */
    public void m20324o() {
        if (this.f2240d == null) {
            this.f2240d = new HorizontalWidgetRun(this);
        }
        if (this.f2242e == null) {
            this.f2242e = new VerticalWidgetRun(this);
        }
    }

    /* renamed from: o0 */
    public void m20323o0(int i) {
        this.f2245f0 = i;
        this.f2204D = i > 0;
    }

    /* renamed from: p */
    public ConstraintAnchor mo20199p(ConstraintAnchor.Type type) {
        switch (C01671.f2286a[type.ordinal()]) {
            case 1:
                return this.f2214I;
            case 2:
                return this.f2216J;
            case 3:
                return this.f2218K;
            case 4:
                return this.f2219L;
            case 5:
                return this.f2220M;
            case 6:
                return this.f2223P;
            case 7:
                return this.f2221N;
            case 8:
                return this.f2222O;
            case 9:
                return null;
            default:
                throw new AssertionError(type.name());
        }
    }

    /* renamed from: p0 */
    public void m20322p0(Object obj) {
        this.f2255k0 = obj;
    }

    /* renamed from: q */
    public int m20321q() {
        return this.f2245f0;
    }

    /* renamed from: q0 */
    public void m20320q0(String str) {
        this.f2261n0 = str;
    }

    /* renamed from: r */
    public float m20319r(int i) {
        if (i == 0) {
            return this.f2251i0;
        }
        if (i == 1) {
            return this.f2253j0;
        }
        return -1.0f;
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:37:0x00f0 -> B:38:0x00f3). Please submit an issue!!! */
    /* renamed from: r0 */
    public void m20318r0(String str) {
        float f;
        if (str == null || str.length() == 0) {
            this.f2231X = 0.0f;
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
        if (f > 0.0f) {
            this.f2231X = f;
            this.f2232Y = i;
        }
    }

    /* renamed from: s */
    public int m20317s() {
        return m20352W() + this.f2230W;
    }

    /* renamed from: s0 */
    public void m20316s0(int i) {
        if (this.f2204D) {
            int i2 = i - this.f2245f0;
            int i3 = this.f2230W;
            this.f2235a0 = i2;
            this.f2216J.m20398t(i2);
            this.f2219L.m20398t(i3 + i2);
            this.f2220M.m20398t(i);
            this.f2256l = true;
        }
    }

    /* renamed from: t */
    public Object m20315t() {
        return this.f2255k0;
    }

    /* renamed from: t0 */
    public void m20314t0(int i, int i2) {
        this.f2214I.m20398t(i);
        this.f2218K.m20398t(i2);
        this.f2233Z = i;
        this.f2229V = i2 - i;
        this.f2254k = true;
    }

    public String toString() {
        String str;
        StringBuilder sb = new StringBuilder();
        String str2 = "";
        if (this.f2263o0 != null) {
            str = "type: " + this.f2263o0 + " ";
        } else {
            str = "";
        }
        sb.append(str);
        if (this.f2261n0 != null) {
            str2 = "id: " + this.f2261n0 + " ";
        }
        sb.append(str2);
        sb.append("(");
        sb.append(this.f2233Z);
        sb.append(", ");
        sb.append(this.f2235a0);
        sb.append(") - (");
        sb.append(this.f2229V);
        sb.append(" x ");
        sb.append(this.f2230W);
        sb.append(")");
        return sb.toString();
    }

    /* renamed from: u */
    public String m20313u() {
        return this.f2261n0;
    }

    /* renamed from: u0 */
    public void m20312u0(int i) {
        this.f2214I.m20398t(i);
        this.f2233Z = i;
    }

    /* renamed from: v */
    public DimensionBehaviour m20311v(int i) {
        if (i == 0) {
            return m20394B();
        }
        if (i == 1) {
            return m20362R();
        }
        return null;
    }

    /* renamed from: v0 */
    public void m20310v0(int i) {
        this.f2216J.m20398t(i);
        this.f2235a0 = i;
    }

    /* renamed from: w */
    public float m20309w() {
        return this.f2231X;
    }

    /* renamed from: w0 */
    public void m20308w0(int i, int i2) {
        this.f2216J.m20398t(i);
        this.f2219L.m20398t(i2);
        this.f2235a0 = i;
        this.f2230W = i2 - i;
        if (this.f2204D) {
            this.f2220M.m20398t(i + this.f2245f0);
        }
        this.f2256l = true;
    }

    /* renamed from: x */
    public int m20307x() {
        return this.f2232Y;
    }

    /* renamed from: x0 */
    public void m20306x0(int i, int i2, int i3, int i4) {
        int i5 = i3 - i;
        int i6 = i4 - i2;
        this.f2233Z = i;
        this.f2235a0 = i2;
        if (this.f2259m0 == 8) {
            this.f2229V = 0;
            this.f2230W = 0;
            return;
        }
        int i7 = i5;
        if (this.f2227T[0] == DimensionBehaviour.FIXED) {
            int i8 = this.f2229V;
            i7 = i5;
            if (i5 < i8) {
                i7 = i8;
            }
        }
        int i9 = i6;
        if (this.f2227T[1] == DimensionBehaviour.FIXED) {
            int i10 = this.f2230W;
            i9 = i6;
            if (i6 < i10) {
                i9 = i10;
            }
        }
        this.f2229V = i7;
        this.f2230W = i9;
        int i11 = this.f2249h0;
        if (i9 < i11) {
            this.f2230W = i11;
        }
        int i12 = this.f2229V;
        int i13 = this.f2247g0;
        if (i12 < i13) {
            this.f2229V = i13;
        }
    }

    /* renamed from: y */
    public int m20305y() {
        if (this.f2259m0 == 8) {
            return 0;
        }
        return this.f2230W;
    }

    /* renamed from: y0 */
    public void m20304y0(boolean z) {
        this.f2204D = z;
    }

    /* renamed from: z */
    public float m20303z() {
        return this.f2251i0;
    }

    /* renamed from: z0 */
    public void m20302z0(int i) {
        this.f2230W = i;
        int i2 = this.f2249h0;
        if (i < i2) {
            this.f2230W = i2;
        }
    }
}
