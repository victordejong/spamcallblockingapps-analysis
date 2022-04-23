package androidx.constraintlayout.solver.widgets;

import androidx.constraintlayout.solver.C0198c;
import androidx.constraintlayout.solver.C0199d;
import androidx.constraintlayout.solver.C0201e;
import androidx.constraintlayout.solver.SolverVariable;
import androidx.constraintlayout.solver.widgets.ConstraintAnchor;
import androidx.constraintlayout.solver.widgets.analyzer.DependencyNode;
import androidx.constraintlayout.solver.widgets.analyzer.WidgetRun;
import androidx.constraintlayout.solver.widgets.analyzer.c;
import androidx.constraintlayout.solver.widgets.analyzer.i;
import androidx.constraintlayout.solver.widgets.analyzer.k;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/solver/widgets/ConstraintWidget.class */
public class ConstraintWidget {

    /* renamed from: C0 */
    public static float f1099C0 = 0.5f;

    /* renamed from: A */
    public ConstraintAnchor f1100A;

    /* renamed from: B */
    public ConstraintAnchor f1102B;

    /* renamed from: C */
    public ConstraintAnchor f1104C;

    /* renamed from: D */
    public ConstraintAnchor f1105D;

    /* renamed from: E */
    ConstraintAnchor f1106E;

    /* renamed from: H */
    ConstraintAnchor f1109H;

    /* renamed from: I */
    public ConstraintAnchor[] f1110I;

    /* renamed from: L */
    public DimensionBehaviour[] f1113L;

    /* renamed from: Y */
    protected int f1126Y;

    /* renamed from: Z */
    protected int f1127Z;

    /* renamed from: a0 */
    float f1129a0;

    /* renamed from: b */
    public c f1130b;

    /* renamed from: b0 */
    float f1131b0;

    /* renamed from: c */
    public c f1132c;

    /* renamed from: c0 */
    private Object f1133c0;

    /* renamed from: h0 */
    int f1143h0;

    /* renamed from: i0 */
    int f1145i0;

    /* renamed from: j0 */
    int f1147j0;

    /* renamed from: k0 */
    int f1149k0;

    /* renamed from: l0 */
    boolean f1151l0;

    /* renamed from: m0 */
    boolean f1153m0;

    /* renamed from: n0 */
    boolean f1155n0;

    /* renamed from: o0 */
    boolean f1157o0;

    /* renamed from: p0 */
    boolean f1159p0;

    /* renamed from: q0 */
    boolean f1161q0;

    /* renamed from: s */
    public boolean f1164s;

    /* renamed from: t */
    public boolean f1166t;

    /* renamed from: v0 */
    boolean f1171v0;

    /* renamed from: w0 */
    boolean f1173w0;

    /* renamed from: z */
    private boolean f1178z;

    /* renamed from: a */
    public boolean f1128a = false;

    /* renamed from: d */
    public i f1134d = new i(this);

    /* renamed from: e */
    public k f1136e = new k(this);

    /* renamed from: f */
    public boolean[] f1138f = {true, true};

    /* renamed from: g */
    public int[] f1140g = {0, 0, 0, 0};

    /* renamed from: h */
    public int f1142h = -1;

    /* renamed from: i */
    public int f1144i = -1;

    /* renamed from: j */
    public int f1146j = 0;

    /* renamed from: k */
    public int f1148k = 0;

    /* renamed from: l */
    public int[] f1150l = new int[2];

    /* renamed from: m */
    public int f1152m = 0;

    /* renamed from: n */
    public int f1154n = 0;

    /* renamed from: o */
    public float f1156o = 1.0f;

    /* renamed from: p */
    public int f1158p = 0;

    /* renamed from: q */
    public int f1160q = 0;

    /* renamed from: r */
    public float f1162r = 1.0f;

    /* renamed from: u */
    int f1168u = -1;

    /* renamed from: v */
    float f1170v = 1.0f;

    /* renamed from: w */
    private int[] f1172w = {Integer.MAX_VALUE, Integer.MAX_VALUE};

    /* renamed from: x */
    private float f1174x = 0.0f;

    /* renamed from: y */
    private boolean f1176y = false;

    /* renamed from: F */
    ConstraintAnchor f1107F = new ConstraintAnchor(this, ConstraintAnchor.Type.CENTER_X);

    /* renamed from: G */
    ConstraintAnchor f1108G = new ConstraintAnchor(this, ConstraintAnchor.Type.CENTER_Y);

    /* renamed from: J */
    protected ArrayList<ConstraintAnchor> f1111J = new ArrayList<>();

    /* renamed from: K */
    private boolean[] f1112K = new boolean[2];

    /* renamed from: M */
    public ConstraintWidget f1114M = null;

    /* renamed from: N */
    int f1115N = 0;

    /* renamed from: O */
    int f1116O = 0;

    /* renamed from: P */
    public float f1117P = 0.0f;

    /* renamed from: Q */
    protected int f1118Q = -1;

    /* renamed from: R */
    protected int f1119R = 0;

    /* renamed from: S */
    protected int f1120S = 0;

    /* renamed from: T */
    int f1121T = 0;

    /* renamed from: U */
    int f1122U = 0;

    /* renamed from: V */
    protected int f1123V = 0;

    /* renamed from: W */
    protected int f1124W = 0;

    /* renamed from: X */
    int f1125X = 0;

    /* renamed from: d0 */
    private int f1135d0 = 0;

    /* renamed from: e0 */
    private int f1137e0 = 0;

    /* renamed from: f0 */
    private String f1139f0 = null;

    /* renamed from: g0 */
    private String f1141g0 = null;

    /* renamed from: r0 */
    boolean f1163r0 = false;

    /* renamed from: s0 */
    boolean f1165s0 = false;

    /* renamed from: t0 */
    int f1167t0 = 0;

    /* renamed from: u0 */
    int f1169u0 = 0;

    /* renamed from: x0 */
    public float[] f1175x0 = {-1.0f, -1.0f};

    /* renamed from: y0 */
    protected ConstraintWidget[] f1177y0 = {null, null};

    /* renamed from: z0 */
    protected ConstraintWidget[] f1179z0 = {null, null};

    /* renamed from: A0 */
    ConstraintWidget f1101A0 = null;

    /* renamed from: B0 */
    ConstraintWidget f1103B0 = null;

    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour.class */
    public enum DimensionBehaviour {
        FIXED,
        WRAP_CONTENT,
        MATCH_CONSTRAINT,
        MATCH_PARENT
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.constraintlayout.solver.widgets.ConstraintWidget$a */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/solver/widgets/ConstraintWidget$a.class */
    public static /* synthetic */ class C0204a {

        /* renamed from: a */
        static final /* synthetic */ int[] f1185a;

        /* renamed from: b */
        static final /* synthetic */ int[] f1186b;

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
            f1186b = iArr;
            try {
                iArr[DimensionBehaviour.FIXED.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f1186b[DimensionBehaviour.WRAP_CONTENT.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f1186b[DimensionBehaviour.MATCH_PARENT.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f1186b[DimensionBehaviour.MATCH_CONSTRAINT.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            int[] iArr2 = new int[ConstraintAnchor.Type.values().length];
            f1185a = iArr2;
            try {
                iArr2[ConstraintAnchor.Type.LEFT.ordinal()] = 1;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f1185a[ConstraintAnchor.Type.TOP.ordinal()] = 2;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f1185a[ConstraintAnchor.Type.RIGHT.ordinal()] = 3;
            } catch (NoSuchFieldError e7) {
            }
            try {
                f1185a[ConstraintAnchor.Type.BOTTOM.ordinal()] = 4;
            } catch (NoSuchFieldError e8) {
            }
            try {
                f1185a[ConstraintAnchor.Type.BASELINE.ordinal()] = 5;
            } catch (NoSuchFieldError e9) {
            }
            try {
                f1185a[ConstraintAnchor.Type.CENTER.ordinal()] = 6;
            } catch (NoSuchFieldError e10) {
            }
            try {
                f1185a[ConstraintAnchor.Type.CENTER_X.ordinal()] = 7;
            } catch (NoSuchFieldError e11) {
            }
            try {
                f1185a[ConstraintAnchor.Type.CENTER_Y.ordinal()] = 8;
            } catch (NoSuchFieldError e12) {
            }
            try {
                f1185a[ConstraintAnchor.Type.NONE.ordinal()] = 9;
            } catch (NoSuchFieldError e13) {
            }
        }
    }

    public ConstraintWidget() {
        ConstraintAnchor constraintAnchor = new ConstraintAnchor(this, ConstraintAnchor.Type.LEFT);
        this.f1100A = constraintAnchor;
        ConstraintAnchor constraintAnchor2 = new ConstraintAnchor(this, ConstraintAnchor.Type.TOP);
        this.f1102B = constraintAnchor2;
        ConstraintAnchor constraintAnchor3 = new ConstraintAnchor(this, ConstraintAnchor.Type.RIGHT);
        this.f1104C = constraintAnchor3;
        ConstraintAnchor constraintAnchor4 = new ConstraintAnchor(this, ConstraintAnchor.Type.BOTTOM);
        this.f1105D = constraintAnchor4;
        ConstraintAnchor constraintAnchor5 = new ConstraintAnchor(this, ConstraintAnchor.Type.BASELINE);
        this.f1106E = constraintAnchor5;
        ConstraintAnchor constraintAnchor6 = new ConstraintAnchor(this, ConstraintAnchor.Type.CENTER);
        this.f1109H = constraintAnchor6;
        this.f1110I = new ConstraintAnchor[]{constraintAnchor, constraintAnchor3, constraintAnchor2, constraintAnchor4, constraintAnchor5, constraintAnchor6};
        DimensionBehaviour dimensionBehaviour = DimensionBehaviour.FIXED;
        this.f1113L = new DimensionBehaviour[]{dimensionBehaviour, dimensionBehaviour};
        float f = f1099C0;
        this.f1129a0 = f;
        this.f1131b0 = f;
        m13969d();
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x003e, code lost:
        if (r0[r5].f1084d.f1084d == r0[r5]) goto L_0x0047;
     */
    /* renamed from: V */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean m13977V(int r5) {
        /*
            r4 = this;
            r0 = r5
            r1 = 2
            int r0 = r0 * r1
            r5 = r0
            r0 = r4
            androidx.constraintlayout.solver.widgets.ConstraintAnchor[] r0 = r0.f1110I
            r6 = r0
            r0 = r6
            r1 = r5
            r0 = r0[r1]
            androidx.constraintlayout.solver.widgets.ConstraintAnchor r0 = r0.f1084d
            r7 = r0
            r0 = 1
            r8 = r0
            r0 = r7
            if (r0 == 0) goto L_0x0044
            r0 = r6
            r1 = r5
            r0 = r0[r1]
            androidx.constraintlayout.solver.widgets.ConstraintAnchor r0 = r0.f1084d
            androidx.constraintlayout.solver.widgets.ConstraintAnchor r0 = r0.f1084d
            r1 = r6
            r2 = r5
            r1 = r1[r2]
            if (r0 == r1) goto L_0x0044
            int r5 = r5 + 1
            r0 = r6
            r1 = r5
            r0 = r0[r1]
            androidx.constraintlayout.solver.widgets.ConstraintAnchor r0 = r0.f1084d
            if (r0 == 0) goto L_0x0044
            r0 = r6
            r1 = r5
            r0 = r0[r1]
            androidx.constraintlayout.solver.widgets.ConstraintAnchor r0 = r0.f1084d
            androidx.constraintlayout.solver.widgets.ConstraintAnchor r0 = r0.f1084d
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
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.solver.widgets.ConstraintWidget.m13977V(int):boolean");
    }

    /* renamed from: d */
    private void m13969d() {
        this.f1111J.add(this.f1100A);
        this.f1111J.add(this.f1102B);
        this.f1111J.add(this.f1104C);
        this.f1111J.add(this.f1105D);
        this.f1111J.add(this.f1107F);
        this.f1111J.add(this.f1108G);
        this.f1111J.add(this.f1109H);
        this.f1111J.add(this.f1106E);
    }

    /* JADX WARN: Code restructure failed: missing block: B:286:0x06b0, code lost:
        if (r0 == r0) goto L_0x06b3;
     */
    /* JADX WARN: Removed duplicated region for block: B:217:0x0549  */
    /* JADX WARN: Removed duplicated region for block: B:223:0x058a A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:224:0x058b  */
    /* renamed from: h */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void m13961h(androidx.constraintlayout.solver.C0199d r11, boolean r12, boolean r13, boolean r14, boolean r15, androidx.constraintlayout.solver.SolverVariable r16, androidx.constraintlayout.solver.SolverVariable r17, androidx.constraintlayout.solver.widgets.ConstraintWidget.DimensionBehaviour r18, boolean r19, androidx.constraintlayout.solver.widgets.ConstraintAnchor r20, androidx.constraintlayout.solver.widgets.ConstraintAnchor r21, int r22, int r23, int r24, int r25, float r26, boolean r27, boolean r28, boolean r29, boolean r30, int r31, int r32, int r33, int r34, float r35, boolean r36) {
        /*
            Method dump skipped, instructions count: 2080
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.solver.widgets.ConstraintWidget.m13961h(androidx.constraintlayout.solver.d, boolean, boolean, boolean, boolean, androidx.constraintlayout.solver.SolverVariable, androidx.constraintlayout.solver.SolverVariable, androidx.constraintlayout.solver.widgets.ConstraintWidget$DimensionBehaviour, boolean, androidx.constraintlayout.solver.widgets.ConstraintAnchor, androidx.constraintlayout.solver.widgets.ConstraintAnchor, int, int, int, int, float, boolean, boolean, boolean, boolean, int, int, int, int, float, boolean):void");
    }

    /* renamed from: A */
    public int m14009A() {
        ConstraintAnchor constraintAnchor = this.f1100A;
        int i = 0;
        if (constraintAnchor != null) {
            i = 0 + constraintAnchor.f1085e;
        }
        ConstraintAnchor constraintAnchor2 = this.f1104C;
        int i2 = i;
        if (constraintAnchor2 != null) {
            i2 = i + constraintAnchor2.f1085e;
        }
        return i2;
    }

    /* renamed from: A0 */
    public void m14008A0(int i, int i2) {
        this.f1120S = i;
        int i3 = i2 - i;
        this.f1116O = i3;
        int i4 = this.f1127Z;
        if (i3 < i4) {
            this.f1116O = i4;
        }
    }

    /* renamed from: B */
    public int m14007B(int i) {
        if (i == 0) {
            return m13982Q();
        }
        if (i == 1) {
            return m13931w();
        }
        return 0;
    }

    /* renamed from: B0 */
    public void m14006B0(DimensionBehaviour dimensionBehaviour) {
        this.f1113L[1] = dimensionBehaviour;
    }

    /* renamed from: C */
    public int m14005C() {
        return this.f1172w[1];
    }

    /* renamed from: C0 */
    public void m14004C0(int i, int i2, int i3, float f) {
        this.f1148k = i;
        this.f1158p = i2;
        int i4 = i3;
        if (i3 == Integer.MAX_VALUE) {
            i4 = 0;
        }
        this.f1160q = i4;
        this.f1162r = f;
        if (f > 0.0f && f < 1.0f && i == 0) {
            this.f1148k = 2;
        }
    }

    /* renamed from: D */
    public int m14003D() {
        return this.f1172w[0];
    }

    /* renamed from: D0 */
    public void m14002D0(float f) {
        this.f1175x0[1] = f;
    }

    /* renamed from: E */
    public int m14001E() {
        return this.f1127Z;
    }

    /* renamed from: E0 */
    public void m14000E0(int i) {
        this.f1137e0 = i;
    }

    /* renamed from: F */
    public int m13999F() {
        return this.f1126Y;
    }

    /* renamed from: F0 */
    public void m13998F0(int i) {
        this.f1115N = i;
        int i2 = this.f1126Y;
        if (i < i2) {
            this.f1115N = i2;
        }
    }

    /* renamed from: G */
    public ConstraintWidget m13997G(int i) {
        ConstraintAnchor constraintAnchor;
        ConstraintAnchor constraintAnchor2;
        if (i == 0) {
            ConstraintAnchor constraintAnchor3 = this.f1104C;
            ConstraintAnchor constraintAnchor4 = constraintAnchor3.f1084d;
            if (constraintAnchor4 == null || constraintAnchor4.f1084d != constraintAnchor3) {
                return null;
            }
            return constraintAnchor4.f1082b;
        } else if (i == 1 && (constraintAnchor2 = (constraintAnchor = this.f1105D).f1084d) != null && constraintAnchor2.f1084d == constraintAnchor) {
            return constraintAnchor2.f1082b;
        } else {
            return null;
        }
    }

    /* renamed from: G0 */
    public void m13996G0(int i) {
        this.f1119R = i;
    }

    /* renamed from: H */
    public ConstraintWidget m13995H() {
        return this.f1114M;
    }

    /* renamed from: H0 */
    public void m13994H0(int i) {
        this.f1120S = i;
    }

    /* renamed from: I */
    public ConstraintWidget m13993I(int i) {
        ConstraintAnchor constraintAnchor;
        ConstraintAnchor constraintAnchor2;
        if (i == 0) {
            ConstraintAnchor constraintAnchor3 = this.f1100A;
            ConstraintAnchor constraintAnchor4 = constraintAnchor3.f1084d;
            if (constraintAnchor4 == null || constraintAnchor4.f1084d != constraintAnchor3) {
                return null;
            }
            return constraintAnchor4.f1082b;
        } else if (i == 1 && (constraintAnchor2 = (constraintAnchor = this.f1102B).f1084d) != null && constraintAnchor2.f1084d == constraintAnchor) {
            return constraintAnchor2.f1082b;
        } else {
            return null;
        }
    }

    /* renamed from: I0 */
    public void m13992I0(boolean z, boolean z2, boolean z3, boolean z4) {
        if (this.f1168u == -1) {
            if (z3 && !z4) {
                this.f1168u = 0;
            } else if (!z3 && z4) {
                this.f1168u = 1;
                if (this.f1118Q == -1) {
                    this.f1170v = 1.0f / this.f1170v;
                }
            }
        }
        if (this.f1168u == 0 && (!this.f1102B.m14014j() || !this.f1105D.m14014j())) {
            this.f1168u = 1;
        } else if (this.f1168u == 1 && (!this.f1100A.m14014j() || !this.f1104C.m14014j())) {
            this.f1168u = 0;
        }
        if (this.f1168u == -1 && (!this.f1102B.m14014j() || !this.f1105D.m14014j() || !this.f1100A.m14014j() || !this.f1104C.m14014j())) {
            if (this.f1102B.m14014j() && this.f1105D.m14014j()) {
                this.f1168u = 0;
            } else if (this.f1100A.m14014j() && this.f1104C.m14014j()) {
                this.f1170v = 1.0f / this.f1170v;
                this.f1168u = 1;
            }
        }
        if (this.f1168u == -1) {
            int i = this.f1152m;
            if (i > 0 && this.f1158p == 0) {
                this.f1168u = 0;
            } else if (i == 0 && this.f1158p > 0) {
                this.f1170v = 1.0f / this.f1170v;
                this.f1168u = 1;
            }
        }
    }

    /* renamed from: J */
    public int m13991J() {
        return m13981R() + this.f1115N;
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x0096, code lost:
        if (r0 == Integer.MAX_VALUE) goto L_0x0099;
     */
    /* renamed from: J0 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m13990J0(boolean r4, boolean r5) {
        /*
            Method dump skipped, instructions count: 354
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.solver.widgets.ConstraintWidget.m13990J0(boolean, boolean):void");
    }

    /* renamed from: K */
    public WidgetRun m13989K(int i) {
        if (i == 0) {
            return this.f1134d;
        }
        if (i == 1) {
            return this.f1136e;
        }
        return null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:31:0x00ed, code lost:
        if (r10 == Integer.MAX_VALUE) goto L_0x00f0;
     */
    /* renamed from: K0 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m13988K0(androidx.constraintlayout.solver.C0199d r7) {
        /*
            Method dump skipped, instructions count: 263
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.solver.widgets.ConstraintWidget.m13988K0(androidx.constraintlayout.solver.d):void");
    }

    /* renamed from: L */
    public float m13987L() {
        return this.f1131b0;
    }

    /* renamed from: M */
    public int m13986M() {
        return this.f1169u0;
    }

    /* renamed from: N */
    public DimensionBehaviour m13985N() {
        return this.f1113L[1];
    }

    /* renamed from: O */
    public int m13984O() {
        int i = 0;
        if (this.f1100A != null) {
            i = 0 + this.f1102B.f1085e;
        }
        int i2 = i;
        if (this.f1104C != null) {
            i2 = i + this.f1105D.f1085e;
        }
        return i2;
    }

    /* renamed from: P */
    public int m13983P() {
        return this.f1137e0;
    }

    /* renamed from: Q */
    public int m13982Q() {
        if (this.f1137e0 == 8) {
            return 0;
        }
        return this.f1115N;
    }

    /* renamed from: R */
    public int m13981R() {
        d dVar = this.f1114M;
        return (dVar == null || !(dVar instanceof d)) ? this.f1119R : dVar.K0 + this.f1119R;
    }

    /* renamed from: S */
    public int m13980S() {
        d dVar = this.f1114M;
        return (dVar == null || !(dVar instanceof d)) ? this.f1120S : dVar.L0 + this.f1120S;
    }

    /* renamed from: T */
    public boolean m13979T() {
        return this.f1176y;
    }

    /* renamed from: U */
    public void m13978U(ConstraintAnchor.Type type, ConstraintWidget constraintWidget, ConstraintAnchor.Type type2, int i, int i2) {
        m13949n(type).m14022b(constraintWidget.m13949n(type2), i, i2, true);
    }

    /* renamed from: W */
    public boolean m13976W() {
        ConstraintAnchor constraintAnchor = this.f1100A;
        ConstraintAnchor constraintAnchor2 = constraintAnchor.f1084d;
        if (constraintAnchor2 != null && constraintAnchor2.f1084d == constraintAnchor) {
            return true;
        }
        ConstraintAnchor constraintAnchor3 = this.f1104C;
        ConstraintAnchor constraintAnchor4 = constraintAnchor3.f1084d;
        return constraintAnchor4 != null && constraintAnchor4.f1084d == constraintAnchor3;
    }

    /* renamed from: X */
    public boolean m13975X() {
        return this.f1178z;
    }

    /* renamed from: Y */
    public boolean m13974Y() {
        ConstraintAnchor constraintAnchor = this.f1102B;
        ConstraintAnchor constraintAnchor2 = constraintAnchor.f1084d;
        if (constraintAnchor2 != null && constraintAnchor2.f1084d == constraintAnchor) {
            return true;
        }
        ConstraintAnchor constraintAnchor3 = this.f1105D;
        ConstraintAnchor constraintAnchor4 = constraintAnchor3.f1084d;
        return constraintAnchor4 != null && constraintAnchor4.f1084d == constraintAnchor3;
    }

    /* renamed from: Z */
    public void m13973Z() {
        this.f1100A.m14012l();
        this.f1102B.m14012l();
        this.f1104C.m14012l();
        this.f1105D.m14012l();
        this.f1106E.m14012l();
        this.f1107F.m14012l();
        this.f1108G.m14012l();
        this.f1109H.m14012l();
        this.f1114M = null;
        this.f1174x = 0.0f;
        this.f1115N = 0;
        this.f1116O = 0;
        this.f1117P = 0.0f;
        this.f1118Q = -1;
        this.f1119R = 0;
        this.f1120S = 0;
        this.f1123V = 0;
        this.f1124W = 0;
        this.f1125X = 0;
        this.f1126Y = 0;
        this.f1127Z = 0;
        float f = f1099C0;
        this.f1129a0 = f;
        this.f1131b0 = f;
        DimensionBehaviour[] dimensionBehaviourArr = this.f1113L;
        DimensionBehaviour dimensionBehaviour = DimensionBehaviour.FIXED;
        dimensionBehaviourArr[0] = dimensionBehaviour;
        dimensionBehaviourArr[1] = dimensionBehaviour;
        this.f1133c0 = null;
        this.f1135d0 = 0;
        this.f1137e0 = 0;
        this.f1141g0 = null;
        this.f1159p0 = false;
        this.f1161q0 = false;
        this.f1167t0 = 0;
        this.f1169u0 = 0;
        this.f1171v0 = false;
        this.f1173w0 = false;
        float[] fArr = this.f1175x0;
        fArr[0] = -1.0f;
        fArr[1] = -1.0f;
        this.f1142h = -1;
        this.f1144i = -1;
        int[] iArr = this.f1172w;
        iArr[0] = Integer.MAX_VALUE;
        iArr[1] = Integer.MAX_VALUE;
        this.f1146j = 0;
        this.f1148k = 0;
        this.f1156o = 1.0f;
        this.f1162r = 1.0f;
        this.f1154n = Integer.MAX_VALUE;
        this.f1160q = Integer.MAX_VALUE;
        this.f1152m = 0;
        this.f1158p = 0;
        this.f1168u = -1;
        this.f1170v = 1.0f;
        this.f1163r0 = false;
        this.f1165s0 = false;
        boolean[] zArr = this.f1138f;
        zArr[0] = true;
        zArr[1] = true;
        boolean[] zArr2 = this.f1112K;
        zArr2[0] = false;
        zArr2[1] = false;
    }

    /* renamed from: a0 */
    public void m13972a0() {
        ConstraintWidget H = m13995H();
        if (H == null || !(H instanceof d) || !m13995H().Y0()) {
            int size = this.f1111J.size();
            for (int i = 0; i < size; i++) {
                this.f1111J.get(i).m14012l();
            }
        }
    }

    /* renamed from: b0 */
    public void m13971b0(C0198c cVar) {
        this.f1100A.m14011m(cVar);
        this.f1102B.m14011m(cVar);
        this.f1104C.m14011m(cVar);
        this.f1105D.m14011m(cVar);
        this.f1106E.m14011m(cVar);
        this.f1109H.m14011m(cVar);
        this.f1107F.m14011m(cVar);
        this.f1108G.m14011m(cVar);
    }

    /* renamed from: c0 */
    public void m13970c0(int i) {
        this.f1125X = i;
        this.f1176y = i > 0;
    }

    /* renamed from: d0 */
    public void m13968d0(Object obj) {
        this.f1133c0 = obj;
    }

    /* renamed from: e */
    boolean m13967e() {
        return (this instanceof j) || (this instanceof f);
    }

    /* renamed from: e0 */
    public void m13966e0(String str) {
        this.f1139f0 = str;
    }

    /* renamed from: f */
    public void m13965f(C0199d dVar) {
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4;
        boolean z5;
        boolean z6;
        SolverVariable solverVariable;
        SolverVariable solverVariable2;
        SolverVariable solverVariable3;
        SolverVariable solverVariable4;
        boolean z7;
        int i;
        int i2;
        boolean z8;
        boolean z9;
        SolverVariable q = dVar.m14045q(this.f1100A);
        SolverVariable q2 = dVar.m14045q(this.f1104C);
        SolverVariable q3 = dVar.m14045q(this.f1102B);
        SolverVariable q4 = dVar.m14045q(this.f1105D);
        SolverVariable q5 = dVar.m14045q(this.f1106E);
        C0201e eVar = C0199d.f1034r;
        if (eVar != null) {
            eVar.f1078y++;
        }
        i iVar = this.f1134d;
        DependencyNode dependencyNode = ((WidgetRun) iVar).h;
        if (dependencyNode.j && ((WidgetRun) iVar).i.j) {
            k kVar = this.f1136e;
            if (((WidgetRun) kVar).h.j && ((WidgetRun) kVar).i.j) {
                if (eVar != null) {
                    eVar.f1071r++;
                }
                dVar.m14056f(q, dependencyNode.g);
                dVar.m14056f(q2, ((WidgetRun) this.f1134d).i.g);
                dVar.m14056f(q3, ((WidgetRun) this.f1136e).h.g);
                dVar.m14056f(q4, ((WidgetRun) this.f1136e).i.g);
                dVar.m14056f(q5, this.f1136e.k.g);
                ConstraintWidget constraintWidget = this.f1114M;
                if (constraintWidget != null) {
                    boolean z10 = constraintWidget != null && constraintWidget.f1113L[0] == DimensionBehaviour.WRAP_CONTENT;
                    boolean z11 = constraintWidget != null && constraintWidget.f1113L[1] == DimensionBehaviour.WRAP_CONTENT;
                    if (z10 && this.f1138f[0] && !m13976W()) {
                        dVar.m14054h(dVar.m14045q(this.f1114M.f1104C), q2, 0, 8);
                    }
                    if (z11 && this.f1138f[1] && !m13974Y()) {
                        dVar.m14054h(dVar.m14045q(this.f1114M.f1105D), q4, 0, 8);
                        return;
                    }
                    return;
                }
                return;
            }
        }
        if (eVar != null) {
            eVar.f1072s++;
        }
        ConstraintWidget constraintWidget2 = this.f1114M;
        if (constraintWidget2 != null) {
            z4 = constraintWidget2 != null && constraintWidget2.f1113L[0] == DimensionBehaviour.WRAP_CONTENT;
            z3 = constraintWidget2 != null && constraintWidget2.f1113L[1] == DimensionBehaviour.WRAP_CONTENT;
            if (m13977V(0)) {
                this.f1114M.P0(this, 0);
                z8 = true;
            } else {
                z8 = m13976W();
            }
            if (m13977V(1)) {
                this.f1114M.P0(this, 1);
                z9 = true;
            } else {
                z9 = m13974Y();
            }
            if (!z8 && z4 && this.f1137e0 != 8 && this.f1100A.f1084d == null && this.f1104C.f1084d == null) {
                dVar.m14054h(dVar.m14045q(this.f1114M.f1104C), q2, 0, 1);
            }
            if (!z9 && z3 && this.f1137e0 != 8 && this.f1102B.f1084d == null && this.f1105D.f1084d == null && this.f1106E == null) {
                dVar.m14054h(dVar.m14045q(this.f1114M.f1105D), q4, 0, 1);
            }
            z2 = z9;
            z = z8;
        } else {
            z3 = false;
            z4 = false;
            z2 = false;
            z = false;
        }
        int i3 = this.f1115N;
        int i4 = this.f1126Y;
        if (i3 >= i4) {
            i4 = i3;
        }
        int i5 = this.f1116O;
        int i6 = this.f1127Z;
        if (i5 >= i6) {
            i6 = i5;
        }
        DimensionBehaviour[] dimensionBehaviourArr = this.f1113L;
        DimensionBehaviour dimensionBehaviour = dimensionBehaviourArr[0];
        DimensionBehaviour dimensionBehaviour2 = DimensionBehaviour.MATCH_CONSTRAINT;
        boolean z12 = dimensionBehaviour != dimensionBehaviour2;
        boolean z13 = dimensionBehaviourArr[1] != dimensionBehaviour2;
        int i7 = this.f1118Q;
        this.f1168u = i7;
        float f = this.f1117P;
        this.f1170v = f;
        int i8 = this.f1146j;
        int i9 = this.f1148k;
        if (f <= 0.0f || this.f1137e0 == 8) {
            z5 = false;
        } else {
            int i10 = i8;
            if (dimensionBehaviourArr[0] == dimensionBehaviour2) {
                i10 = i8;
                if (i8 == 0) {
                    i10 = 3;
                }
            }
            if (dimensionBehaviourArr[1] == dimensionBehaviour2 && i9 == 0) {
                i9 = 3;
            }
            if (dimensionBehaviourArr[0] == dimensionBehaviour2 && dimensionBehaviourArr[1] == dimensionBehaviour2 && i10 == 3 && i9 == 3) {
                m13992I0(z4, z3, z12, z13);
            } else if (dimensionBehaviourArr[0] == dimensionBehaviour2 && i10 == 3) {
                this.f1168u = 0;
                i4 = (int) (f * i5);
                if (dimensionBehaviourArr[1] != dimensionBehaviour2) {
                    z5 = false;
                    i8 = 4;
                } else {
                    i8 = i10;
                    z5 = true;
                }
            } else if (dimensionBehaviourArr[1] == dimensionBehaviour2 && i9 == 3) {
                this.f1168u = 1;
                if (i7 == -1) {
                    this.f1170v = 1.0f / f;
                }
                i6 = (int) (this.f1170v * i3);
                i8 = i10;
                if (dimensionBehaviourArr[0] != dimensionBehaviour2) {
                    z5 = false;
                    i9 = 4;
                }
            }
            i8 = i10;
            z5 = true;
        }
        int[] iArr = this.f1150l;
        iArr[0] = i8;
        iArr[1] = i9;
        boolean z14 = z5 && ((i2 = this.f1168u) == 0 || i2 == -1);
        DimensionBehaviour dimensionBehaviour3 = this.f1113L[0];
        DimensionBehaviour dimensionBehaviour4 = DimensionBehaviour.WRAP_CONTENT;
        boolean z15 = dimensionBehaviour3 == dimensionBehaviour4 && (this instanceof d);
        if (z15) {
            i4 = 0;
        }
        boolean z16 = !this.f1109H.m14014j();
        boolean[] zArr = this.f1112K;
        boolean z17 = zArr[0];
        boolean z18 = zArr[1];
        SolverVariable solverVariable5 = null;
        if (this.f1142h != 2) {
            i iVar2 = this.f1134d;
            DependencyNode dependencyNode2 = ((WidgetRun) iVar2).h;
            if (!dependencyNode2.j || !((WidgetRun) iVar2).i.j) {
                ConstraintWidget constraintWidget3 = this.f1114M;
                SolverVariable q6 = constraintWidget3 != null ? dVar.m14045q(constraintWidget3.f1104C) : null;
                ConstraintWidget constraintWidget4 = this.f1114M;
                m13961h(dVar, true, z4, z3, this.f1138f[0], constraintWidget4 != null ? dVar.m14045q(constraintWidget4.f1100A) : null, q6, this.f1113L[0], z15, this.f1100A, this.f1104C, this.f1119R, i4, this.f1126Y, this.f1172w[0], this.f1129a0, z14, z, z2, z17, i8, i9, this.f1152m, this.f1154n, this.f1156o, z16);
            } else {
                dVar.m14056f(q, dependencyNode2.g);
                dVar.m14056f(q2, ((WidgetRun) this.f1134d).i.g);
                if (this.f1114M != null && z4 && this.f1138f[0] && !m13976W()) {
                    dVar.m14054h(dVar.m14045q(this.f1114M.f1104C), q2, 0, 8);
                }
            }
        }
        k kVar2 = this.f1136e;
        DependencyNode dependencyNode3 = ((WidgetRun) kVar2).h;
        if (!dependencyNode3.j || !((WidgetRun) kVar2).i.j) {
            z6 = true;
        } else {
            dVar.m14056f(q3, dependencyNode3.g);
            dVar.m14056f(q4, ((WidgetRun) this.f1136e).i.g);
            dVar.m14056f(q5, this.f1136e.k.g);
            ConstraintWidget constraintWidget5 = this.f1114M;
            if (constraintWidget5 != null && !z2 && z3 && this.f1138f[1]) {
                dVar.m14054h(dVar.m14045q(constraintWidget5.f1105D), q4, 0, 8);
            }
            z6 = false;
        }
        if (this.f1144i == 2) {
            z6 = false;
        }
        if (z6) {
            boolean z19 = this.f1113L[1] == dimensionBehaviour4 && (this instanceof d);
            if (z19) {
                i6 = 0;
            }
            boolean z20 = z5 && ((i = this.f1168u) == 1 || i == -1);
            ConstraintWidget constraintWidget6 = this.f1114M;
            SolverVariable q7 = constraintWidget6 != null ? dVar.m14045q(constraintWidget6.f1105D) : null;
            ConstraintWidget constraintWidget7 = this.f1114M;
            if (constraintWidget7 != null) {
                solverVariable5 = dVar.m14045q(constraintWidget7.f1102B);
            }
            if (this.f1125X > 0 || this.f1137e0 == 8) {
                dVar.m14057e(q5, q3, m13947o(), 8);
                ConstraintAnchor constraintAnchor = this.f1106E.f1084d;
                if (constraintAnchor != null) {
                    dVar.m14057e(q5, dVar.m14045q(constraintAnchor), 0, 8);
                    if (z3) {
                        dVar.m14054h(q7, dVar.m14045q(this.f1105D), 0, 5);
                    }
                    z7 = false;
                    m13961h(dVar, false, z3, z4, this.f1138f[1], solverVariable5, q7, this.f1113L[1], z19, this.f1102B, this.f1105D, this.f1120S, i6, this.f1127Z, this.f1172w[1], this.f1131b0, z20, z2, z, z18, i9, i8, this.f1158p, this.f1160q, this.f1162r, z7);
                } else if (this.f1137e0 == 8) {
                    dVar.m14057e(q5, q3, 0, 8);
                }
            }
            z7 = z16;
            m13961h(dVar, false, z3, z4, this.f1138f[1], solverVariable5, q7, this.f1113L[1], z19, this.f1102B, this.f1105D, this.f1120S, i6, this.f1127Z, this.f1172w[1], this.f1131b0, z20, z2, z, z18, i9, i8, this.f1158p, this.f1160q, this.f1162r, z7);
        }
        if (z5) {
            int i11 = this.f1168u;
            float f2 = this.f1170v;
            if (i11 == 1) {
                solverVariable2 = q4;
                solverVariable4 = q3;
                solverVariable = q2;
                solverVariable3 = q;
            } else {
                solverVariable3 = q3;
                solverVariable = q4;
                solverVariable4 = q;
                solverVariable2 = q2;
            }
            dVar.m14051k(solverVariable2, solverVariable4, solverVariable, solverVariable3, f2, 8);
        }
        if (this.f1109H.m14014j()) {
            dVar.m14060b(this, this.f1109H.m14017g().m14019e(), (float) Math.toRadians(this.f1174x + 90.0f), this.f1109H.m14021c());
        }
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:37:0x00f0 -> B:38:0x00f3). Please submit an issue!!! */
    /* renamed from: f0 */
    public void m13964f0(String str) {
        float f;
        if (str == null || str.length() == 0) {
            this.f1117P = 0.0f;
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
            this.f1117P = f;
            this.f1118Q = i;
        }
    }

    /* renamed from: g */
    public boolean m13963g() {
        return this.f1137e0 != 8;
    }

    /* renamed from: g0 */
    public void m13962g0(int i, int i2, int i3, int i4) {
        int i5 = i3 - i;
        int i6 = i4 - i2;
        this.f1119R = i;
        this.f1120S = i2;
        if (this.f1137e0 == 8) {
            this.f1115N = 0;
            this.f1116O = 0;
            return;
        }
        DimensionBehaviour[] dimensionBehaviourArr = this.f1113L;
        DimensionBehaviour dimensionBehaviour = dimensionBehaviourArr[0];
        DimensionBehaviour dimensionBehaviour2 = DimensionBehaviour.FIXED;
        int i7 = i5;
        if (dimensionBehaviour == dimensionBehaviour2) {
            int i8 = this.f1115N;
            i7 = i5;
            if (i5 < i8) {
                i7 = i8;
            }
        }
        int i9 = i6;
        if (dimensionBehaviourArr[1] == dimensionBehaviour2) {
            int i10 = this.f1116O;
            i9 = i6;
            if (i6 < i10) {
                i9 = i10;
            }
        }
        this.f1115N = i7;
        this.f1116O = i9;
        int i11 = this.f1127Z;
        if (i9 < i11) {
            this.f1116O = i11;
        }
        int i12 = this.f1126Y;
        if (i7 < i12) {
            this.f1115N = i12;
        }
    }

    /* renamed from: h0 */
    public void m13960h0(boolean z) {
        this.f1176y = z;
    }

    /* JADX WARN: Code restructure failed: missing block: B:100:0x02ec, code lost:
        if (r8.m14014j() != false) goto L_0x032e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:108:0x032b, code lost:
        if (r8.m14014j() != false) goto L_0x032e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:109:0x032e, code lost:
        r7.m14012l();
        r8.m14012l();
        r18 = r10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:95:0x02be, code lost:
        if (r7 == androidx.constraintlayout.solver.widgets.ConstraintAnchor.Type.RIGHT) goto L_0x02c1;
     */
    /* renamed from: i */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m13959i(androidx.constraintlayout.solver.widgets.ConstraintAnchor.Type r7, androidx.constraintlayout.solver.widgets.ConstraintWidget r8, androidx.constraintlayout.solver.widgets.ConstraintAnchor.Type r9, int r10) {
        /*
            Method dump skipped, instructions count: 845
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.solver.widgets.ConstraintWidget.m13959i(androidx.constraintlayout.solver.widgets.ConstraintAnchor$Type, androidx.constraintlayout.solver.widgets.ConstraintWidget, androidx.constraintlayout.solver.widgets.ConstraintAnchor$Type, int):void");
    }

    /* renamed from: i0 */
    public void m13958i0(int i) {
        this.f1116O = i;
        int i2 = this.f1127Z;
        if (i < i2) {
            this.f1116O = i2;
        }
    }

    /* renamed from: j */
    public void m13957j(ConstraintAnchor constraintAnchor, ConstraintAnchor constraintAnchor2, int i) {
        if (constraintAnchor.m14019e() == this) {
            m13959i(constraintAnchor.m14016h(), constraintAnchor2.m14019e(), constraintAnchor2.m14016h(), i);
        }
    }

    /* renamed from: j0 */
    public void m13956j0(float f) {
        this.f1129a0 = f;
    }

    /* renamed from: k */
    public void m13955k(ConstraintWidget constraintWidget, float f, int i) {
        ConstraintAnchor.Type type = ConstraintAnchor.Type.CENTER;
        m13978U(type, constraintWidget, type, i, 0);
        this.f1174x = f;
    }

    /* renamed from: k0 */
    public void m13954k0(int i) {
        this.f1167t0 = i;
    }

    /* renamed from: l */
    public void m13953l(ConstraintWidget constraintWidget, HashMap<ConstraintWidget, ConstraintWidget> hashMap) {
        this.f1142h = constraintWidget.f1142h;
        this.f1144i = constraintWidget.f1144i;
        this.f1146j = constraintWidget.f1146j;
        this.f1148k = constraintWidget.f1148k;
        int[] iArr = this.f1150l;
        int[] iArr2 = constraintWidget.f1150l;
        iArr[0] = iArr2[0];
        iArr[1] = iArr2[1];
        this.f1152m = constraintWidget.f1152m;
        this.f1154n = constraintWidget.f1154n;
        this.f1158p = constraintWidget.f1158p;
        this.f1160q = constraintWidget.f1160q;
        this.f1162r = constraintWidget.f1162r;
        this.f1164s = constraintWidget.f1164s;
        this.f1166t = constraintWidget.f1166t;
        this.f1168u = constraintWidget.f1168u;
        this.f1170v = constraintWidget.f1170v;
        int[] iArr3 = constraintWidget.f1172w;
        this.f1172w = Arrays.copyOf(iArr3, iArr3.length);
        this.f1174x = constraintWidget.f1174x;
        this.f1176y = constraintWidget.f1176y;
        this.f1178z = constraintWidget.f1178z;
        this.f1100A.m14012l();
        this.f1102B.m14012l();
        this.f1104C.m14012l();
        this.f1105D.m14012l();
        this.f1106E.m14012l();
        this.f1107F.m14012l();
        this.f1108G.m14012l();
        this.f1109H.m14012l();
        this.f1113L = (DimensionBehaviour[]) Arrays.copyOf(this.f1113L, 2);
        ConstraintWidget constraintWidget2 = null;
        this.f1114M = this.f1114M == null ? null : hashMap.get(constraintWidget.f1114M);
        this.f1115N = constraintWidget.f1115N;
        this.f1116O = constraintWidget.f1116O;
        this.f1117P = constraintWidget.f1117P;
        this.f1118Q = constraintWidget.f1118Q;
        this.f1119R = constraintWidget.f1119R;
        this.f1120S = constraintWidget.f1120S;
        this.f1121T = constraintWidget.f1121T;
        this.f1122U = constraintWidget.f1122U;
        this.f1123V = constraintWidget.f1123V;
        this.f1124W = constraintWidget.f1124W;
        this.f1125X = constraintWidget.f1125X;
        this.f1126Y = constraintWidget.f1126Y;
        this.f1127Z = constraintWidget.f1127Z;
        this.f1129a0 = constraintWidget.f1129a0;
        this.f1131b0 = constraintWidget.f1131b0;
        this.f1133c0 = constraintWidget.f1133c0;
        this.f1135d0 = constraintWidget.f1135d0;
        this.f1137e0 = constraintWidget.f1137e0;
        this.f1139f0 = constraintWidget.f1139f0;
        this.f1141g0 = constraintWidget.f1141g0;
        this.f1143h0 = constraintWidget.f1143h0;
        this.f1145i0 = constraintWidget.f1145i0;
        this.f1147j0 = constraintWidget.f1147j0;
        this.f1149k0 = constraintWidget.f1149k0;
        this.f1151l0 = constraintWidget.f1151l0;
        this.f1153m0 = constraintWidget.f1153m0;
        this.f1155n0 = constraintWidget.f1155n0;
        this.f1157o0 = constraintWidget.f1157o0;
        this.f1159p0 = constraintWidget.f1159p0;
        this.f1161q0 = constraintWidget.f1161q0;
        this.f1163r0 = constraintWidget.f1163r0;
        this.f1165s0 = constraintWidget.f1165s0;
        this.f1167t0 = constraintWidget.f1167t0;
        this.f1169u0 = constraintWidget.f1169u0;
        this.f1171v0 = constraintWidget.f1171v0;
        this.f1173w0 = constraintWidget.f1173w0;
        float[] fArr = this.f1175x0;
        float[] fArr2 = constraintWidget.f1175x0;
        fArr[0] = fArr2[0];
        fArr[1] = fArr2[1];
        ConstraintWidget[] constraintWidgetArr = this.f1177y0;
        ConstraintWidget[] constraintWidgetArr2 = constraintWidget.f1177y0;
        constraintWidgetArr[0] = constraintWidgetArr2[0];
        constraintWidgetArr[1] = constraintWidgetArr2[1];
        ConstraintWidget[] constraintWidgetArr3 = this.f1179z0;
        ConstraintWidget[] constraintWidgetArr4 = constraintWidget.f1179z0;
        constraintWidgetArr3[0] = constraintWidgetArr4[0];
        constraintWidgetArr3[1] = constraintWidgetArr4[1];
        ConstraintWidget constraintWidget3 = constraintWidget.f1101A0;
        this.f1101A0 = constraintWidget3 == null ? null : hashMap.get(constraintWidget3);
        ConstraintWidget constraintWidget4 = constraintWidget.f1103B0;
        if (constraintWidget4 != null) {
            constraintWidget2 = hashMap.get(constraintWidget4);
        }
        this.f1103B0 = constraintWidget2;
    }

    /* renamed from: l0 */
    public void m13952l0(int i, int i2) {
        this.f1119R = i;
        int i3 = i2 - i;
        this.f1115N = i3;
        int i4 = this.f1126Y;
        if (i3 < i4) {
            this.f1115N = i4;
        }
    }

    /* renamed from: m */
    public void m13951m(C0199d dVar) {
        dVar.m14045q(this.f1100A);
        dVar.m14045q(this.f1102B);
        dVar.m14045q(this.f1104C);
        dVar.m14045q(this.f1105D);
        if (this.f1125X > 0) {
            dVar.m14045q(this.f1106E);
        }
    }

    /* renamed from: m0 */
    public void m13950m0(DimensionBehaviour dimensionBehaviour) {
        this.f1113L[0] = dimensionBehaviour;
    }

    /* renamed from: n */
    public ConstraintAnchor m13949n(ConstraintAnchor.Type type) {
        switch (C0204a.f1185a[type.ordinal()]) {
            case 1:
                return this.f1100A;
            case 2:
                return this.f1102B;
            case 3:
                return this.f1104C;
            case 4:
                return this.f1105D;
            case 5:
                return this.f1106E;
            case 6:
                return this.f1109H;
            case 7:
                return this.f1107F;
            case 8:
                return this.f1108G;
            case 9:
                return null;
            default:
                throw new AssertionError(type.name());
        }
    }

    /* renamed from: n0 */
    public void m13948n0(int i, int i2, int i3, float f) {
        this.f1146j = i;
        this.f1152m = i2;
        int i4 = i3;
        if (i3 == Integer.MAX_VALUE) {
            i4 = 0;
        }
        this.f1154n = i4;
        this.f1156o = f;
        if (f > 0.0f && f < 1.0f && i == 0) {
            this.f1146j = 2;
        }
    }

    /* renamed from: o */
    public int m13947o() {
        return this.f1125X;
    }

    /* renamed from: o0 */
    public void m13946o0(float f) {
        this.f1175x0[0] = f;
    }

    /* renamed from: p */
    public float m13945p(int i) {
        if (i == 0) {
            return this.f1129a0;
        }
        if (i == 1) {
            return this.f1131b0;
        }
        return -1.0f;
    }

    /* renamed from: p0 */
    protected void m13944p0(int i, boolean z) {
        this.f1112K[i] = z;
    }

    /* renamed from: q */
    public int m13943q() {
        return m13980S() + this.f1116O;
    }

    /* renamed from: q0 */
    public void m13942q0(boolean z) {
        this.f1178z = z;
    }

    /* renamed from: r */
    public Object m13941r() {
        return this.f1133c0;
    }

    /* renamed from: r0 */
    public void m13940r0(boolean z) {
    }

    /* renamed from: s */
    public String m13939s() {
        return this.f1139f0;
    }

    /* renamed from: s0 */
    public void m13938s0(int i) {
        this.f1172w[1] = i;
    }

    /* renamed from: t */
    public DimensionBehaviour m13937t(int i) {
        if (i == 0) {
            return m13925z();
        }
        if (i == 1) {
            return m13985N();
        }
        return null;
    }

    /* renamed from: t0 */
    public void m13936t0(int i) {
        this.f1172w[0] = i;
    }

    public String toString() {
        String str;
        StringBuilder sb = new StringBuilder();
        String str2 = "";
        if (this.f1141g0 != null) {
            str = "type: " + this.f1141g0 + " ";
        } else {
            str = "";
        }
        sb.append(str);
        if (this.f1139f0 != null) {
            str2 = "id: " + this.f1139f0 + " ";
        }
        sb.append(str2);
        sb.append("(");
        sb.append(this.f1119R);
        sb.append(", ");
        sb.append(this.f1120S);
        sb.append(") - (");
        sb.append(this.f1115N);
        sb.append(" x ");
        sb.append(this.f1116O);
        sb.append(")");
        return sb.toString();
    }

    /* renamed from: u */
    public float m13935u() {
        return this.f1117P;
    }

    /* renamed from: u0 */
    public void m13934u0(int i) {
        int i2 = i;
        if (i < 0) {
            i2 = 0;
        }
        this.f1127Z = i2;
    }

    /* renamed from: v */
    public int m13933v() {
        return this.f1118Q;
    }

    /* renamed from: v0 */
    public void m13932v0(int i) {
        int i2 = i;
        if (i < 0) {
            i2 = 0;
        }
        this.f1126Y = i2;
    }

    /* renamed from: w */
    public int m13931w() {
        if (this.f1137e0 == 8) {
            return 0;
        }
        return this.f1116O;
    }

    /* renamed from: w0 */
    public void m13930w0(int i, int i2) {
        this.f1119R = i;
        this.f1120S = i2;
    }

    /* renamed from: x */
    public float m13929x() {
        return this.f1129a0;
    }

    /* renamed from: x0 */
    public void m13928x0(ConstraintWidget constraintWidget) {
        this.f1114M = constraintWidget;
    }

    /* renamed from: y */
    public int m13927y() {
        return this.f1167t0;
    }

    /* renamed from: y0 */
    public void m13926y0(float f) {
        this.f1131b0 = f;
    }

    /* renamed from: z */
    public DimensionBehaviour m13925z() {
        return this.f1113L[0];
    }

    /* renamed from: z0 */
    public void m13924z0(int i) {
        this.f1169u0 = i;
    }
}
