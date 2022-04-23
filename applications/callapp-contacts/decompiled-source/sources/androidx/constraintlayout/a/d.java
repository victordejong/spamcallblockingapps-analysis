package androidx.constraintlayout.a;

import androidx.constraintlayout.a.b;
import androidx.constraintlayout.a.h;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.Arrays;
import java.util.HashMap;
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/a/d.class */
public final class d {

    /* renamed from: a  reason: collision with root package name */
    public static boolean f1402a = false;

    /* renamed from: b  reason: collision with root package name */
    public static boolean f1403b = true;

    /* renamed from: c  reason: collision with root package name */
    public static boolean f1404c = true;

    /* renamed from: d  reason: collision with root package name */
    public static boolean f1405d = true;
    public static boolean e = true;
    public static boolean f = false;
    public static e o;
    public static long p = 0;
    public static long q = 0;
    private static int r = 1000;
    private a A;
    androidx.constraintlayout.a.b[] i;
    public final c n;
    private a t;
    public boolean g = false;
    int h = 0;
    private HashMap<String, h> s = null;
    private int u = 32;
    private int v = 32;
    public boolean j = false;
    public boolean k = false;
    private boolean[] w = new boolean[32];
    int l = 1;
    int m = 0;
    private int x = 32;
    private h[] y = new h[r];
    private int z = 0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/a/d$a.class */
    public interface a {
        h a(boolean[] zArr);

        void a(a aVar);

        boolean b();

        void c();

        h d();

        void d(h hVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/a/d$b.class */
    public final class b extends androidx.constraintlayout.a.b {
        public b(c cVar) {
            this.e = new i(this, cVar);
        }
    }

    public d() {
        this.i = null;
        this.i = new androidx.constraintlayout.a.b[32];
        g();
        c cVar = new c();
        this.n = cVar;
        this.t = new g(cVar);
        if (f) {
            this.A = new b(cVar);
        } else {
            this.A = new androidx.constraintlayout.a.b(cVar);
        }
    }

    public static androidx.constraintlayout.a.b a(d dVar, h hVar, h hVar2, float f2) {
        androidx.constraintlayout.a.b c2 = dVar.c();
        c2.e.a(hVar, -1.0f);
        c2.e.a(hVar2, f2);
        return c2;
    }

    public static e a() {
        return o;
    }

    private h a(h.a aVar, String str) {
        h hVar;
        h a2 = this.n.f1400c.a();
        if (a2 == null) {
            h hVar2 = new h(aVar, str);
            hVar2.i = aVar;
            hVar = hVar2;
        } else {
            a2.b();
            a2.i = aVar;
            hVar = a2;
        }
        int i = this.z;
        int i2 = r;
        if (i >= i2) {
            int i3 = i2 * 2;
            r = i3;
            this.y = (h[]) Arrays.copyOf(this.y, i3);
        }
        h[] hVarArr = this.y;
        int i4 = this.z;
        this.z = i4 + 1;
        hVarArr[i4] = hVar;
        return hVar;
    }

    private void a(androidx.constraintlayout.a.b bVar, int i, int i2) {
        bVar.e.a(a(i2, (String) null), i);
    }

    private void a(a aVar) throws Exception {
        e eVar = o;
        if (eVar != null) {
            eVar.t++;
            e eVar2 = o;
            eVar2.u = Math.max(eVar2.u, this.l);
            e eVar3 = o;
            eVar3.v = Math.max(eVar3.v, this.m);
        }
        h();
        b(aVar);
        i();
    }

    private final int b(a aVar) {
        e eVar = o;
        if (eVar != null) {
            eVar.h++;
        }
        for (int i = 0; i < this.l; i++) {
            this.w[i] = false;
        }
        boolean z = false;
        int i2 = 0;
        while (!z) {
            e eVar2 = o;
            if (eVar2 != null) {
                eVar2.i++;
            }
            int i3 = i2 + 1;
            if (i3 >= this.l * 2) {
                return i3;
            }
            if (aVar.d() != null) {
                this.w[aVar.d().f1417b] = true;
            }
            h a2 = aVar.a(this.w);
            if (a2 != null) {
                if (this.w[a2.f1417b]) {
                    return i3;
                }
                this.w[a2.f1417b] = true;
            }
            if (a2 != null) {
                float f2 = Float.MAX_VALUE;
                int i4 = -1;
                for (int i5 = 0; i5 < this.m; i5++) {
                    androidx.constraintlayout.a.b bVar = this.i[i5];
                    f2 = f2;
                    i4 = i4;
                    if (bVar.f1394a.i != h.a.UNRESTRICTED) {
                        f2 = f2;
                        i4 = i4;
                        if (!bVar.f) {
                            f2 = f2;
                            i4 = i4;
                            if (bVar.a(a2)) {
                                float b2 = bVar.e.b(a2);
                                f2 = f2;
                                i4 = i4;
                                if (b2 < BitmapDescriptorFactory.HUE_RED) {
                                    float f3 = (-bVar.f1395b) / b2;
                                    f2 = f2;
                                    i4 = i4;
                                    if (f3 < f2) {
                                        i4 = i5;
                                        f2 = f3;
                                    }
                                }
                            }
                        }
                    }
                }
                i2 = i3;
                if (i4 >= 0) {
                    androidx.constraintlayout.a.b bVar2 = this.i[i4];
                    bVar2.f1394a.f1418c = -1;
                    e eVar3 = o;
                    if (eVar3 != null) {
                        eVar3.j++;
                    }
                    bVar2.c(a2);
                    bVar2.f1394a.f1418c = i4;
                    bVar2.f1394a.a(this, bVar2);
                    i2 = i3;
                }
            } else {
                z = true;
                i2 = i3;
            }
        }
        return i2;
    }

    public static int b(Object obj) {
        h hVar = ((androidx.constraintlayout.a.a.d) obj).i;
        if (hVar != null) {
            return (int) (hVar.e + 0.5f);
        }
        return 0;
    }

    private final void b(androidx.constraintlayout.a.b bVar) {
        int i;
        if (!f1404c || !bVar.f) {
            this.i[this.m] = bVar;
            bVar.f1394a.f1418c = this.m;
            this.m++;
            bVar.f1394a.a(this, bVar);
        } else {
            bVar.f1394a.a(this, bVar.f1395b);
        }
        if (f1404c && this.g) {
            int i2 = 0;
            while (i2 < this.m) {
                if (this.i[i2] == null) {
                    System.out.println("WTF");
                }
                androidx.constraintlayout.a.b[] bVarArr = this.i;
                int i3 = i2;
                if (bVarArr[i2] != null) {
                    i3 = i2;
                    if (bVarArr[i2].f) {
                        androidx.constraintlayout.a.b bVar2 = this.i[i2];
                        bVar2.f1394a.a(this, bVar2.f1395b);
                        if (f) {
                            this.n.f1398a.a(bVar2);
                        } else {
                            this.n.f1399b.a(bVar2);
                        }
                        this.i[i2] = null;
                        int i4 = i2 + 1;
                        int i5 = i4;
                        while (true) {
                            i = this.m;
                            if (i4 >= i) {
                                break;
                            }
                            androidx.constraintlayout.a.b[] bVarArr2 = this.i;
                            int i6 = i4 - 1;
                            bVarArr2[i6] = bVarArr2[i4];
                            if (bVarArr2[i6].f1394a.f1418c == i4) {
                                this.i[i6].f1394a.f1418c = i6;
                            }
                            i5 = i4;
                            i4++;
                        }
                        if (i5 < i) {
                            this.i[i5] = null;
                        }
                        this.m = i - 1;
                        i3 = i2 - 1;
                    }
                }
                i2 = i3 + 1;
            }
            this.g = false;
        }
    }

    private void f() {
        int i = this.u * 2;
        this.u = i;
        this.i = (androidx.constraintlayout.a.b[]) Arrays.copyOf(this.i, i);
        c cVar = this.n;
        cVar.f1401d = (h[]) Arrays.copyOf(cVar.f1401d, this.u);
        int i2 = this.u;
        this.w = new boolean[i2];
        this.v = i2;
        this.x = i2;
        e eVar = o;
        if (eVar != null) {
            eVar.f1409d++;
            e eVar2 = o;
            eVar2.o = Math.max(eVar2.o, this.u);
            e eVar3 = o;
            eVar3.y = eVar3.o;
        }
    }

    private void g() {
        if (f) {
            for (int i = 0; i < this.m; i++) {
                androidx.constraintlayout.a.b bVar = this.i[i];
                if (bVar != null) {
                    this.n.f1398a.a(bVar);
                }
                this.i[i] = null;
            }
            return;
        }
        for (int i2 = 0; i2 < this.m; i2++) {
            androidx.constraintlayout.a.b bVar2 = this.i[i2];
            if (bVar2 != null) {
                this.n.f1399b.a(bVar2);
            }
            this.i[i2] = null;
        }
    }

    private int h() throws Exception {
        boolean z;
        int i;
        int i2 = 0;
        while (true) {
            if (i2 >= this.m) {
                z = false;
                break;
            }
            if (this.i[i2].f1394a.i != h.a.UNRESTRICTED && this.i[i2].f1395b < BitmapDescriptorFactory.HUE_RED) {
                z = true;
                break;
            }
            i2++;
        }
        if (z) {
            boolean z2 = false;
            i = 0;
            while (!z2) {
                e eVar = o;
                if (eVar != null) {
                    eVar.k++;
                }
                int i3 = i + 1;
                float f2 = Float.MAX_VALUE;
                int i4 = -1;
                int i5 = -1;
                int i6 = 0;
                for (int i7 = 0; i7 < this.m; i7++) {
                    androidx.constraintlayout.a.b bVar = this.i[i7];
                    f2 = f2;
                    i4 = i4;
                    i5 = i5;
                    i6 = i6;
                    if (bVar.f1394a.i != h.a.UNRESTRICTED) {
                        f2 = f2;
                        i4 = i4;
                        i5 = i5;
                        i6 = i6;
                        if (!bVar.f) {
                            f2 = f2;
                            i4 = i4;
                            i5 = i5;
                            i6 = i6;
                            if (bVar.f1395b < BitmapDescriptorFactory.HUE_RED) {
                                if (e) {
                                    int c2 = bVar.e.c();
                                    int i8 = 0;
                                    while (true) {
                                        f2 = f2;
                                        i4 = i4;
                                        i5 = i5;
                                        i6 = i6;
                                        if (i8 < c2) {
                                            h a2 = bVar.e.a(i8);
                                            float b2 = bVar.e.b(a2);
                                            f2 = f2;
                                            i4 = i4;
                                            i5 = i5;
                                            i6 = i6;
                                            if (b2 > BitmapDescriptorFactory.HUE_RED) {
                                                int i9 = 0;
                                                int i10 = i4;
                                                while (true) {
                                                    f2 = f2;
                                                    i4 = i10;
                                                    i5 = i5;
                                                    i6 = i6;
                                                    if (i9 < 9) {
                                                        float f3 = a2.g[i9] / b2;
                                                        if (f3 >= f2 || i9 != i6) {
                                                            i6 = i6;
                                                            if (i9 <= i6) {
                                                                i9++;
                                                            }
                                                        }
                                                        i5 = a2.f1417b;
                                                        i6 = i9;
                                                        i10 = i7;
                                                        f2 = f3;
                                                        i9++;
                                                    }
                                                }
                                            }
                                            i8++;
                                        }
                                    }
                                } else {
                                    int i11 = 1;
                                    while (true) {
                                        f2 = f2;
                                        i4 = i4;
                                        i5 = i5;
                                        i6 = i6;
                                        if (i11 < this.l) {
                                            h hVar = this.n.f1401d[i11];
                                            float b3 = bVar.e.b(hVar);
                                            if (b3 > BitmapDescriptorFactory.HUE_RED) {
                                                int i12 = 0;
                                                int i13 = i4;
                                                while (true) {
                                                    f2 = f2;
                                                    i4 = i13;
                                                    i5 = i5;
                                                    i6 = i6;
                                                    if (i12 < 9) {
                                                        float f4 = hVar.g[i12] / b3;
                                                        if (f4 >= f2 || i12 != i6) {
                                                            i6 = i6;
                                                            if (i12 <= i6) {
                                                                i12++;
                                                            }
                                                        }
                                                        i5 = i11;
                                                        i6 = i12;
                                                        i13 = i7;
                                                        f2 = f4;
                                                        i12++;
                                                    }
                                                }
                                            } else {
                                                i6 = i6;
                                                i5 = i5;
                                                i4 = i4;
                                                f2 = f2;
                                            }
                                            i11++;
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
                if (i4 != -1) {
                    androidx.constraintlayout.a.b bVar2 = this.i[i4];
                    bVar2.f1394a.f1418c = -1;
                    e eVar2 = o;
                    if (eVar2 != null) {
                        eVar2.j++;
                    }
                    bVar2.c(this.n.f1401d[i5]);
                    bVar2.f1394a.f1418c = i4;
                    bVar2.f1394a.a(this, bVar2);
                } else {
                    z2 = true;
                }
                i = i3;
                if (i3 > this.l / 2) {
                    z2 = true;
                    i = i3;
                }
            }
        } else {
            i = 0;
        }
        return i;
    }

    private void i() {
        for (int i = 0; i < this.m; i++) {
            androidx.constraintlayout.a.b bVar = this.i[i];
            bVar.f1394a.e = bVar.f1395b;
        }
    }

    public final h a(int i, String str) {
        e eVar = o;
        if (eVar != null) {
            eVar.l++;
        }
        if (this.l + 1 >= this.v) {
            f();
        }
        h a2 = a(h.a.ERROR, str);
        int i2 = this.h + 1;
        this.h = i2;
        this.l++;
        a2.f1417b = i2;
        a2.f1419d = i;
        this.n.f1401d[this.h] = a2;
        this.t.d(a2);
        return a2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x005a, code lost:
        if (r4.n.f1401d[r5.f1417b] == null) goto L_0x005d;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final androidx.constraintlayout.a.h a(java.lang.Object r5) {
        /*
            r4 = this;
            r0 = 0
            r6 = r0
            r0 = r5
            if (r0 != 0) goto L_0x0008
            r0 = 0
            return r0
        L_0x0008:
            r0 = r4
            int r0 = r0.l
            r1 = 1
            int r0 = r0 + r1
            r1 = r4
            int r1 = r1.v
            if (r0 < r1) goto L_0x0019
            r0 = r4
            r0.f()
        L_0x0019:
            r0 = r5
            boolean r0 = r0 instanceof androidx.constraintlayout.a.a.d
            if (r0 == 0) goto L_0x009d
            r0 = r5
            androidx.constraintlayout.a.a.d r0 = (androidx.constraintlayout.a.a.d) r0
            r7 = r0
            r0 = r7
            androidx.constraintlayout.a.h r0 = r0.i
            r6 = r0
            r0 = r6
            r5 = r0
            r0 = r6
            if (r0 != 0) goto L_0x0039
            r0 = r7
            r0.d()
            r0 = r7
            androidx.constraintlayout.a.h r0 = r0.i
            r5 = r0
        L_0x0039:
            r0 = r5
            int r0 = r0.f1417b
            r1 = -1
            if (r0 == r1) goto L_0x005d
            r0 = r5
            int r0 = r0.f1417b
            r1 = r4
            int r1 = r1.h
            if (r0 > r1) goto L_0x005d
            r0 = r5
            r6 = r0
            r0 = r4
            androidx.constraintlayout.a.c r0 = r0.n
            androidx.constraintlayout.a.h[] r0 = r0.f1401d
            r1 = r5
            int r1 = r1.f1417b
            r0 = r0[r1]
            if (r0 != 0) goto L_0x009d
        L_0x005d:
            r0 = r5
            int r0 = r0.f1417b
            r1 = -1
            if (r0 == r1) goto L_0x0069
            r0 = r5
            r0.b()
        L_0x0069:
            r0 = r4
            int r0 = r0.h
            r1 = 1
            int r0 = r0 + r1
            r8 = r0
            r0 = r4
            r1 = r8
            r0.h = r1
            r0 = r4
            r1 = r4
            int r1 = r1.l
            r2 = 1
            int r1 = r1 + r2
            r0.l = r1
            r0 = r5
            r1 = r8
            r0.f1417b = r1
            r0 = r5
            androidx.constraintlayout.a.h$a r1 = androidx.constraintlayout.a.h.a.UNRESTRICTED
            r0.i = r1
            r0 = r4
            androidx.constraintlayout.a.c r0 = r0.n
            androidx.constraintlayout.a.h[] r0 = r0.f1401d
            r1 = r4
            int r1 = r1.h
            r2 = r5
            r0[r1] = r2
            r0 = r5
            r6 = r0
        L_0x009d:
            r0 = r6
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.a.d.a(java.lang.Object):androidx.constraintlayout.a.h");
    }

    /* JADX WARN: Removed duplicated region for block: B:145:0x04a2  */
    /* JADX WARN: Removed duplicated region for block: B:153:0x04cb A[RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void a(androidx.constraintlayout.a.b r7) {
        /*
            Method dump skipped, instructions count: 1243
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.a.d.a(androidx.constraintlayout.a.b):void");
    }

    public final void a(h hVar, int i) {
        if (!f1403b || hVar.f1418c != -1) {
            int i2 = hVar.f1418c;
            if (hVar.f1418c != -1) {
                androidx.constraintlayout.a.b bVar = this.i[i2];
                if (bVar.f) {
                    bVar.f1395b = i;
                } else if (bVar.e.c() == 0) {
                    bVar.f = true;
                    bVar.f1395b = i;
                } else {
                    androidx.constraintlayout.a.b c2 = c();
                    if (i < 0) {
                        c2.f1395b = i * (-1);
                        c2.e.a(hVar, 1.0f);
                    } else {
                        c2.f1395b = i;
                        c2.e.a(hVar, -1.0f);
                    }
                    a(c2);
                }
            } else {
                androidx.constraintlayout.a.b c3 = c();
                c3.f1394a = hVar;
                float f2 = i;
                hVar.e = f2;
                c3.f1395b = f2;
                c3.f = true;
                a(c3);
            }
        } else {
            float f3 = i;
            hVar.a(this, f3);
            for (int i3 = 0; i3 < this.h + 1; i3++) {
                h hVar2 = this.n.f1401d[i3];
                if (hVar2 != null && hVar2.m && hVar2.n == hVar.f1417b) {
                    hVar2.a(this, hVar2.o + f3);
                }
            }
        }
    }

    public final void a(h hVar, h hVar2, int i, float f2, h hVar3, h hVar4, int i2, int i3) {
        androidx.constraintlayout.a.b c2 = c();
        if (hVar2 == hVar3) {
            c2.e.a(hVar, 1.0f);
            c2.e.a(hVar4, 1.0f);
            c2.e.a(hVar2, -2.0f);
        } else if (f2 == 0.5f) {
            c2.e.a(hVar, 1.0f);
            c2.e.a(hVar2, -1.0f);
            c2.e.a(hVar3, -1.0f);
            c2.e.a(hVar4, 1.0f);
            if (i > 0 || i2 > 0) {
                c2.f1395b = (-i) + i2;
            }
        } else if (f2 <= BitmapDescriptorFactory.HUE_RED) {
            c2.e.a(hVar, -1.0f);
            c2.e.a(hVar2, 1.0f);
            c2.f1395b = i;
        } else if (f2 >= 1.0f) {
            c2.e.a(hVar4, -1.0f);
            c2.e.a(hVar3, 1.0f);
            c2.f1395b = -i2;
        } else {
            b.a aVar = c2.e;
            float f3 = 1.0f - f2;
            aVar.a(hVar, f3 * 1.0f);
            c2.e.a(hVar2, f3 * (-1.0f));
            c2.e.a(hVar3, (-1.0f) * f2);
            c2.e.a(hVar4, 1.0f * f2);
            if (i > 0 || i2 > 0) {
                c2.f1395b = ((-i) * f3) + (i2 * f2);
            }
        }
        if (i3 != 8) {
            c2.a(this, i3);
        }
        a(c2);
    }

    public final void a(h hVar, h hVar2, int i, int i2) {
        androidx.constraintlayout.a.b c2 = c();
        h d2 = d();
        d2.f1419d = 0;
        c2.a(hVar, hVar2, d2, i);
        if (i2 != 8) {
            a(c2, (int) (c2.e.b(d2) * (-1.0f)), i2);
        }
        a(c2);
    }

    public final void a(h hVar, h hVar2, h hVar3, h hVar4, float f2) {
        androidx.constraintlayout.a.b c2 = c();
        c2.a(hVar, hVar2, hVar3, hVar4, f2);
        a(c2);
    }

    public final void b() {
        for (int i = 0; i < this.n.f1401d.length; i++) {
            h hVar = this.n.f1401d[i];
            if (hVar != null) {
                hVar.b();
            }
        }
        this.n.f1400c.a(this.y, this.z);
        this.z = 0;
        Arrays.fill(this.n.f1401d, (Object) null);
        HashMap<String, h> hashMap = this.s;
        if (hashMap != null) {
            hashMap.clear();
        }
        this.h = 0;
        this.t.c();
        this.l = 1;
        for (int i2 = 0; i2 < this.m; i2++) {
            androidx.constraintlayout.a.b[] bVarArr = this.i;
            if (bVarArr[i2] != null) {
                bVarArr[i2].f1396c = false;
            }
        }
        g();
        this.m = 0;
        if (f) {
            this.A = new b(this.n);
        } else {
            this.A = new androidx.constraintlayout.a.b(this.n);
        }
    }

    public final void b(h hVar, h hVar2, int i, int i2) {
        androidx.constraintlayout.a.b c2 = c();
        h d2 = d();
        d2.f1419d = 0;
        c2.b(hVar, hVar2, d2, i);
        if (i2 != 8) {
            a(c2, (int) (c2.e.b(d2) * (-1.0f)), i2);
        }
        a(c2);
    }

    public final androidx.constraintlayout.a.b c() {
        androidx.constraintlayout.a.b bVar;
        if (f) {
            bVar = this.n.f1398a.a();
            if (bVar == null) {
                bVar = new b(this.n);
                q++;
            } else {
                bVar.a();
            }
        } else {
            bVar = this.n.f1399b.a();
            if (bVar == null) {
                bVar = new androidx.constraintlayout.a.b(this.n);
                p++;
            } else {
                bVar.a();
            }
        }
        h.a();
        return bVar;
    }

    public final androidx.constraintlayout.a.b c(h hVar, h hVar2, int i, int i2) {
        if (!f1403b || i2 != 8 || !hVar2.f || hVar.f1418c != -1) {
            androidx.constraintlayout.a.b c2 = c();
            boolean z = false;
            z = false;
            if (i != 0) {
                int i3 = i;
                if (i < 0) {
                    i3 = i * (-1);
                    z = true;
                }
                c2.f1395b = i3;
            }
            if (!z) {
                c2.e.a(hVar, -1.0f);
                c2.e.a(hVar2, 1.0f);
            } else {
                c2.e.a(hVar, 1.0f);
                c2.e.a(hVar2, -1.0f);
            }
            if (i2 != 8) {
                c2.a(this, i2);
            }
            a(c2);
            return c2;
        }
        hVar.a(this, hVar2.e + i);
        return null;
    }

    public h d() {
        e eVar = o;
        if (eVar != null) {
            eVar.m++;
        }
        if (this.l + 1 >= this.v) {
            f();
        }
        h a2 = a(h.a.SLACK, (String) null);
        int i = this.h + 1;
        this.h = i;
        this.l++;
        a2.f1417b = i;
        this.n.f1401d[this.h] = a2;
        return a2;
    }

    public final void e() throws Exception {
        e eVar = o;
        if (eVar != null) {
            eVar.e++;
        }
        if (this.t.b()) {
            i();
            return;
        }
        if (this.j || this.k) {
            e eVar2 = o;
            if (eVar2 != null) {
                eVar2.q++;
            }
            boolean z = false;
            int i = 0;
            while (true) {
                if (i >= this.m) {
                    z = true;
                    break;
                } else if (!this.i[i].f) {
                    break;
                } else {
                    i++;
                }
            }
            if (z) {
                e eVar3 = o;
                if (eVar3 != null) {
                    eVar3.p++;
                }
                i();
                return;
            }
        }
        a(this.t);
    }
}
