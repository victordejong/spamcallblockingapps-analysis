package androidx.constraintlayout.p026a;

import androidx.constraintlayout.p026a.C0554b;
import androidx.constraintlayout.p026a.C0567h;
import androidx.constraintlayout.p026a.p027a.C0538d;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.Arrays;
import java.util.HashMap;
/* renamed from: androidx.constraintlayout.a.d */
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/a/d.class */
public final class C0557d {

    /* renamed from: a */
    public static boolean f2242a = false;

    /* renamed from: b */
    public static boolean f2243b = true;

    /* renamed from: c */
    public static boolean f2244c = true;

    /* renamed from: d */
    public static boolean f2245d = true;

    /* renamed from: e */
    public static boolean f2246e = true;

    /* renamed from: f */
    public static boolean f2247f = false;

    /* renamed from: o */
    public static C0560e f2248o;

    /* renamed from: p */
    public static long f2249p = 0;

    /* renamed from: q */
    public static long f2250q = 0;

    /* renamed from: r */
    private static int f2251r = 1000;

    /* renamed from: A */
    private AbstractC0558a f2252A;

    /* renamed from: i */
    C0554b[] f2255i;

    /* renamed from: n */
    public final C0556c f2260n;

    /* renamed from: t */
    private AbstractC0558a f2262t;

    /* renamed from: g */
    public boolean f2253g = false;

    /* renamed from: h */
    int f2254h = 0;

    /* renamed from: s */
    private HashMap<String, C0567h> f2261s = null;

    /* renamed from: u */
    private int f2263u = 32;

    /* renamed from: v */
    private int f2264v = 32;

    /* renamed from: j */
    public boolean f2256j = false;

    /* renamed from: k */
    public boolean f2257k = false;

    /* renamed from: w */
    private boolean[] f2265w = new boolean[32];

    /* renamed from: l */
    int f2258l = 1;

    /* renamed from: m */
    int f2259m = 0;

    /* renamed from: x */
    private int f2266x = 32;

    /* renamed from: y */
    private C0567h[] f2267y = new C0567h[f2251r];

    /* renamed from: z */
    private int f2268z = 0;

    /* renamed from: androidx.constraintlayout.a.d$a */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/a/d$a.class */
    public interface AbstractC0558a {
        /* renamed from: a */
        C0567h mo45118a(boolean[] zArr);

        /* renamed from: a */
        void mo45124a(AbstractC0558a abstractC0558a);

        /* renamed from: b */
        boolean mo45117b();

        /* renamed from: c */
        void mo45116c();

        /* renamed from: d */
        C0567h mo45123d();

        /* renamed from: d */
        void mo45115d(C0567h c0567h);
    }

    /* renamed from: androidx.constraintlayout.a.d$b */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/a/d$b.class */
    public final class C0559b extends C0554b {
        public C0559b(C0556c c0556c) {
            C0557d.this = r7;
            this.f2236e = new C0569i(this, c0556c);
        }
    }

    public C0557d() {
        this.f2255i = null;
        this.f2255i = new C0554b[32];
        m45127g();
        C0556c c0556c = new C0556c();
        this.f2260n = c0556c;
        this.f2262t = new C0564g(c0556c);
        if (f2247f) {
            this.f2252A = new C0559b(c0556c);
        } else {
            this.f2252A = new C0554b(c0556c);
        }
    }

    /* renamed from: a */
    public static C0554b m45144a(C0557d c0557d, C0567h c0567h, C0567h c0567h2, float f) {
        C0554b m45132c = c0557d.m45132c();
        m45132c.f2236e.mo45100a(c0567h, -1.0f);
        m45132c.f2236e.mo45100a(c0567h2, f);
        return m45132c;
    }

    /* renamed from: a */
    public static C0560e m45149a() {
        return f2248o;
    }

    /* renamed from: a */
    private C0567h m45143a(C0567h.EnumC0568a enumC0568a, String str) {
        C0567h c0567h;
        C0567h mo45122a = this.f2260n.f2240c.mo45122a();
        if (mo45122a == null) {
            C0567h c0567h2 = new C0567h(enumC0568a, str);
            c0567h2.f2327i = enumC0568a;
            c0567h = c0567h2;
        } else {
            mo45122a.m45108b();
            mo45122a.f2327i = enumC0568a;
            c0567h = mo45122a;
        }
        int i = this.f2268z;
        int i2 = f2251r;
        if (i >= i2) {
            int i3 = i2 * 2;
            f2251r = i3;
            this.f2267y = (C0567h[]) Arrays.copyOf(this.f2267y, i3);
        }
        C0567h[] c0567hArr = this.f2267y;
        int i4 = this.f2268z;
        this.f2268z = i4 + 1;
        c0567hArr[i4] = c0567h;
        return c0567h;
    }

    /* renamed from: a */
    private void m45146a(C0554b c0554b, int i, int i2) {
        c0554b.f2236e.mo45100a(m45148a(i2, (String) null), i);
    }

    /* renamed from: a */
    private void m45145a(AbstractC0558a abstractC0558a) throws Exception {
        C0560e c0560e = f2248o;
        if (c0560e != null) {
            c0560e.f2295t++;
            C0560e c0560e2 = f2248o;
            c0560e2.f2296u = Math.max(c0560e2.f2296u, this.f2258l);
            C0560e c0560e3 = f2248o;
            c0560e3.f2297v = Math.max(c0560e3.f2297v, this.f2259m);
        }
        m45126h();
        m45135b(abstractC0558a);
        m45125i();
    }

    /* renamed from: b */
    private final int m45135b(AbstractC0558a abstractC0558a) {
        int i;
        C0560e c0560e = f2248o;
        if (c0560e != null) {
            c0560e.f2283h++;
        }
        for (int i2 = 0; i2 < this.f2258l; i2++) {
            this.f2265w[i2] = false;
        }
        boolean z = false;
        int i3 = 0;
        while (!z) {
            C0560e c0560e2 = f2248o;
            if (c0560e2 != null) {
                c0560e2.f2284i++;
            }
            int i4 = i3 + 1;
            if (i4 >= this.f2258l * 2) {
                return i4;
            }
            if (abstractC0558a.mo45123d() != null) {
                this.f2265w[abstractC0558a.mo45123d().f2320b] = true;
            }
            C0567h mo45118a = abstractC0558a.mo45118a(this.f2265w);
            if (mo45118a != null) {
                if (this.f2265w[mo45118a.f2320b]) {
                    return i4;
                }
                this.f2265w[mo45118a.f2320b] = true;
            }
            if (mo45118a != null) {
                float f = Float.MAX_VALUE;
                int i5 = 0;
                int i6 = -1;
                while (true) {
                    i = i6;
                    if (i5 >= this.f2259m) {
                        break;
                    }
                    C0554b c0554b = this.f2255i[i5];
                    float f2 = f;
                    int i7 = i;
                    if (c0554b.f2232a.f2327i != C0567h.EnumC0568a.UNRESTRICTED) {
                        f2 = f;
                        i7 = i;
                        if (!c0554b.f2237f) {
                            f2 = f;
                            i7 = i;
                            if (c0554b.m45157a(mo45118a)) {
                                float mo45094b = c0554b.f2236e.mo45094b(mo45118a);
                                f2 = f;
                                i7 = i;
                                if (mo45094b < BitmapDescriptorFactory.HUE_RED) {
                                    float f3 = (-c0554b.f2233b) / mo45094b;
                                    f2 = f;
                                    i7 = i;
                                    if (f3 < f) {
                                        i7 = i5;
                                        f2 = f3;
                                    }
                                }
                            }
                        }
                    }
                    i5++;
                    f = f2;
                    i6 = i7;
                }
                i3 = i4;
                if (i >= 0) {
                    C0554b c0554b2 = this.f2255i[i];
                    c0554b2.f2232a.f2321c = -1;
                    C0560e c0560e3 = f2248o;
                    if (c0560e3 != null) {
                        c0560e3.f2285j++;
                    }
                    c0554b2.m45150c(mo45118a);
                    c0554b2.f2232a.f2321c = i;
                    c0554b2.f2232a.m45109a(this, c0554b2);
                    i3 = i4;
                }
            } else {
                z = true;
                i3 = i4;
            }
        }
        return i3;
    }

    /* renamed from: b */
    public static int m45133b(Object obj) {
        C0567h c0567h = ((C0538d) obj).f2039i;
        if (c0567h != null) {
            return (int) (c0567h.f2323e + 0.5f);
        }
        return 0;
    }

    /* renamed from: b */
    private final void m45136b(C0554b c0554b) {
        int i;
        if (!f2244c || !c0554b.f2237f) {
            this.f2255i[this.f2259m] = c0554b;
            c0554b.f2232a.f2321c = this.f2259m;
            this.f2259m++;
            c0554b.f2232a.m45109a(this, c0554b);
        } else {
            c0554b.f2232a.m45110a(this, c0554b.f2233b);
        }
        if (!f2244c || !this.f2253g) {
            return;
        }
        int i2 = 0;
        while (true) {
            int i3 = i2;
            if (i3 >= this.f2259m) {
                this.f2253g = false;
                return;
            }
            if (this.f2255i[i3] == null) {
                System.out.println("WTF");
            }
            C0554b[] c0554bArr = this.f2255i;
            int i4 = i3;
            if (c0554bArr[i3] != null) {
                i4 = i3;
                if (c0554bArr[i3].f2237f) {
                    C0554b c0554b2 = this.f2255i[i3];
                    c0554b2.f2232a.m45110a(this, c0554b2.f2233b);
                    if (f2247f) {
                        this.f2260n.f2238a.mo45121a(c0554b2);
                    } else {
                        this.f2260n.f2239b.mo45121a(c0554b2);
                    }
                    this.f2255i[i3] = null;
                    int i5 = i3 + 1;
                    int i6 = i5;
                    while (true) {
                        i = this.f2259m;
                        if (i5 >= i) {
                            break;
                        }
                        C0554b[] c0554bArr2 = this.f2255i;
                        int i7 = i5 - 1;
                        c0554bArr2[i7] = c0554bArr2[i5];
                        if (c0554bArr2[i7].f2232a.f2321c == i5) {
                            this.f2255i[i7].f2232a.f2321c = i7;
                        }
                        i6 = i5;
                        i5++;
                    }
                    if (i6 < i) {
                        this.f2255i[i6] = null;
                    }
                    this.f2259m = i - 1;
                    i4 = i3 - 1;
                }
            }
            i2 = i4 + 1;
        }
    }

    /* renamed from: f */
    private void m45128f() {
        int i = this.f2263u * 2;
        this.f2263u = i;
        this.f2255i = (C0554b[]) Arrays.copyOf(this.f2255i, i);
        C0556c c0556c = this.f2260n;
        c0556c.f2241d = (C0567h[]) Arrays.copyOf(c0556c.f2241d, this.f2263u);
        int i2 = this.f2263u;
        this.f2265w = new boolean[i2];
        this.f2264v = i2;
        this.f2266x = i2;
        C0560e c0560e = f2248o;
        if (c0560e != null) {
            c0560e.f2279d++;
            C0560e c0560e2 = f2248o;
            c0560e2.f2290o = Math.max(c0560e2.f2290o, this.f2263u);
            C0560e c0560e3 = f2248o;
            c0560e3.f2300y = c0560e3.f2290o;
        }
    }

    /* renamed from: g */
    private void m45127g() {
        if (!f2247f) {
            for (int i = 0; i < this.f2259m; i++) {
                C0554b c0554b = this.f2255i[i];
                if (c0554b != null) {
                    this.f2260n.f2239b.mo45121a(c0554b);
                }
                this.f2255i[i] = null;
            }
            return;
        }
        for (int i2 = 0; i2 < this.f2259m; i2++) {
            C0554b c0554b2 = this.f2255i[i2];
            if (c0554b2 != null) {
                this.f2260n.f2238a.mo45121a(c0554b2);
            }
            this.f2255i[i2] = null;
        }
    }

    /* renamed from: h */
    private int m45126h() throws Exception {
        boolean z;
        int i;
        int i2;
        int i3;
        int i4;
        float f;
        int i5;
        int i6;
        int i7 = 0;
        while (true) {
            if (i7 >= this.f2259m) {
                z = false;
                break;
            } else if (this.f2255i[i7].f2232a.f2327i != C0567h.EnumC0568a.UNRESTRICTED && this.f2255i[i7].f2233b < BitmapDescriptorFactory.HUE_RED) {
                z = true;
                break;
            } else {
                i7++;
            }
        }
        if (z) {
            boolean z2 = false;
            i = 0;
            while (!z2) {
                C0560e c0560e = f2248o;
                if (c0560e != null) {
                    c0560e.f2286k++;
                }
                int i8 = i + 1;
                float f2 = Float.MAX_VALUE;
                int i9 = 0;
                int i10 = -1;
                int i11 = -1;
                int i12 = 0;
                while (true) {
                    int i13 = i12;
                    if (i9 >= this.f2259m) {
                        break;
                    }
                    C0554b c0554b = this.f2255i[i9];
                    float f3 = f2;
                    int i14 = i10;
                    int i15 = i11;
                    int i16 = i13;
                    if (c0554b.f2232a.f2327i != C0567h.EnumC0568a.UNRESTRICTED) {
                        f3 = f2;
                        i14 = i10;
                        i15 = i11;
                        i16 = i13;
                        if (!c0554b.f2237f) {
                            f3 = f2;
                            i14 = i10;
                            i15 = i11;
                            i16 = i13;
                            if (c0554b.f2233b < BitmapDescriptorFactory.HUE_RED) {
                                if (f2246e) {
                                    int mo45093c = c0554b.f2236e.mo45093c();
                                    int i17 = 0;
                                    while (true) {
                                        f3 = f2;
                                        i14 = i10;
                                        i15 = i11;
                                        i16 = i13;
                                        if (i17 < mo45093c) {
                                            C0567h mo45104a = c0554b.f2236e.mo45104a(i17);
                                            float mo45094b = c0554b.f2236e.mo45094b(mo45104a);
                                            float f4 = f2;
                                            int i18 = i10;
                                            int i19 = i11;
                                            int i20 = i13;
                                            if (mo45094b > BitmapDescriptorFactory.HUE_RED) {
                                                int i21 = i10;
                                                int i22 = 0;
                                                while (true) {
                                                    f4 = f2;
                                                    i18 = i21;
                                                    i19 = i11;
                                                    i20 = i13;
                                                    if (i22 < 9) {
                                                        float f5 = mo45104a.f2325g[i22] / mo45094b;
                                                        if (f5 >= f2 || i22 != i13) {
                                                            i6 = i13;
                                                            if (i22 <= i13) {
                                                                i22++;
                                                                i13 = i6;
                                                            }
                                                        }
                                                        i11 = mo45104a.f2320b;
                                                        i6 = i22;
                                                        i21 = i9;
                                                        f2 = f5;
                                                        i22++;
                                                        i13 = i6;
                                                    }
                                                }
                                            }
                                            i17++;
                                            f2 = f4;
                                            i10 = i18;
                                            i11 = i19;
                                            i13 = i20;
                                        }
                                    }
                                } else {
                                    int i23 = 1;
                                    while (true) {
                                        f3 = f2;
                                        i14 = i10;
                                        i15 = i11;
                                        i16 = i13;
                                        if (i23 < this.f2258l) {
                                            C0567h c0567h = this.f2260n.f2241d[i23];
                                            float mo45094b2 = c0554b.f2236e.mo45094b(c0567h);
                                            if (mo45094b2 > BitmapDescriptorFactory.HUE_RED) {
                                                int i24 = i10;
                                                int i25 = 0;
                                                while (true) {
                                                    f = f2;
                                                    i2 = i24;
                                                    i4 = i11;
                                                    i3 = i13;
                                                    if (i25 < 9) {
                                                        float f6 = c0567h.f2325g[i25] / mo45094b2;
                                                        if (f6 >= f2 || i25 != i13) {
                                                            i5 = i13;
                                                            if (i25 <= i13) {
                                                                i25++;
                                                                i13 = i5;
                                                            }
                                                        }
                                                        i11 = i23;
                                                        i5 = i25;
                                                        i24 = i9;
                                                        f2 = f6;
                                                        i25++;
                                                        i13 = i5;
                                                    }
                                                }
                                            } else {
                                                i3 = i13;
                                                i4 = i11;
                                                i2 = i10;
                                                f = f2;
                                            }
                                            i23++;
                                            f2 = f;
                                            i10 = i2;
                                            i11 = i4;
                                            i13 = i3;
                                        }
                                    }
                                }
                            }
                        }
                    }
                    i9++;
                    f2 = f3;
                    i10 = i14;
                    i11 = i15;
                    i12 = i16;
                }
                if (i10 != -1) {
                    C0554b c0554b2 = this.f2255i[i10];
                    c0554b2.f2232a.f2321c = -1;
                    C0560e c0560e2 = f2248o;
                    if (c0560e2 != null) {
                        c0560e2.f2285j++;
                    }
                    c0554b2.m45150c(this.f2260n.f2241d[i11]);
                    c0554b2.f2232a.f2321c = i10;
                    c0554b2.f2232a.m45109a(this, c0554b2);
                } else {
                    z2 = true;
                }
                i = i8;
                if (i8 > this.f2258l / 2) {
                    z2 = true;
                    i = i8;
                }
            }
        } else {
            i = 0;
        }
        return i;
    }

    /* renamed from: i */
    private void m45125i() {
        for (int i = 0; i < this.f2259m; i++) {
            C0554b c0554b = this.f2255i[i];
            c0554b.f2232a.f2323e = c0554b.f2233b;
        }
    }

    /* renamed from: a */
    public final C0567h m45148a(int i, String str) {
        C0560e c0560e = f2248o;
        if (c0560e != null) {
            c0560e.f2287l++;
        }
        if (this.f2258l + 1 >= this.f2264v) {
            m45128f();
        }
        C0567h m45143a = m45143a(C0567h.EnumC0568a.ERROR, str);
        int i2 = this.f2254h + 1;
        this.f2254h = i2;
        this.f2258l++;
        m45143a.f2320b = i2;
        m45143a.f2322d = i;
        this.f2260n.f2241d[this.f2254h] = m45143a;
        this.f2262t.mo45115d(m45143a);
        return m45143a;
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x005a, code lost:
        if (r4.f2260n.f2241d[r5.f2320b] == null) goto L19;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final androidx.constraintlayout.p026a.C0567h m45138a(java.lang.Object r5) {
        /*
            r4 = this;
            r0 = 0
            r6 = r0
            r0 = r5
            if (r0 != 0) goto L8
            r0 = 0
            return r0
        L8:
            r0 = r4
            int r0 = r0.f2258l
            r1 = 1
            int r0 = r0 + r1
            r1 = r4
            int r1 = r1.f2264v
            if (r0 < r1) goto L19
            r0 = r4
            r0.m45128f()
        L19:
            r0 = r5
            boolean r0 = r0 instanceof androidx.constraintlayout.p026a.p027a.C0538d
            if (r0 == 0) goto L9d
            r0 = r5
            androidx.constraintlayout.a.a.d r0 = (androidx.constraintlayout.p026a.p027a.C0538d) r0
            r7 = r0
            r0 = r7
            androidx.constraintlayout.a.h r0 = r0.f2039i
            r6 = r0
            r0 = r6
            r5 = r0
            r0 = r6
            if (r0 != 0) goto L39
            r0 = r7
            r0.m45302d()
            r0 = r7
            androidx.constraintlayout.a.h r0 = r0.f2039i
            r5 = r0
        L39:
            r0 = r5
            int r0 = r0.f2320b
            r1 = -1
            if (r0 == r1) goto L5d
            r0 = r5
            int r0 = r0.f2320b
            r1 = r4
            int r1 = r1.f2254h
            if (r0 > r1) goto L5d
            r0 = r5
            r6 = r0
            r0 = r4
            androidx.constraintlayout.a.c r0 = r0.f2260n
            androidx.constraintlayout.a.h[] r0 = r0.f2241d
            r1 = r5
            int r1 = r1.f2320b
            r0 = r0[r1]
            if (r0 != 0) goto L9d
        L5d:
            r0 = r5
            int r0 = r0.f2320b
            r1 = -1
            if (r0 == r1) goto L69
            r0 = r5
            r0.m45108b()
        L69:
            r0 = r4
            int r0 = r0.f2254h
            r1 = 1
            int r0 = r0 + r1
            r8 = r0
            r0 = r4
            r1 = r8
            r0.f2254h = r1
            r0 = r4
            r1 = r4
            int r1 = r1.f2258l
            r2 = 1
            int r1 = r1 + r2
            r0.f2258l = r1
            r0 = r5
            r1 = r8
            r0.f2320b = r1
            r0 = r5
            androidx.constraintlayout.a.h$a r1 = androidx.constraintlayout.p026a.C0567h.EnumC0568a.UNRESTRICTED
            r0.f2327i = r1
            r0 = r4
            androidx.constraintlayout.a.c r0 = r0.f2260n
            androidx.constraintlayout.a.h[] r0 = r0.f2241d
            r1 = r4
            int r1 = r1.f2254h
            r2 = r5
            r0[r1] = r2
            r0 = r5
            r6 = r0
        L9d:
            r0 = r6
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.p026a.C0557d.m45138a(java.lang.Object):androidx.constraintlayout.a.h");
    }

    /* JADX WARN: Removed duplicated region for block: B:145:0x04a2  */
    /* JADX WARN: Removed duplicated region for block: B:153:0x04cb A[RETURN] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m45147a(androidx.constraintlayout.p026a.C0554b r7) {
        /*
            Method dump skipped, instructions count: 1243
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.p026a.C0557d.m45147a(androidx.constraintlayout.a.b):void");
    }

    /* renamed from: a */
    public final void m45142a(C0567h c0567h, int i) {
        if (f2243b && c0567h.f2321c == -1) {
            float f = i;
            c0567h.m45110a(this, f);
            for (int i2 = 0; i2 < this.f2254h + 1; i2++) {
                C0567h c0567h2 = this.f2260n.f2241d[i2];
                if (c0567h2 != null && c0567h2.f2331m && c0567h2.f2332n == c0567h.f2320b) {
                    c0567h2.m45110a(this, c0567h2.f2333o + f);
                }
            }
            return;
        }
        int i3 = c0567h.f2321c;
        if (c0567h.f2321c == -1) {
            C0554b m45132c = m45132c();
            m45132c.f2232a = c0567h;
            float f2 = i;
            c0567h.f2323e = f2;
            m45132c.f2233b = f2;
            m45132c.f2237f = true;
            m45147a(m45132c);
            return;
        }
        C0554b c0554b = this.f2255i[i3];
        if (c0554b.f2237f) {
            c0554b.f2233b = i;
        } else if (c0554b.f2236e.mo45093c() == 0) {
            c0554b.f2237f = true;
            c0554b.f2233b = i;
        } else {
            C0554b m45132c2 = m45132c();
            if (i < 0) {
                m45132c2.f2233b = i * (-1);
                m45132c2.f2236e.mo45100a(c0567h, 1.0f);
            } else {
                m45132c2.f2233b = i;
                m45132c2.f2236e.mo45100a(c0567h, -1.0f);
            }
            m45147a(m45132c2);
        }
    }

    /* renamed from: a */
    public final void m45141a(C0567h c0567h, C0567h c0567h2, int i, float f, C0567h c0567h3, C0567h c0567h4, int i2, int i3) {
        C0554b m45132c = m45132c();
        if (c0567h2 == c0567h3) {
            m45132c.f2236e.mo45100a(c0567h, 1.0f);
            m45132c.f2236e.mo45100a(c0567h4, 1.0f);
            m45132c.f2236e.mo45100a(c0567h2, -2.0f);
        } else if (f == 0.5f) {
            m45132c.f2236e.mo45100a(c0567h, 1.0f);
            m45132c.f2236e.mo45100a(c0567h2, -1.0f);
            m45132c.f2236e.mo45100a(c0567h3, -1.0f);
            m45132c.f2236e.mo45100a(c0567h4, 1.0f);
            if (i > 0 || i2 > 0) {
                m45132c.f2233b = (-i) + i2;
            }
        } else if (f <= BitmapDescriptorFactory.HUE_RED) {
            m45132c.f2236e.mo45100a(c0567h, -1.0f);
            m45132c.f2236e.mo45100a(c0567h2, 1.0f);
            m45132c.f2233b = i;
        } else if (f >= 1.0f) {
            m45132c.f2236e.mo45100a(c0567h4, -1.0f);
            m45132c.f2236e.mo45100a(c0567h3, 1.0f);
            m45132c.f2233b = -i2;
        } else {
            C0554b.AbstractC0555a abstractC0555a = m45132c.f2236e;
            float f2 = 1.0f - f;
            abstractC0555a.mo45100a(c0567h, f2 * 1.0f);
            m45132c.f2236e.mo45100a(c0567h2, f2 * (-1.0f));
            m45132c.f2236e.mo45100a(c0567h3, (-1.0f) * f);
            m45132c.f2236e.mo45100a(c0567h4, 1.0f * f);
            if (i > 0 || i2 > 0) {
                m45132c.f2233b = ((-i) * f2) + (i2 * f);
            }
        }
        if (i3 != 8) {
            m45132c.m45159a(this, i3);
        }
        m45147a(m45132c);
    }

    /* renamed from: a */
    public final void m45140a(C0567h c0567h, C0567h c0567h2, int i, int i2) {
        C0554b m45132c = m45132c();
        C0567h m45130d = m45130d();
        m45130d.f2322d = 0;
        m45132c.m45156a(c0567h, c0567h2, m45130d, i);
        if (i2 != 8) {
            m45146a(m45132c, (int) (m45132c.f2236e.mo45094b(m45130d) * (-1.0f)), i2);
        }
        m45147a(m45132c);
    }

    /* renamed from: a */
    public final void m45139a(C0567h c0567h, C0567h c0567h2, C0567h c0567h3, C0567h c0567h4, float f) {
        C0554b m45132c = m45132c();
        m45132c.m45155a(c0567h, c0567h2, c0567h3, c0567h4, f);
        m45147a(m45132c);
    }

    /* renamed from: b */
    public final void m45137b() {
        for (int i = 0; i < this.f2260n.f2241d.length; i++) {
            C0567h c0567h = this.f2260n.f2241d[i];
            if (c0567h != null) {
                c0567h.m45108b();
            }
        }
        this.f2260n.f2240c.mo45120a(this.f2267y, this.f2268z);
        this.f2268z = 0;
        Arrays.fill(this.f2260n.f2241d, (Object) null);
        HashMap<String, C0567h> hashMap = this.f2261s;
        if (hashMap != null) {
            hashMap.clear();
        }
        this.f2254h = 0;
        this.f2262t.mo45116c();
        this.f2258l = 1;
        for (int i2 = 0; i2 < this.f2259m; i2++) {
            C0554b[] c0554bArr = this.f2255i;
            if (c0554bArr[i2] != null) {
                c0554bArr[i2].f2234c = false;
            }
        }
        m45127g();
        this.f2259m = 0;
        if (f2247f) {
            this.f2252A = new C0559b(this.f2260n);
        } else {
            this.f2252A = new C0554b(this.f2260n);
        }
    }

    /* renamed from: b */
    public final void m45134b(C0567h c0567h, C0567h c0567h2, int i, int i2) {
        C0554b m45132c = m45132c();
        C0567h m45130d = m45130d();
        m45130d.f2322d = 0;
        m45132c.m45152b(c0567h, c0567h2, m45130d, i);
        if (i2 != 8) {
            m45146a(m45132c, (int) (m45132c.f2236e.mo45094b(m45130d) * (-1.0f)), i2);
        }
        m45147a(m45132c);
    }

    /* renamed from: c */
    public final C0554b m45132c() {
        C0559b c0559b;
        if (f2247f) {
            c0559b = this.f2260n.f2238a.mo45122a();
            if (c0559b == null) {
                c0559b = new C0559b(this.f2260n);
                f2250q++;
            } else {
                c0559b.m45160a();
            }
        } else {
            c0559b = this.f2260n.f2239b.mo45122a();
            if (c0559b == null) {
                c0559b = new C0554b(this.f2260n);
                f2249p++;
            } else {
                c0559b.m45160a();
            }
        }
        C0567h.m45112a();
        return c0559b;
    }

    /* renamed from: c */
    public final C0554b m45131c(C0567h c0567h, C0567h c0567h2, int i, int i2) {
        if (f2243b && i2 == 8 && c0567h2.f2324f && c0567h.f2321c == -1) {
            c0567h.m45110a(this, c0567h2.f2323e + i);
            return null;
        }
        C0554b m45132c = m45132c();
        boolean z = false;
        if (i != 0) {
            z = false;
            int i3 = i;
            if (i < 0) {
                i3 = i * (-1);
                z = true;
            }
            m45132c.f2233b = i3;
        }
        if (!z) {
            m45132c.f2236e.mo45100a(c0567h, -1.0f);
            m45132c.f2236e.mo45100a(c0567h2, 1.0f);
        } else {
            m45132c.f2236e.mo45100a(c0567h, 1.0f);
            m45132c.f2236e.mo45100a(c0567h2, -1.0f);
        }
        if (i2 != 8) {
            m45132c.m45159a(this, i2);
        }
        m45147a(m45132c);
        return m45132c;
    }

    /* renamed from: d */
    public C0567h m45130d() {
        C0560e c0560e = f2248o;
        if (c0560e != null) {
            c0560e.f2288m++;
        }
        if (this.f2258l + 1 >= this.f2264v) {
            m45128f();
        }
        C0567h m45143a = m45143a(C0567h.EnumC0568a.SLACK, (String) null);
        int i = this.f2254h + 1;
        this.f2254h = i;
        this.f2258l++;
        m45143a.f2320b = i;
        this.f2260n.f2241d[this.f2254h] = m45143a;
        return m45143a;
    }

    /* renamed from: e */
    public final void m45129e() throws Exception {
        boolean z;
        C0560e c0560e = f2248o;
        if (c0560e != null) {
            c0560e.f2280e++;
        }
        if (this.f2262t.mo45117b()) {
            m45125i();
            return;
        }
        if (this.f2256j || this.f2257k) {
            C0560e c0560e2 = f2248o;
            if (c0560e2 != null) {
                c0560e2.f2292q++;
            }
            int i = 0;
            while (true) {
                if (i >= this.f2259m) {
                    z = true;
                    break;
                } else if (!this.f2255i[i].f2237f) {
                    z = false;
                    break;
                } else {
                    i++;
                }
            }
            if (z) {
                C0560e c0560e3 = f2248o;
                if (c0560e3 != null) {
                    c0560e3.f2291p++;
                }
                m45125i();
                return;
            }
        }
        m45145a(this.f2262t);
    }
}
