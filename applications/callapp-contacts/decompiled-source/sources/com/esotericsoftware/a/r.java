package com.esotericsoftware.a;

import io.objectbox.model.PropertyFlags;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/esotericsoftware/a/r.class */
public final class r extends q {
    private d A;
    private int B;
    private int[] C;
    private int[] D;
    private int E;
    private n F;
    private n G;
    private int H;
    private d I;
    private int J;
    private d K;
    private int L;
    private d M;
    private int N;
    private d O;
    private int P;
    private b Q;
    private b R;
    private c S;
    private boolean T;
    private int U;
    private final int V;
    private p W;
    private p X;
    private p Y;
    private int Z;
    private int aa;

    /* renamed from: c  reason: collision with root package name */
    final g f18930c;

    /* renamed from: d  reason: collision with root package name */
    String f18931d;
    int e;
    int f;
    int g;
    int[] h;
    private int i;
    private final int j;
    private final int k;
    private final String l;
    private d m;
    private b n;
    private b o;
    private b p;
    private b q;
    private b[] r;
    private b[] s;
    private int t;
    private c u;
    private d v = new d();
    private int w;
    private int x;
    private int y;
    private int z;

    /* JADX INFO: Access modifiers changed from: package-private */
    public r(g gVar, int i, String str, String str2, String str3, String[] strArr, boolean z, boolean z2) {
        super(327680);
        if (gVar.t == null) {
            gVar.t = this;
        } else {
            gVar.u.f18929b = this;
        }
        gVar.u = this;
        this.f18930c = gVar;
        this.i = i;
        if ("<init>".equals(str)) {
            this.i |= 524288;
        }
        this.j = gVar.a(str);
        this.k = gVar.a(str2);
        this.l = str2;
        this.f18931d = str3;
        int i2 = 0;
        if (strArr != null && strArr.length > 0) {
            int length = strArr.length;
            this.g = length;
            this.h = new int[length];
            for (int i3 = 0; i3 < this.g; i3++) {
                this.h[i3] = gVar.c(strArr[i3]);
            }
        }
        if (!z2) {
            i2 = z ? 1 : 2;
        }
        this.V = i2;
        if (z || z2) {
            int e = t.e(this.l) >> 2;
            int i4 = (i & 8) != 0 ? e - 1 : e;
            this.x = i4;
            this.y = i4;
            p pVar = new p();
            this.W = pVar;
            pVar.f18924a |= 8;
            a(this.W);
        }
    }

    private int a(int i, int i2, int i3) {
        int i4 = i2 + 3 + i3;
        int[] iArr = this.D;
        if (iArr == null || iArr.length < i4) {
            this.D = new int[i4];
        }
        int[] iArr2 = this.D;
        iArr2[0] = i;
        iArr2[1] = i2;
        iArr2[2] = i3;
        return 3;
    }

    private static int a(byte[] bArr, int i) {
        return (bArr[i + 1] & 255) | ((bArr[i] & 255) << 8);
    }

    private static int a(int[] iArr, int[] iArr2, int i, int i2) {
        int i3 = i2 - i;
        for (int i4 = 0; i4 < iArr.length; i4++) {
            if (i >= iArr[i4] || iArr[i4] > i2) {
                i3 = i3;
                if (i2 < iArr[i4]) {
                    i3 = i3;
                    if (iArr[i4] <= i) {
                        i3 -= iArr2[i4];
                    }
                }
            } else {
                i3 += iArr2[i4];
            }
        }
        return i3;
    }

    private void a(l lVar) {
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        int[] iArr = lVar.f18910c;
        int[] iArr2 = lVar.f18911d;
        int i6 = 0;
        int i7 = 0;
        int i8 = 0;
        int i9 = 0;
        while (i7 < iArr.length) {
            int i10 = iArr[i7];
            i9++;
            if (i10 != 16777216) {
                i8 += i9;
                i9 = 0;
            }
            if (i10 != 16777220) {
                i5 = i7;
                if (i10 != 16777219) {
                    i7 = i5 + 1;
                }
            }
            i5 = i7 + 1;
            i7 = i5 + 1;
        }
        int i11 = 0;
        int i12 = 0;
        while (i11 < iArr2.length) {
            int i13 = iArr2[i11];
            i12++;
            if (i13 != 16777220) {
                i4 = i11;
                if (i13 != 16777219) {
                    i11 = i4 + 1;
                }
            }
            i4 = i11 + 1;
            i11 = i4 + 1;
        }
        int a2 = a(lVar.f18909b.f18926c, i8, i12);
        int i14 = 0;
        int i15 = i8;
        while (true) {
            i = a2;
            if (i15 > 0) {
                int i16 = iArr[i14];
                this.D[a2] = i16;
                if (i16 != 16777220) {
                    i3 = i14;
                    if (i16 != 16777219) {
                        i14 = i3 + 1;
                        i15--;
                        a2++;
                    }
                }
                i3 = i14 + 1;
                i14 = i3 + 1;
                i15--;
                a2++;
            }
        }
        while (i6 < iArr2.length) {
            int i17 = iArr2[i6];
            this.D[i] = i17;
            if (i17 != 16777220) {
                i2 = i6;
                if (i17 != 16777219) {
                    i6 = i2 + 1;
                    i++;
                }
            }
            i2 = i6 + 1;
            i6 = i2 + 1;
            i++;
        }
        d();
    }

    private void a(p pVar, p[] pVarArr) {
        p pVar2 = this.Y;
        if (pVar2 != null) {
            if (this.V == 0) {
                pVar2.f.a(171, 0, (g) null, (o) null);
                c(0, pVar);
                pVar.a().f18924a |= 16;
                for (int i = 0; i < pVarArr.length; i++) {
                    c(0, pVarArr[i]);
                    pVarArr[i].a().f18924a |= 16;
                }
            } else {
                int i2 = this.Z - 1;
                this.Z = i2;
                c(i2, pVar);
                for (p pVar3 : pVarArr) {
                    c(this.Z, pVar3);
                }
            }
            c();
        }
    }

    private static void a(byte[] bArr, int i, int i2) {
        bArr[i] = (byte) (i2 >>> 8);
        bArr[i + 1] = (byte) i2;
    }

    private static void a(int[] iArr, int[] iArr2, p pVar) {
        if ((pVar.f18924a & 4) == 0) {
            pVar.f18926c = a(iArr, iArr2, 0, pVar.f18926c);
            pVar.f18924a |= 4;
        }
    }

    private static short b(byte[] bArr, int i) {
        return (short) ((bArr[i + 1] & 255) | ((bArr[i] & 255) << 8));
    }

    private void b(Object obj) {
        if (obj instanceof String) {
            this.A.a(7).b(this.f18930c.c((String) obj));
        } else if (obj instanceof Integer) {
            this.A.a(((Integer) obj).intValue());
        } else {
            this.A.a(8).b(((p) obj).f18926c);
        }
    }

    private static int c(byte[] bArr, int i) {
        return (bArr[i + 3] & 255) | ((bArr[i] & 255) << 24) | ((bArr[i + 1] & 255) << 16) | ((bArr[i + 2] & 255) << 8);
    }

    private void c() {
        if (this.V == 0) {
            p pVar = new p();
            pVar.f = new l();
            pVar.f.f18909b = pVar;
            pVar.a(this.v.f18888b, this.v.f18887a);
            this.X.g = pVar;
            this.X = pVar;
        } else {
            this.Y.e = this.aa;
        }
        this.Y = null;
    }

    private void c(int i, p pVar) {
        i iVar = new i();
        iVar.f18901a = i;
        iVar.f18902b = pVar;
        iVar.f18903c = this.Y.h;
        this.Y.h = iVar;
    }

    private void d() {
        if (this.C != null) {
            if (this.A == null) {
                this.A = new d();
            }
            e();
            this.z++;
        }
        this.C = this.D;
        this.D = null;
    }

    /* JADX WARN: Removed duplicated region for block: B:33:0x0117  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x014c  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x021e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void e() {
        /*
            Method dump skipped, instructions count: 553
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.esotericsoftware.a.r.e():void");
    }

    private void e(int i, int i2) {
        char c2;
        d a2;
        int c3;
        for (int i3 = i; i3 < i2; i3++) {
            int i4 = this.D[i3];
            int i5 = (-268435456) & i4;
            if (i5 == 0) {
                int i6 = i4 & 1048575;
                int i7 = i4 & 267386880;
                if (i7 == 24117248) {
                    a2 = this.A.a(7);
                    g gVar = this.f18930c;
                    c3 = gVar.c(gVar.n[i6].e);
                } else if (i7 != 25165824) {
                    this.A.a(i6);
                } else {
                    a2 = this.A.a(8);
                    c3 = this.f18930c.n[i6].f18922c;
                }
            } else {
                StringBuffer stringBuffer = new StringBuffer();
                for (int i8 = i5 >> 28; i8 > 0; i8--) {
                    stringBuffer.append('[');
                }
                if ((i4 & 267386880) == 24117248) {
                    stringBuffer.append('L');
                    stringBuffer.append(this.f18930c.n[i4 & 1048575].e);
                    c2 = ';';
                } else {
                    int i9 = i4 & 15;
                    if (i9 == 1) {
                        c2 = 'I';
                    } else if (i9 == 2) {
                        c2 = 'F';
                    } else if (i9 != 3) {
                        switch (i9) {
                            case 9:
                                c2 = 'Z';
                                break;
                            case 10:
                                c2 = 'B';
                                break;
                            case 11:
                                c2 = 'C';
                                break;
                            case 12:
                                c2 = 'S';
                                break;
                            default:
                                c2 = 'J';
                                break;
                        }
                    } else {
                        c2 = 'D';
                    }
                }
                stringBuffer.append(c2);
                a2 = this.A.a(7);
                c3 = this.f18930c.c(stringBuffer.toString());
            }
            a2.b(c3);
        }
    }

    @Override // com.esotericsoftware.a.q
    public final a a() {
        d dVar = new d();
        this.m = dVar;
        return new b(this.f18930c, false, dVar, null, 0);
    }

    @Override // com.esotericsoftware.a.q
    public final a a(int i, u uVar, String str, boolean z) {
        d dVar = new d();
        b.a(i, uVar, dVar);
        dVar.b(this.f18930c.a(str)).b(0);
        b bVar = new b(this.f18930c, true, dVar, dVar, dVar.f18888b - 2);
        if (z) {
            bVar.f18882c = this.p;
            this.p = bVar;
        } else {
            bVar.f18882c = this.q;
            this.q = bVar;
        }
        return bVar;
    }

    @Override // com.esotericsoftware.a.q
    public final a a(int i, u uVar, p[] pVarArr, p[] pVarArr2, int[] iArr, String str, boolean z) {
        d dVar = new d();
        dVar.a(i >>> 24).b(pVarArr.length);
        for (int i2 = 0; i2 < pVarArr.length; i2++) {
            dVar.b(pVarArr[i2].f18926c).b(pVarArr2[i2].f18926c - pVarArr[i2].f18926c).b(iArr[i2]);
        }
        if (uVar == null) {
            dVar.a(0);
        } else {
            dVar.a(uVar.f18940a, uVar.f18941b, (uVar.f18940a[uVar.f18941b] * 2) + 1);
        }
        dVar.b(this.f18930c.a(str)).b(0);
        b bVar = new b(this.f18930c, true, dVar, dVar, dVar.f18888b - 2);
        if (z) {
            bVar.f18882c = this.Q;
            this.Q = bVar;
        } else {
            bVar.f18882c = this.R;
            this.R = bVar;
        }
        return bVar;
    }

    @Override // com.esotericsoftware.a.q
    public final a a(int i, String str, boolean z) {
        d dVar = new d();
        if ("Ljava/lang/Synthetic;".equals(str)) {
            this.t = Math.max(this.t, i + 1);
            return new b(this.f18930c, false, dVar, null, 0);
        }
        dVar.b(this.f18930c.a(str)).b(0);
        b bVar = new b(this.f18930c, true, dVar, dVar, 2);
        if (z) {
            if (this.r == null) {
                this.r = new b[t.d(this.l).length];
            }
            bVar.f18882c = this.r[i];
            this.r[i] = bVar;
        } else {
            if (this.s == null) {
                this.s = new b[t.d(this.l).length];
            }
            bVar.f18882c = this.s[i];
            this.s[i] = bVar;
        }
        return bVar;
    }

    @Override // com.esotericsoftware.a.q
    public final a a(String str, boolean z) {
        d dVar = new d();
        dVar.b(this.f18930c.a(str)).b(0);
        b bVar = new b(this.f18930c, true, dVar, dVar, 2);
        if (z) {
            bVar.f18882c = this.n;
            this.n = bVar;
        } else {
            bVar.f18882c = this.o;
            this.o = bVar;
        }
        return bVar;
    }

    @Override // com.esotericsoftware.a.q
    public final void a(int i) {
        this.P = this.v.f18888b;
        this.v.a(i);
        p pVar = this.Y;
        if (pVar != null) {
            if (this.V == 0) {
                pVar.f.a(i, 0, (g) null, (o) null);
            } else {
                int i2 = this.Z + l.f18908a[i];
                if (i2 > this.aa) {
                    this.aa = i2;
                }
                this.Z = i2;
            }
            if ((i >= 172 && i <= 177) || i == 191) {
                c();
            }
        }
    }

    @Override // com.esotericsoftware.a.q
    public final void a(int i, int i2) {
        this.P = this.v.f18888b;
        p pVar = this.Y;
        if (pVar != null) {
            if (this.V == 0) {
                pVar.f.a(i, i2, (g) null, (o) null);
            } else if (i != 188) {
                int i3 = this.Z + 1;
                if (i3 > this.aa) {
                    this.aa = i3;
                }
                this.Z = i3;
            }
        }
        if (i == 17) {
            this.v.b(i, i2);
        } else {
            this.v.a(i, i2);
        }
    }

    @Override // com.esotericsoftware.a.q
    public final void a(int i, int i2, p pVar, p... pVarArr) {
        this.P = this.v.f18888b;
        int i3 = this.v.f18888b;
        this.v.a(170);
        d dVar = this.v;
        dVar.a((byte[]) null, 0, (4 - (dVar.f18888b % 4)) % 4);
        pVar.a(this.v, i3, true);
        this.v.c(i).c(i2);
        for (p pVar2 : pVarArr) {
            pVar2.a(this.v, i3, true);
        }
        a(pVar, pVarArr);
    }

    @Override // com.esotericsoftware.a.q
    public final void a(int i, int i2, Object[] objArr, int i3, Object[] objArr2) {
        int i4;
        d dVar;
        int i5;
        if (this.V != 0) {
            if (i == -1) {
                if (this.C == null) {
                    int a2 = a(0, this.l.length() + 1, 0);
                    int i6 = this.i;
                    int i7 = a2;
                    if ((i6 & 8) == 0) {
                        if ((i6 & 524288) == 0) {
                            int[] iArr = this.D;
                            i7 = a2 + 1;
                            g gVar = this.f18930c;
                            iArr[3] = gVar.d(gVar.o) | 24117248;
                        } else {
                            i7 = a2 + 1;
                            this.D[3] = 6;
                        }
                    }
                    int i8 = 1;
                    while (true) {
                        int i9 = i8 + 1;
                        char charAt = this.l.charAt(i8);
                        if (charAt == 'F') {
                            i7++;
                            this.D[i7] = 2;
                        } else if (charAt != 'L') {
                            if (!(charAt == 'S' || charAt == 'I')) {
                                if (charAt == 'J') {
                                    i7++;
                                    this.D[i7] = 4;
                                } else if (charAt != 'Z') {
                                    int i10 = i9;
                                    if (charAt != '[') {
                                        switch (charAt) {
                                            case 'B':
                                            case 'C':
                                                break;
                                            case 'D':
                                                i7++;
                                                this.D[i7] = 3;
                                                break;
                                            default:
                                                this.D[1] = i7 - 3;
                                                d();
                                                break;
                                        }
                                    } else {
                                        while (this.l.charAt(i10) == '[') {
                                            i10++;
                                        }
                                        int i11 = i10;
                                        if (this.l.charAt(i10) == 'L') {
                                            do {
                                                i10++;
                                                i11 = i10;
                                            } while (this.l.charAt(i10) != ';');
                                            int i12 = i11 + 1;
                                            this.D[i7] = this.f18930c.d(this.l.substring(i8, i12)) | 24117248;
                                            i8 = i12;
                                            i7++;
                                        } else {
                                            int i122 = i11 + 1;
                                            this.D[i7] = this.f18930c.d(this.l.substring(i8, i122)) | 24117248;
                                            i8 = i122;
                                            i7++;
                                        }
                                    }
                                }
                            }
                            i7++;
                            this.D[i7] = 1;
                        } else {
                            int i13 = i9;
                            while (this.l.charAt(i13) != ';') {
                                i13++;
                            }
                            this.D[i7] = this.f18930c.d(this.l.substring(i9, i13)) | 24117248;
                            i7++;
                            i8 = i13 + 1;
                        }
                        i8 = i9;
                    }
                }
                this.y = i2;
                int a3 = a(this.v.f18888b, i2, i3);
                int i14 = 0;
                while (true) {
                    i5 = a3;
                    if (i14 < i2) {
                        if (objArr[i14] instanceof String) {
                            a3++;
                            this.D[a3] = this.f18930c.d((String) objArr[i14]) | 24117248;
                        } else if (objArr[i14] instanceof Integer) {
                            a3++;
                            this.D[a3] = ((Integer) objArr[i14]).intValue();
                        } else {
                            this.D[a3] = this.f18930c.a("", ((p) objArr[i14]).f18926c) | 25165824;
                            a3++;
                        }
                        i14++;
                    }
                }
                for (int i15 = 0; i15 < i3; i15++) {
                    if (objArr2[i15] instanceof String) {
                        i5++;
                        this.D[i5] = this.f18930c.d((String) objArr2[i15]) | 24117248;
                    } else if (objArr2[i15] instanceof Integer) {
                        i5++;
                        this.D[i5] = ((Integer) objArr2[i15]).intValue();
                    } else {
                        i5++;
                        this.D[i5] = this.f18930c.a("", ((p) objArr2[i15]).f18926c) | 25165824;
                    }
                }
                d();
            } else {
                if (this.A == null) {
                    this.A = new d();
                    i4 = this.v.f18888b;
                } else {
                    int i16 = (this.v.f18888b - this.B) - 1;
                    i4 = i16;
                    if (i16 < 0) {
                        if (i != 3) {
                            throw new IllegalStateException();
                        }
                        return;
                    }
                }
                if (i == 0) {
                    this.y = i2;
                    this.A.a(255).b(i4).b(i2);
                    for (int i17 = 0; i17 < i2; i17++) {
                        b(objArr[i17]);
                    }
                    this.A.b(i3);
                    for (int i18 = 0; i18 < i3; i18++) {
                        b(objArr2[i18]);
                    }
                } else if (i != 1) {
                    int i19 = 251;
                    if (i == 2) {
                        this.y -= i2;
                        dVar = this.A;
                        i19 = 251 - i2;
                    } else if (i == 3) {
                        d dVar2 = this.A;
                        dVar = dVar2;
                        if (i4 < 64) {
                            dVar2.a(i4);
                        }
                    } else if (i == 4) {
                        d dVar3 = this.A;
                        if (i4 < 64) {
                            dVar3.a(i4 + 64);
                        } else {
                            dVar3.a(247).b(i4);
                        }
                        b(objArr2[0]);
                    }
                    dVar.a(i19).b(i4);
                } else {
                    this.y += i2;
                    this.A.a(i2 + 251).b(i4);
                    for (int i20 = 0; i20 < i2; i20++) {
                        b(objArr[i20]);
                    }
                }
                this.B = this.v.f18888b;
                this.z++;
            }
            this.w = Math.max(this.w, i3);
            this.x = Math.max(this.x, this.y);
        }
    }

    @Override // com.esotericsoftware.a.q
    public final void a(int i, p pVar) {
        this.P = this.v.f18888b;
        p pVar2 = this.Y;
        p pVar3 = null;
        if (pVar2 != null) {
            if (this.V == 0) {
                pVar2.f.a(i, 0, (g) null, (o) null);
                pVar.a().f18924a |= 16;
                c(0, pVar);
                pVar3 = null;
                if (i != 167) {
                    pVar3 = new p();
                }
            } else if (i == 168) {
                if ((pVar.f18924a & 512) == 0) {
                    pVar.f18924a |= 512;
                    this.U++;
                }
                this.Y.f18924a |= 128;
                c(this.Z + 1, pVar);
                pVar3 = new p();
            } else {
                int i2 = this.Z + l.f18908a[i];
                this.Z = i2;
                c(i2, pVar);
                pVar3 = null;
            }
        }
        if ((pVar.f18924a & 2) == 0 || pVar.f18926c - this.v.f18888b >= -32768) {
            this.v.a(i);
            d dVar = this.v;
            pVar.a(dVar, dVar.f18888b - 1, false);
        } else {
            if (i != 167) {
                if (i == 168) {
                    this.v.a(201);
                    d dVar2 = this.v;
                    pVar.a(dVar2, dVar2.f18888b - 1, true);
                } else {
                    if (pVar3 != null) {
                        pVar3.f18924a |= 16;
                    }
                    this.v.a(i <= 166 ? ((i + 1) ^ 1) - 1 : i ^ 1);
                    this.v.b(8);
                }
            }
            this.v.a(200);
            d dVar22 = this.v;
            pVar.a(dVar22, dVar22.f18888b - 1, true);
        }
        if (this.Y != null) {
            if (pVar3 != null) {
                a(pVar3);
            }
            if (i == 167) {
                c();
            }
        }
    }

    @Override // com.esotericsoftware.a.q
    public final void a(int i, String str) {
        this.P = this.v.f18888b;
        o b2 = this.f18930c.b(str);
        p pVar = this.Y;
        if (pVar != null) {
            if (this.V == 0) {
                pVar.f.a(i, this.v.f18888b, this.f18930c, b2);
            } else if (i == 187) {
                int i2 = this.Z + 1;
                if (i2 > this.aa) {
                    this.aa = i2;
                }
                this.Z = i2;
            }
        }
        this.v.b(i, b2.f18920a);
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0081, code lost:
        if (r0 == 'J') goto L_0x0105;
     */
    @Override // com.esotericsoftware.a.q
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void a(int r7, java.lang.String r8, java.lang.String r9, java.lang.String r10) {
        /*
            Method dump skipped, instructions count: 307
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.esotericsoftware.a.r.a(int, java.lang.String, java.lang.String, java.lang.String):void");
    }

    @Override // com.esotericsoftware.a.q
    public final void a(int i, String str, String str2, String str3, boolean z) {
        this.P = this.v.f18888b;
        o a2 = this.f18930c.a(str, str2, str3, z);
        int i2 = a2.f18922c;
        p pVar = this.Y;
        int i3 = i2;
        if (pVar != null) {
            if (this.V == 0) {
                pVar.f.a(i, 0, this.f18930c, a2);
                i3 = i2;
            } else {
                i3 = i2;
                if (i2 == 0) {
                    i3 = t.e(str3);
                    a2.f18922c = i3;
                }
                int i4 = i == 184 ? (this.Z - (i3 >> 2)) + (i3 & 3) + 1 : (this.Z - (i3 >> 2)) + (i3 & 3);
                if (i4 > this.aa) {
                    this.aa = i4;
                }
                this.Z = i4;
            }
        }
        if (i == 185) {
            int i5 = i3;
            if (i3 == 0) {
                i5 = t.e(str3);
                a2.f18922c = i5;
            }
            this.v.b(185, a2.f18920a).a(i5 >> 2, 0);
            return;
        }
        this.v.b(i, a2.f18920a);
    }

    @Override // com.esotericsoftware.a.q
    public final void a(c cVar) {
        cVar.f18886c = this.u;
        this.u = cVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x008b, code lost:
        if ((r5.i & 262144) != 0) goto L_0x008e;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void a(com.esotericsoftware.a.d r6) {
        /*
            Method dump skipped, instructions count: 1657
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.esotericsoftware.a.r.a(com.esotericsoftware.a.d):void");
    }

    @Override // com.esotericsoftware.a.q
    public final void a(p pVar) {
        this.T |= pVar.a(this.v.f18888b, this.v.f18887a);
        if ((pVar.f18924a & 1) == 0) {
            int i = this.V;
            if (i == 0) {
                if (this.Y != null) {
                    if (pVar.f18926c == this.Y.f18926c) {
                        this.Y.f18924a |= pVar.f18924a & 16;
                        pVar.f = this.Y.f;
                        return;
                    }
                    c(0, pVar);
                }
                this.Y = pVar;
                if (pVar.f == null) {
                    pVar.f = new l();
                    pVar.f.f18909b = pVar;
                }
                if (this.X != null) {
                    if (pVar.f18926c == this.X.f18926c) {
                        this.X.f18924a |= pVar.f18924a & 16;
                        pVar.f = this.X.f;
                        this.Y = this.X;
                        return;
                    }
                    this.X.g = pVar;
                }
                this.X = pVar;
            } else if (i == 1) {
                p pVar2 = this.Y;
                if (pVar2 != null) {
                    pVar2.e = this.aa;
                    c(this.Z, pVar);
                }
                this.Y = pVar;
                this.Z = 0;
                this.aa = 0;
                p pVar3 = this.X;
                if (pVar3 != null) {
                    pVar3.g = pVar;
                }
                this.X = pVar;
            }
        }
    }

    @Override // com.esotericsoftware.a.q
    public final void a(p pVar, p pVar2, p pVar3, String str) {
        this.E++;
        n nVar = new n();
        nVar.f18916a = pVar;
        nVar.f18917b = pVar2;
        nVar.f18918c = pVar3;
        nVar.f18919d = str;
        nVar.e = str != null ? this.f18930c.c(str) : 0;
        n nVar2 = this.G;
        if (nVar2 == null) {
            this.F = nVar;
        } else {
            nVar2.f = nVar;
        }
        this.G = nVar;
    }

    @Override // com.esotericsoftware.a.q
    public final void a(p pVar, int[] iArr, p[] pVarArr) {
        this.P = this.v.f18888b;
        int i = this.v.f18888b;
        this.v.a(171);
        d dVar = this.v;
        dVar.a((byte[]) null, 0, (4 - (dVar.f18888b % 4)) % 4);
        pVar.a(this.v, i, true);
        this.v.c(pVarArr.length);
        for (int i2 = 0; i2 < pVarArr.length; i2++) {
            this.v.c(iArr[i2]);
            pVarArr[i2].a(this.v, i, true);
        }
        a(pVar, pVarArr);
    }

    @Override // com.esotericsoftware.a.q
    public final void a(Object obj) {
        this.P = this.v.f18888b;
        o a2 = this.f18930c.a(obj);
        p pVar = this.Y;
        if (pVar != null) {
            if (this.V == 0) {
                pVar.f.a(18, 0, this.f18930c, a2);
            } else {
                int i = (a2.f18921b == 5 || a2.f18921b == 6) ? this.Z + 2 : this.Z + 1;
                if (i > this.aa) {
                    this.aa = i;
                }
                this.Z = i;
            }
        }
        int i2 = a2.f18920a;
        if (a2.f18921b == 5 || a2.f18921b == 6) {
            this.v.b(20, i2);
        } else if (i2 >= 256) {
            this.v.b(19, i2);
        } else {
            this.v.a(18, i2);
        }
    }

    @Override // com.esotericsoftware.a.q
    public final void a(String str, int i) {
        if (this.I == null) {
            this.I = new d();
        }
        this.H++;
        this.I.b(str == null ? 0 : this.f18930c.a(str)).b(i);
    }

    @Override // com.esotericsoftware.a.q
    public final void a(String str, String str2, m mVar, Object... objArr) {
        int i;
        this.P = this.v.f18888b;
        g gVar = this.f18930c;
        d dVar = gVar.q;
        d dVar2 = dVar;
        if (dVar == null) {
            dVar2 = new d();
            gVar.q = dVar2;
        }
        int i2 = dVar2.f18888b;
        int hashCode = mVar.hashCode();
        dVar2.b(gVar.a(mVar.f18912a, mVar.f18913b, mVar.f18914c, mVar.f18915d, mVar.e).f18920a);
        int length = objArr.length;
        dVar2.b(length);
        for (Object obj : objArr) {
            hashCode ^= obj.hashCode();
            dVar2.b(gVar.a(obj).f18920a);
        }
        byte[] bArr = dVar2.f18887a;
        int i3 = Integer.MAX_VALUE & hashCode;
        o[] oVarArr = gVar.h;
        o oVar = oVarArr[i3 % oVarArr.length];
        loop1: while (oVar != null) {
            if (oVar.f18921b == 33 && oVar.h == i3) {
                int i4 = oVar.f18922c;
                for (int i5 = 0; i5 < ((length + 2) << 1); i5++) {
                    if (bArr[i2 + i5] != bArr[i4 + i5]) {
                        break;
                    }
                }
                break loop1;
            }
            oVar = oVar.i;
        }
        if (oVar != null) {
            i = oVar.f18920a;
            dVar2.f18888b = i2;
        } else {
            i = gVar.p;
            gVar.p = i + 1;
            o oVar2 = new o(i);
            oVar2.a(i2, i3);
            gVar.b(oVar2);
        }
        gVar.l.a(str, str2, i);
        o a2 = gVar.a(gVar.l);
        o oVar3 = a2;
        if (a2 == null) {
            gVar.a(18, i, gVar.b(str, str2));
            int i6 = gVar.f;
            gVar.f = i6 + 1;
            oVar3 = new o(i6, gVar.l);
            gVar.b(oVar3);
        }
        int i7 = oVar3.f18922c;
        p pVar = this.Y;
        if (pVar != null) {
            if (this.V == 0) {
                pVar.f.a(186, 0, this.f18930c, oVar3);
            } else {
                int i8 = i7;
                if (i7 == 0) {
                    i8 = t.e(str2);
                    oVar3.f18922c = i8;
                }
                int i9 = (this.Z - (i8 >> 2)) + (i8 & 3) + 1;
                if (i9 > this.aa) {
                    this.aa = i9;
                }
                this.Z = i9;
            }
        }
        this.v.b(186, oVar3.f18920a);
        this.v.b(0);
    }

    @Override // com.esotericsoftware.a.q
    public final void a(String str, String str2, String str3, p pVar, p pVar2, int i) {
        int i2 = 1;
        if (str3 != null) {
            if (this.M == null) {
                this.M = new d();
            }
            this.L++;
            this.M.b(pVar.f18926c).b(pVar2.f18926c - pVar.f18926c).b(this.f18930c.a(str)).b(this.f18930c.a(str3)).b(i);
        }
        if (this.K == null) {
            this.K = new d();
        }
        this.J++;
        this.K.b(pVar.f18926c).b(pVar2.f18926c - pVar.f18926c).b(this.f18930c.a(str)).b(this.f18930c.a(str2)).b(i);
        if (this.V != 2) {
            char charAt = str2.charAt(0);
            if (charAt == 'J' || charAt == 'D') {
                i2 = 2;
            }
            int i3 = i + i2;
            if (i3 > this.x) {
                this.x = i3;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x01a4, code lost:
        if ((r4.i & 262144) != 0) goto L_0x01a7;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int b() {
        /*
            Method dump skipped, instructions count: 933
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.esotericsoftware.a.r.b():int");
    }

    @Override // com.esotericsoftware.a.q
    public final a b(int i, u uVar, String str, boolean z) {
        d dVar = new d();
        b.a((i & (-16776961)) | (this.P << 8), uVar, dVar);
        dVar.b(this.f18930c.a(str)).b(0);
        b bVar = new b(this.f18930c, true, dVar, dVar, dVar.f18888b - 2);
        if (z) {
            bVar.f18882c = this.Q;
            this.Q = bVar;
        } else {
            bVar.f18882c = this.R;
            this.R = bVar;
        }
        return bVar;
    }

    @Override // com.esotericsoftware.a.q
    public final void b(int i, int i2) {
        this.P = this.v.f18888b;
        p pVar = this.Y;
        if (pVar != null) {
            if (this.V == 0) {
                pVar.f.a(i, i2, (g) null, (o) null);
            } else if (i == 169) {
                pVar.f18924a |= PropertyFlags.INDEX_PARTIAL_SKIP_NULL;
                this.Y.f18927d = this.Z;
                c();
            } else {
                int i3 = this.Z + l.f18908a[i];
                if (i3 > this.aa) {
                    this.aa = i3;
                }
                this.Z = i3;
            }
        }
        if (this.V != 2) {
            int i4 = (i == 22 || i == 24 || i == 55 || i == 57) ? i2 + 2 : i2 + 1;
            if (i4 > this.x) {
                this.x = i4;
            }
        }
        if (i2 >= 4 || i == 169) {
            d dVar = this.v;
            if (i2 >= 256) {
                dVar.a(196).b(i, i2);
            } else {
                dVar.a(i, i2);
            }
        } else {
            this.v.a((i < 54 ? ((i - 21) << 2) + 26 : ((i - 54) << 2) + 59) + i2);
        }
        if (i >= 54 && this.V == 0 && this.E > 0) {
            a(new p());
        }
    }

    @Override // com.esotericsoftware.a.q
    public final void b(int i, p pVar) {
        if (this.O == null) {
            this.O = new d();
        }
        this.N++;
        this.O.b(pVar.f18926c);
        this.O.b(i);
    }

    @Override // com.esotericsoftware.a.q
    public final void b(String str, int i) {
        this.P = this.v.f18888b;
        o b2 = this.f18930c.b(str);
        p pVar = this.Y;
        if (pVar != null) {
            if (this.V == 0) {
                pVar.f.a(197, i, this.f18930c, b2);
            } else {
                this.Z += 1 - i;
            }
        }
        this.v.b(197, b2.f18920a).a(i);
    }

    @Override // com.esotericsoftware.a.q
    public final a c(int i, u uVar, String str, boolean z) {
        d dVar = new d();
        b.a(i, uVar, dVar);
        dVar.b(this.f18930c.a(str)).b(0);
        b bVar = new b(this.f18930c, true, dVar, dVar, dVar.f18888b - 2);
        if (z) {
            bVar.f18882c = this.Q;
            this.Q = bVar;
        } else {
            bVar.f18882c = this.R;
            this.R = bVar;
        }
        return bVar;
    }

    @Override // com.esotericsoftware.a.q
    public final void c(int i, int i2) {
        int i3;
        this.P = this.v.f18888b;
        p pVar = this.Y;
        if (pVar != null && this.V == 0) {
            pVar.f.a(132, i, (g) null, (o) null);
        }
        if (this.V != 2 && (i3 = i + 1) > this.x) {
            this.x = i3;
        }
        if (i > 255 || i2 > 127 || i2 < -128) {
            this.v.a(196).b(132, i).b(i2);
        } else {
            this.v.a(132).a(i, i2);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:285:0x0c28, code lost:
        if (r0 == 16777219) goto L_0x0c2b;
     */
    @Override // com.esotericsoftware.a.q
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void d(int r10, int r11) {
        /*
            Method dump skipped, instructions count: 4044
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.esotericsoftware.a.r.d(int, int):void");
    }
}
