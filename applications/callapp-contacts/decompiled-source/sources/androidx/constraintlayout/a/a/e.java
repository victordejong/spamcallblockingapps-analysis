package androidx.constraintlayout.a.a;

import androidx.constraintlayout.a.a.a.c;
import androidx.constraintlayout.a.a.a.l;
import androidx.constraintlayout.a.a.a.n;
import androidx.constraintlayout.a.a.a.p;
import androidx.constraintlayout.a.a.d;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import org.apache.commons.lang3.StringUtils;
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/a/a/e.class */
public class e {
    public static float ag = 0.5f;
    float A;
    public int[] B;
    public boolean C;
    public boolean D;
    public boolean E;
    public int F;
    public int G;
    public d H;
    public d I;
    public d J;
    public d K;
    public d L;
    d M;
    d N;
    public d O;
    public d[] P;
    protected ArrayList<d> Q;
    public a[] R;
    public e S;
    int T;
    int U;
    public float V;
    protected int W;
    protected int X;
    protected int Y;
    int Z;

    /* renamed from: a  reason: collision with root package name */
    private boolean f1368a;
    boolean aA;
    public float[] aB;
    protected e[] aC;
    protected e[] aD;
    e aE;
    e aF;
    public int aG;
    public int aH;
    private boolean aI;
    private float aJ;
    private boolean[] aK;
    private int aL;
    private String aM;
    int aa;
    protected int ab;
    protected int ac;
    public int ad;
    protected int ae;
    protected int af;
    public float ah;
    public float ai;
    public Object aj;
    public int ak;
    public String al;
    int am;
    int an;
    int ao;
    int ap;
    boolean aq;
    boolean ar;
    boolean as;
    boolean at;
    boolean au;
    boolean av;
    boolean aw;
    public int ax;
    public int ay;
    boolean az;

    /* renamed from: b  reason: collision with root package name */
    private boolean f1369b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f1370c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f1371d;
    public boolean e;
    public p[] f;
    public c g;
    public c h;
    public l i;
    public n j;
    public boolean[] k;
    boolean l;
    public int m;
    public int n;
    public int o;
    public int p;
    public int[] q;
    public int r;
    public int s;
    public float t;
    public int u;
    public int v;
    public float w;
    public boolean x;
    public boolean y;
    int z;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.constraintlayout.a.a.e$1  reason: invalid class name */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/a/a/e$1.class */
    public static final /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f1372a;

        /* renamed from: b  reason: collision with root package name */
        static final /* synthetic */ int[] f1373b;

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
            int[] iArr = new int[a.values().length];
            f1373b = iArr;
            try {
                iArr[a.FIXED.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f1373b[a.WRAP_CONTENT.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f1373b[a.MATCH_PARENT.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f1373b[a.MATCH_CONSTRAINT.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            int[] iArr2 = new int[d.a.values().length];
            f1372a = iArr2;
            try {
                iArr2[d.a.LEFT.ordinal()] = 1;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f1372a[d.a.TOP.ordinal()] = 2;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f1372a[d.a.RIGHT.ordinal()] = 3;
            } catch (NoSuchFieldError e7) {
            }
            try {
                f1372a[d.a.BOTTOM.ordinal()] = 4;
            } catch (NoSuchFieldError e8) {
            }
            try {
                f1372a[d.a.BASELINE.ordinal()] = 5;
            } catch (NoSuchFieldError e9) {
            }
            try {
                f1372a[d.a.CENTER.ordinal()] = 6;
            } catch (NoSuchFieldError e10) {
            }
            try {
                f1372a[d.a.CENTER_X.ordinal()] = 7;
            } catch (NoSuchFieldError e11) {
            }
            try {
                f1372a[d.a.CENTER_Y.ordinal()] = 8;
            } catch (NoSuchFieldError e12) {
            }
            try {
                f1372a[d.a.NONE.ordinal()] = 9;
            } catch (NoSuchFieldError e13) {
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/a/a/e$a.class */
    public enum a {
        FIXED,
        WRAP_CONTENT,
        MATCH_CONSTRAINT,
        MATCH_PARENT
    }

    public e() {
        this.e = false;
        this.f = new p[2];
        this.i = null;
        this.j = null;
        this.k = new boolean[]{true, true};
        this.l = false;
        this.f1368a = true;
        this.f1369b = false;
        this.f1370c = true;
        this.f1371d = false;
        this.aI = false;
        this.m = -1;
        this.n = -1;
        this.o = 0;
        this.p = 0;
        this.q = new int[2];
        this.r = 0;
        this.s = 0;
        this.t = 1.0f;
        this.u = 0;
        this.v = 0;
        this.w = 1.0f;
        this.z = -1;
        this.A = 1.0f;
        this.B = new int[]{Integer.MAX_VALUE, Integer.MAX_VALUE};
        this.aJ = BitmapDescriptorFactory.HUE_RED;
        this.C = false;
        this.E = false;
        this.F = 0;
        this.G = 0;
        this.H = new d(this, d.a.LEFT);
        this.I = new d(this, d.a.TOP);
        this.J = new d(this, d.a.RIGHT);
        this.K = new d(this, d.a.BOTTOM);
        this.L = new d(this, d.a.BASELINE);
        this.M = new d(this, d.a.CENTER_X);
        this.N = new d(this, d.a.CENTER_Y);
        d dVar = new d(this, d.a.CENTER);
        this.O = dVar;
        this.P = new d[]{this.H, this.J, this.I, this.K, this.L, dVar};
        this.Q = new ArrayList<>();
        this.aK = new boolean[2];
        this.R = new a[]{a.FIXED, a.FIXED};
        this.S = null;
        this.T = 0;
        this.U = 0;
        this.V = BitmapDescriptorFactory.HUE_RED;
        this.W = -1;
        this.X = 0;
        this.Y = 0;
        this.Z = 0;
        this.aa = 0;
        this.ab = 0;
        this.ac = 0;
        this.ad = 0;
        float f = ag;
        this.ah = f;
        this.ai = f;
        this.aL = 0;
        this.ak = 0;
        this.al = null;
        this.aM = null;
        this.aw = false;
        this.ax = 0;
        this.ay = 0;
        this.aB = new float[]{-1.0f, -1.0f};
        this.aC = new e[]{null, null};
        this.aD = new e[]{null, null};
        this.aE = null;
        this.aF = null;
        this.aG = -1;
        this.aH = -1;
        d();
    }

    public e(int i, int i2) {
        this(0, 0, i, i2);
    }

    public e(int i, int i2, int i3, int i4) {
        this.e = false;
        this.f = new p[2];
        this.i = null;
        this.j = null;
        this.k = new boolean[]{true, true};
        this.l = false;
        this.f1368a = true;
        this.f1369b = false;
        this.f1370c = true;
        this.f1371d = false;
        this.aI = false;
        this.m = -1;
        this.n = -1;
        this.o = 0;
        this.p = 0;
        this.q = new int[2];
        this.r = 0;
        this.s = 0;
        this.t = 1.0f;
        this.u = 0;
        this.v = 0;
        this.w = 1.0f;
        this.z = -1;
        this.A = 1.0f;
        this.B = new int[]{Integer.MAX_VALUE, Integer.MAX_VALUE};
        this.aJ = BitmapDescriptorFactory.HUE_RED;
        this.C = false;
        this.E = false;
        this.F = 0;
        this.G = 0;
        this.H = new d(this, d.a.LEFT);
        this.I = new d(this, d.a.TOP);
        this.J = new d(this, d.a.RIGHT);
        this.K = new d(this, d.a.BOTTOM);
        this.L = new d(this, d.a.BASELINE);
        this.M = new d(this, d.a.CENTER_X);
        this.N = new d(this, d.a.CENTER_Y);
        d dVar = new d(this, d.a.CENTER);
        this.O = dVar;
        this.P = new d[]{this.H, this.J, this.I, this.K, this.L, dVar};
        this.Q = new ArrayList<>();
        this.aK = new boolean[2];
        this.R = new a[]{a.FIXED, a.FIXED};
        this.S = null;
        this.T = 0;
        this.U = 0;
        this.V = BitmapDescriptorFactory.HUE_RED;
        this.W = -1;
        this.X = 0;
        this.Y = 0;
        this.Z = 0;
        this.aa = 0;
        this.ab = 0;
        this.ac = 0;
        this.ad = 0;
        float f = ag;
        this.ah = f;
        this.ai = f;
        this.aL = 0;
        this.ak = 0;
        this.al = null;
        this.aM = null;
        this.aw = false;
        this.ax = 0;
        this.ay = 0;
        this.aB = new float[]{-1.0f, -1.0f};
        this.aC = new e[]{null, null};
        this.aD = new e[]{null, null};
        this.aE = null;
        this.aF = null;
        this.aG = -1;
        this.aH = -1;
        this.X = i;
        this.Y = i2;
        this.T = i3;
        this.U = i4;
        d();
    }

    public e(String str) {
        this.e = false;
        this.f = new p[2];
        this.i = null;
        this.j = null;
        this.k = new boolean[]{true, true};
        this.l = false;
        this.f1368a = true;
        this.f1369b = false;
        this.f1370c = true;
        this.f1371d = false;
        this.aI = false;
        this.m = -1;
        this.n = -1;
        this.o = 0;
        this.p = 0;
        this.q = new int[2];
        this.r = 0;
        this.s = 0;
        this.t = 1.0f;
        this.u = 0;
        this.v = 0;
        this.w = 1.0f;
        this.z = -1;
        this.A = 1.0f;
        this.B = new int[]{Integer.MAX_VALUE, Integer.MAX_VALUE};
        this.aJ = BitmapDescriptorFactory.HUE_RED;
        this.C = false;
        this.E = false;
        this.F = 0;
        this.G = 0;
        this.H = new d(this, d.a.LEFT);
        this.I = new d(this, d.a.TOP);
        this.J = new d(this, d.a.RIGHT);
        this.K = new d(this, d.a.BOTTOM);
        this.L = new d(this, d.a.BASELINE);
        this.M = new d(this, d.a.CENTER_X);
        this.N = new d(this, d.a.CENTER_Y);
        d dVar = new d(this, d.a.CENTER);
        this.O = dVar;
        this.P = new d[]{this.H, this.J, this.I, this.K, this.L, dVar};
        this.Q = new ArrayList<>();
        this.aK = new boolean[2];
        this.R = new a[]{a.FIXED, a.FIXED};
        this.S = null;
        this.T = 0;
        this.U = 0;
        this.V = BitmapDescriptorFactory.HUE_RED;
        this.W = -1;
        this.X = 0;
        this.Y = 0;
        this.Z = 0;
        this.aa = 0;
        this.ab = 0;
        this.ac = 0;
        this.ad = 0;
        float f = ag;
        this.ah = f;
        this.ai = f;
        this.aL = 0;
        this.ak = 0;
        this.al = null;
        this.aM = null;
        this.aw = false;
        this.ax = 0;
        this.ay = 0;
        this.aB = new float[]{-1.0f, -1.0f};
        this.aC = new e[]{null, null};
        this.aD = new e[]{null, null};
        this.aE = null;
        this.aF = null;
        this.aG = -1;
        this.aH = -1;
        d();
        this.al = str;
    }

    public e(String str, int i, int i2) {
        this(i, i2);
        this.al = str;
    }

    public e(String str, int i, int i2, int i3, int i4) {
        this(i, i2, i3, i4);
        this.al = str;
    }

    /* JADX WARN: Code restructure failed: missing block: B:100:0x02de, code lost:
        if (r7 == androidx.constraintlayout.a.a.d.a.RIGHT) goto L_0x02e1;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void a(androidx.constraintlayout.a.a.d.a r7, androidx.constraintlayout.a.a.e r8, androidx.constraintlayout.a.a.d.a r9, int r10) {
        /*
            Method dump skipped, instructions count: 889
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.a.a.e.a(androidx.constraintlayout.a.a.d$a, androidx.constraintlayout.a.a.e, androidx.constraintlayout.a.a.d$a, int):void");
    }

    /* JADX WARN: Code restructure failed: missing block: B:333:0x079f, code lost:
        if (r0 == r0) goto L_0x07a2;
     */
    /* JADX WARN: Removed duplicated region for block: B:254:0x0622  */
    /* JADX WARN: Removed duplicated region for block: B:273:0x0683  */
    /* JADX WARN: Removed duplicated region for block: B:297:0x0700  */
    /* JADX WARN: Removed duplicated region for block: B:338:0x07ca  */
    /* JADX WARN: Removed duplicated region for block: B:362:0x0838  */
    /* JADX WARN: Removed duplicated region for block: B:415:? A[ADDED_TO_REGION, RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void a(androidx.constraintlayout.a.d r11, boolean r12, boolean r13, boolean r14, boolean r15, androidx.constraintlayout.a.h r16, androidx.constraintlayout.a.h r17, androidx.constraintlayout.a.a.e.a r18, boolean r19, androidx.constraintlayout.a.a.d r20, androidx.constraintlayout.a.a.d r21, int r22, int r23, int r24, int r25, float r26, boolean r27, boolean r28, boolean r29, boolean r30, boolean r31, int r32, int r33, int r34, int r35, float r36, boolean r37) {
        /*
            Method dump skipped, instructions count: 2342
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.a.a.e.a(androidx.constraintlayout.a.d, boolean, boolean, boolean, boolean, androidx.constraintlayout.a.h, androidx.constraintlayout.a.h, androidx.constraintlayout.a.a.e$a, boolean, androidx.constraintlayout.a.a.d, androidx.constraintlayout.a.a.d, int, int, int, int, float, boolean, boolean, boolean, boolean, boolean, int, int, int, int, float, boolean):void");
    }

    private void d() {
        this.Q.add(this.H);
        this.Q.add(this.I);
        this.Q.add(this.J);
        this.Q.add(this.K);
        this.Q.add(this.M);
        this.Q.add(this.N);
        this.Q.add(this.O);
        this.Q.add(this.L);
    }

    private boolean o(int i) {
        int i2 = i * 2;
        if (this.P[i2].f == null) {
            return false;
        }
        d dVar = this.P[i2].f.f;
        d[] dVarArr = this.P;
        if (dVar == dVarArr[i2]) {
            return false;
        }
        int i3 = i2 + 1;
        return dVarArr[i3].f != null && this.P[i3].f.f == this.P[i3];
    }

    public final p a(int i) {
        if (i == 0) {
            return this.i;
        }
        if (i == 1) {
            return this.j;
        }
        return null;
    }

    public d a(d.a aVar) {
        switch (AnonymousClass1.f1372a[aVar.ordinal()]) {
            case 1:
                return this.H;
            case 2:
                return this.I;
            case 3:
                return this.J;
            case 4:
                return this.K;
            case 5:
                return this.L;
            case 6:
                return this.O;
            case 7:
                return this.M;
            case 8:
                return this.N;
            case 9:
                return null;
            default:
                throw new AssertionError(aVar.name());
        }
    }

    public final void a(int i, int i2) {
        this.H.a(i);
        this.J.a(i2);
        this.X = i;
        this.T = i2 - i;
        this.f1371d = true;
    }

    public final void a(int i, int i2, int i3, float f) {
        this.o = i;
        this.r = i2;
        int i4 = i3;
        if (i3 == Integer.MAX_VALUE) {
            i4 = 0;
        }
        this.s = i4;
        this.t = f;
        if (f > BitmapDescriptorFactory.HUE_RED && f < 1.0f && i == 0) {
            this.o = 2;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void a(int i, boolean z) {
        this.aK[i] = z;
    }

    public final void a(d.a aVar, e eVar, d.a aVar2, int i, int i2) {
        a(aVar).a(eVar.a(aVar2), i, i2, true);
    }

    public final void a(d dVar, d dVar2, int i) {
        if (dVar.f1366d == this) {
            a(dVar.e, dVar2.f1366d, dVar2.e, i);
        }
    }

    public final void a(e eVar, float f, int i) {
        a(d.a.CENTER, eVar, d.a.CENTER, i, 0);
        this.aJ = f;
    }

    public void a(e eVar, HashMap<e, e> hashMap) {
        this.m = eVar.m;
        this.n = eVar.n;
        this.o = eVar.o;
        this.p = eVar.p;
        int[] iArr = this.q;
        int[] iArr2 = eVar.q;
        iArr[0] = iArr2[0];
        iArr[1] = iArr2[1];
        this.r = eVar.r;
        this.s = eVar.s;
        this.u = eVar.u;
        this.v = eVar.v;
        this.w = eVar.w;
        this.x = eVar.x;
        this.y = eVar.y;
        this.z = eVar.z;
        this.A = eVar.A;
        int[] iArr3 = eVar.B;
        this.B = Arrays.copyOf(iArr3, iArr3.length);
        this.aJ = eVar.aJ;
        this.C = eVar.C;
        this.D = eVar.D;
        this.H.f();
        this.I.f();
        this.J.f();
        this.K.f();
        this.L.f();
        this.M.f();
        this.N.f();
        this.O.f();
        this.R = (a[]) Arrays.copyOf(this.R, 2);
        e eVar2 = null;
        this.S = this.S == null ? null : hashMap.get(eVar.S);
        this.T = eVar.T;
        this.U = eVar.U;
        this.V = eVar.V;
        this.W = eVar.W;
        this.X = eVar.X;
        this.Y = eVar.Y;
        this.Z = eVar.Z;
        this.aa = eVar.aa;
        this.ab = eVar.ab;
        this.ac = eVar.ac;
        this.ad = eVar.ad;
        this.ae = eVar.ae;
        this.af = eVar.af;
        this.ah = eVar.ah;
        this.ai = eVar.ai;
        this.aj = eVar.aj;
        this.aL = eVar.aL;
        this.ak = eVar.ak;
        this.al = eVar.al;
        this.aM = eVar.aM;
        this.am = eVar.am;
        this.an = eVar.an;
        this.ao = eVar.ao;
        this.ap = eVar.ap;
        this.aq = eVar.aq;
        this.ar = eVar.ar;
        this.as = eVar.as;
        this.at = eVar.at;
        this.au = eVar.au;
        this.av = eVar.av;
        this.ax = eVar.ax;
        this.ay = eVar.ay;
        this.az = eVar.az;
        this.aA = eVar.aA;
        float[] fArr = this.aB;
        float[] fArr2 = eVar.aB;
        fArr[0] = fArr2[0];
        fArr[1] = fArr2[1];
        e[] eVarArr = this.aC;
        e[] eVarArr2 = eVar.aC;
        eVarArr[0] = eVarArr2[0];
        eVarArr[1] = eVarArr2[1];
        e[] eVarArr3 = this.aD;
        e[] eVarArr4 = eVar.aD;
        eVarArr3[0] = eVarArr4[0];
        eVarArr3[1] = eVarArr4[1];
        e eVar3 = eVar.aE;
        this.aE = eVar3 == null ? null : hashMap.get(eVar3);
        e eVar4 = eVar.aF;
        if (eVar4 != null) {
            eVar2 = hashMap.get(eVar4);
        }
        this.aF = eVar2;
    }

    public final void a(f fVar, androidx.constraintlayout.a.d dVar, HashSet<e> hashSet, int i, boolean z) {
        if (z) {
            if (hashSet.contains(this)) {
                k.a(fVar, dVar, this);
                hashSet.remove(this);
                a(dVar, fVar.p(64));
            } else {
                return;
            }
        }
        if (i == 0) {
            HashSet<d> hashSet2 = this.H.f1363a;
            if (hashSet2 != null) {
                Iterator<d> it2 = hashSet2.iterator();
                while (it2.hasNext()) {
                    it2.next().f1366d.a(fVar, dVar, hashSet, i, true);
                }
            }
            HashSet<d> hashSet3 = this.J.f1363a;
            if (hashSet3 != null) {
                Iterator<d> it3 = hashSet3.iterator();
                while (it3.hasNext()) {
                    it3.next().f1366d.a(fVar, dVar, hashSet, i, true);
                }
                return;
            }
            return;
        }
        HashSet<d> hashSet4 = this.I.f1363a;
        if (hashSet4 != null) {
            Iterator<d> it4 = hashSet4.iterator();
            while (it4.hasNext()) {
                it4.next().f1366d.a(fVar, dVar, hashSet, i, true);
            }
        }
        HashSet<d> hashSet5 = this.K.f1363a;
        if (hashSet5 != null) {
            Iterator<d> it5 = hashSet5.iterator();
            while (it5.hasNext()) {
                it5.next().f1366d.a(fVar, dVar, hashSet, i, true);
            }
        }
        HashSet<d> hashSet6 = this.L.f1363a;
        if (hashSet6 != null) {
            Iterator<d> it6 = hashSet6.iterator();
            while (it6.hasNext()) {
                it6.next().f1366d.a(fVar, dVar, hashSet, i, true);
            }
        }
    }

    public void a(androidx.constraintlayout.a.c cVar) {
        this.H.d();
        this.I.d();
        this.J.d();
        this.K.d();
        this.L.d();
        this.O.d();
        this.M.d();
        this.N.d();
    }

    public final void a(androidx.constraintlayout.a.d dVar) {
        dVar.a(this.H);
        dVar.a(this.I);
        dVar.a(this.J);
        dVar.a(this.K);
        if (this.ad > 0) {
            dVar.a(this.L);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:381:0x0b22  */
    /* JADX WARN: Removed duplicated region for block: B:382:0x0b28  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void a(androidx.constraintlayout.a.d r30, boolean r31) {
        /*
            Method dump skipped, instructions count: 3216
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.a.a.e.a(androidx.constraintlayout.a.d, boolean):void");
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:37:0x00f0 -> B:38:0x00f3). Please submit an issue!!! */
    public final void a(String str) {
        float f;
        if (str == null || str.length() == 0) {
            this.V = BitmapDescriptorFactory.HUE_RED;
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
            f = BitmapDescriptorFactory.HUE_RED;
        } else {
            String substring3 = str.substring(i2, indexOf2);
            String substring4 = str.substring(indexOf2 + 1);
            if (substring3.length() > 0 && substring4.length() > 0) {
                float parseFloat = Float.parseFloat(substring3);
                float parseFloat2 = Float.parseFloat(substring4);
                if (parseFloat > BitmapDescriptorFactory.HUE_RED && parseFloat2 > BitmapDescriptorFactory.HUE_RED) {
                    f = i == 1 ? Math.abs(parseFloat2 / parseFloat) : Math.abs(parseFloat / parseFloat2);
                }
            }
            f = BitmapDescriptorFactory.HUE_RED;
        }
        if (f > BitmapDescriptorFactory.HUE_RED) {
            this.V = f;
            this.W = i;
        }
    }

    public final void a(boolean z) {
        this.f1368a = true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x0092, code lost:
        if (r0 == Integer.MAX_VALUE) goto L_0x0095;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void a(boolean r4, boolean r5) {
        /*
            Method dump skipped, instructions count: 350
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.a.a.e.a(boolean, boolean):void");
    }

    public boolean a() {
        return this.ak != 8;
    }

    public final void b(int i) {
        if (this.C) {
            int i2 = i - this.ad;
            int i3 = this.U;
            this.Y = i2;
            this.I.a(i2);
            this.K.a(i3 + i2);
            this.L.a(i);
            this.aI = true;
        }
    }

    public final void b(int i, int i2) {
        this.I.a(i);
        this.K.a(i2);
        this.Y = i;
        this.U = i2 - i;
        if (this.C) {
            this.L.a(i + this.ad);
        }
        this.aI = true;
    }

    public final void b(int i, int i2, int i3, float f) {
        this.p = i;
        this.u = i2;
        int i4 = i3;
        if (i3 == Integer.MAX_VALUE) {
            i4 = 0;
        }
        this.v = i4;
        this.w = f;
        if (f > BitmapDescriptorFactory.HUE_RED && f < 1.0f && i == 0) {
            this.p = 2;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:39:0x0120, code lost:
        if (r7 == Integer.MAX_VALUE) goto L_0x0123;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void b(boolean r4) {
        /*
            Method dump skipped, instructions count: 465
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.a.a.e.b(boolean):void");
    }

    public boolean b() {
        if (!this.f1371d) {
            return this.H.f1365c && this.J.f1365c;
        }
        return true;
    }

    public final void c(int i, int i2) {
        this.F = i;
        this.G = i2;
        this.f1368a = false;
    }

    public boolean c() {
        if (!this.aI) {
            return this.I.f1365c && this.K.f1365c;
        }
        return true;
    }

    public final boolean c(int i) {
        if (i == 0) {
            return (this.H.f != null ? 1 : 0) + (this.J.f != null ? 1 : 0) < 2;
        }
        return ((this.I.f != null ? 1 : 0) + (this.K.f != null ? 1 : 0)) + (this.L.f != null ? 1 : 0) < 2;
    }

    public final float d(int i) {
        if (i == 0) {
            return this.ah;
        }
        if (i == 1) {
            return this.ai;
        }
        return -1.0f;
    }

    public final void d(int i, int i2) {
        this.X = i;
        this.Y = i2;
    }

    public final void e(int i) {
        this.X = i;
    }

    public final void e(int i, int i2) {
        this.X = i;
        int i3 = i2 - i;
        this.T = i3;
        int i4 = this.ae;
        if (i3 < i4) {
            this.T = i4;
        }
    }

    public final void f(int i) {
        this.Y = i;
    }

    public final void f(int i, int i2) {
        this.Y = i;
        int i3 = i2 - i;
        this.U = i3;
        int i4 = this.af;
        if (i3 < i4) {
            this.U = i4;
        }
    }

    public final void g() {
        this.H.a(0);
        this.X = 0;
    }

    public final void g(int i) {
        this.T = i;
        int i2 = this.ae;
        if (i < i2) {
            this.T = i2;
        }
    }

    public final void g_() {
        this.I.a(0);
        this.Y = 0;
    }

    public final void h(int i) {
        this.U = i;
        int i2 = this.af;
        if (i < i2) {
            this.U = i2;
        }
    }

    public final void i() {
        this.f1371d = false;
        this.aI = false;
        int size = this.Q.size();
        for (int i = 0; i < size; i++) {
            d dVar = this.Q.get(i);
            dVar.f1365c = false;
            dVar.f1364b = 0;
        }
    }

    public final void i(int i) {
        if (i < 0) {
            this.ae = 0;
        } else {
            this.ae = i;
        }
    }

    public final void j(int i) {
        if (i < 0) {
            this.af = 0;
        } else {
            this.af = i;
        }
    }

    public final boolean j() {
        return this.f1368a && this.ak != 8;
    }

    public void k() {
        this.H.f();
        this.I.f();
        this.J.f();
        this.K.f();
        this.L.f();
        this.M.f();
        this.N.f();
        this.O.f();
        this.S = null;
        this.aJ = BitmapDescriptorFactory.HUE_RED;
        this.T = 0;
        this.U = 0;
        this.V = BitmapDescriptorFactory.HUE_RED;
        this.W = -1;
        this.X = 0;
        this.Y = 0;
        this.ab = 0;
        this.ac = 0;
        this.ad = 0;
        this.ae = 0;
        this.af = 0;
        float f = ag;
        this.ah = f;
        this.ai = f;
        this.R[0] = a.FIXED;
        this.R[1] = a.FIXED;
        this.aj = null;
        this.aL = 0;
        this.ak = 0;
        this.aM = null;
        this.au = false;
        this.av = false;
        this.ax = 0;
        this.ay = 0;
        this.az = false;
        this.aA = false;
        float[] fArr = this.aB;
        fArr[0] = -1.0f;
        fArr[1] = -1.0f;
        this.m = -1;
        this.n = -1;
        int[] iArr = this.B;
        iArr[0] = Integer.MAX_VALUE;
        iArr[1] = Integer.MAX_VALUE;
        this.o = 0;
        this.p = 0;
        this.t = 1.0f;
        this.w = 1.0f;
        this.s = Integer.MAX_VALUE;
        this.v = Integer.MAX_VALUE;
        this.r = 0;
        this.u = 0;
        this.l = false;
        this.z = -1;
        this.A = 1.0f;
        this.aw = false;
        boolean[] zArr = this.k;
        zArr[0] = true;
        zArr[1] = true;
        this.E = false;
        boolean[] zArr2 = this.aK;
        zArr2[0] = false;
        zArr2[1] = false;
        this.f1368a = true;
    }

    public final void k(int i) {
        this.ad = i;
        this.C = i > 0;
    }

    public final a l(int i) {
        if (i == 0) {
            return this.R[0];
        }
        if (i == 1) {
            return this.R[1];
        }
        return null;
    }

    public final void l() {
        if (this.i == null) {
            this.i = new l(this);
        }
        if (this.j == null) {
            this.j = new n(this);
        }
    }

    public final int m() {
        e eVar = this.S;
        return (eVar == null || !(eVar instanceof f)) ? this.X : ((f) eVar).aK + this.X;
    }

    public final e m(int i) {
        if (i == 0) {
            if (this.H.f == null) {
                return null;
            }
            d dVar = this.H.f.f;
            d dVar2 = this.H;
            if (dVar == dVar2) {
                return dVar2.f.f1366d;
            }
            return null;
        } else if (i != 1 || this.I.f == null) {
            return null;
        } else {
            d dVar3 = this.I.f.f;
            d dVar4 = this.I;
            if (dVar3 == dVar4) {
                return dVar4.f.f1366d;
            }
            return null;
        }
    }

    public final int n() {
        e eVar = this.S;
        return (eVar == null || !(eVar instanceof f)) ? this.Y : ((f) eVar).aL + this.Y;
    }

    public final e n(int i) {
        if (i == 0) {
            if (this.J.f == null) {
                return null;
            }
            d dVar = this.J.f.f;
            d dVar2 = this.J;
            if (dVar == dVar2) {
                return dVar2.f.f1366d;
            }
            return null;
        } else if (i != 1 || this.K.f == null) {
            return null;
        } else {
            d dVar3 = this.K.f.f;
            d dVar4 = this.K;
            if (dVar3 == dVar4) {
                return dVar4.f.f1366d;
            }
            return null;
        }
    }

    public final int o() {
        if (this.ak == 8) {
            return 0;
        }
        return this.T;
    }

    public final int p() {
        if (this.ak == 8) {
            return 0;
        }
        return this.U;
    }

    public final int q() {
        return this.ae;
    }

    public final int r() {
        return this.af;
    }

    public final int s() {
        return m() + this.T;
    }

    public final int t() {
        return n() + this.U;
    }

    public String toString() {
        String str;
        StringBuilder sb = new StringBuilder();
        String str2 = "";
        if (this.aM != null) {
            str = "type: " + this.aM + StringUtils.SPACE;
        } else {
            str = "";
        }
        sb.append(str);
        if (this.al != null) {
            str2 = "id: " + this.al + StringUtils.SPACE;
        }
        sb.append(str2);
        sb.append("(");
        sb.append(this.X);
        sb.append(", ");
        sb.append(this.Y);
        sb.append(") - (");
        sb.append(this.T);
        sb.append(" x ");
        sb.append(this.U);
        sb.append(")");
        return sb.toString();
    }

    public final int u() {
        return this.W;
    }

    public final void v() {
        int size = this.Q.size();
        for (int i = 0; i < size; i++) {
            this.Q.get(i).f();
        }
    }

    public final boolean w() {
        if (this.H.f == null || this.H.f.f != this.H) {
            return this.J.f != null && this.J.f.f == this.J;
        }
        return true;
    }

    public final boolean x() {
        if (this.I.f == null || this.I.f.f != this.I) {
            return this.K.f != null && this.K.f.f == this.K;
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean y() {
        return (this instanceof l) || (this instanceof h);
    }
}
