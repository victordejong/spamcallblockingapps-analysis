package com.esotericsoftware.a;

import io.objectbox.model.PropertyFlags;
/* loaded from: classes2-dex2jar.jar:com/esotericsoftware/a/g.class */
public final class g extends f {

    /* renamed from: c  reason: collision with root package name */
    static final byte[] f18895c;
    private int A;
    private int B;
    private int[] C;
    private int D;
    private d E;
    private int F;
    private int G;
    private b H;
    private b I;
    private b J;
    private b K;
    private c L;
    private int M;
    private d N;
    private boolean O;
    private boolean P;

    /* renamed from: d  reason: collision with root package name */
    e f18896d;
    int e;
    int f;
    final d g;
    o[] h;
    int i;
    final o j;
    final o k;
    final o l;
    final o m;
    o[] n;
    String o;
    int p;
    d q;
    k r;
    k s;
    r t;
    r u;
    boolean v;
    private short w;
    private int x;
    private int y;
    private int z;

    static {
        byte[] bArr = new byte[220];
        for (int i = 0; i < 220; i++) {
            bArr[i] = (byte) ("AAAAAAAAAAAAAAAABCLMMDDDDDEEEEEEEEEEEEEEEEEEEEAAAAAAAADDDDDEEEEEEEEEEEEEEEEEEEEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAANAAAAAAAAAAAAAAAAAAAAJJJJJJJJJJJJJJJJDOPAAAAAAGGGGGGGHIFBFAAFFAARQJJKKJJJJJJJJJJJJJJJJJJ".charAt(i) - 'A');
        }
        f18895c = bArr;
    }

    public g(int i) {
        super(327680);
        boolean z = true;
        this.f = 1;
        this.g = new d();
        o[] oVarArr = new o[PropertyFlags.INDEX_PARTIAL_SKIP_NULL];
        this.h = oVarArr;
        this.i = (int) (oVarArr.length * 0.75d);
        this.j = new o();
        this.k = new o();
        this.l = new o();
        this.m = new o();
        this.O = (i & 1) != 0;
        if ((i & 2) == 0) {
            z = false;
        }
        this.P = z;
    }

    public g(e eVar, int i) {
        this(i);
        int i2;
        boolean z;
        char[] cArr = new char[eVar.f18892d];
        int length = eVar.f18890b.length;
        o[] oVarArr = new o[length];
        int i3 = 1;
        while (i3 < length) {
            int i4 = eVar.f18890b[i3];
            byte b2 = eVar.f18889a[i4 - 1];
            o oVar = new o(i3);
            if (b2 == 1) {
                String str = eVar.f18891c[i3];
                String str2 = str;
                if (str == null) {
                    int i5 = eVar.f18890b[i3];
                    String[] strArr = eVar.f18891c;
                    str2 = eVar.a(i5 + 2, eVar.b(i5), cArr);
                    strArr[i3] = str2;
                }
                oVar.a(b2, str2, null, null);
            } else if (b2 == 15) {
                int i6 = eVar.f18890b[eVar.b(i4 + 1)];
                int i7 = eVar.f18890b[eVar.b(i6 + 2)];
                oVar.a(eVar.a(i4) + 20, eVar.b(i6, cArr), eVar.a(i7, cArr), eVar.a(i7 + 2, cArr));
            } else if (b2 == 18) {
                if (this.q == null) {
                    int a2 = eVar.a();
                    int b3 = eVar.b(a2);
                    while (true) {
                        if (b3 <= 0) {
                            z = false;
                        } else if ("BootstrapMethods".equals(eVar.a(a2 + 2, cArr))) {
                            z = true;
                        } else {
                            a2 += eVar.c(a2 + 4) + 6;
                            b3--;
                        }
                    }
                    if (z) {
                        int b4 = eVar.b(a2 + 8);
                        int i8 = a2 + 10;
                        int i9 = i8;
                        for (i2 = 0; i2 < b4; i2++) {
                            int hashCode = eVar.c(eVar.b(i9), cArr).hashCode();
                            int i10 = i9;
                            for (int b5 = eVar.b(i9 + 2); b5 > 0; b5--) {
                                hashCode ^= eVar.c(eVar.b(i10 + 4), cArr).hashCode();
                                i10 += 2;
                            }
                            i9 = i10 + 4;
                            o oVar2 = new o(i2);
                            oVar2.a((i9 - a2) - 10, Integer.MAX_VALUE & hashCode);
                            int i11 = oVar2.h % length;
                            oVar2.i = oVarArr[i11];
                            oVarArr[i11] = oVar2;
                        }
                        int c2 = eVar.c(a2 + 4);
                        d dVar = new d(c2 + 62);
                        dVar.a(eVar.f18889a, i8, c2 - 2);
                        this.p = b4;
                        this.q = dVar;
                    }
                }
                int i12 = eVar.f18890b[eVar.b(i4 + 2)];
                oVar.a(eVar.a(i12, cArr), eVar.a(i12 + 2, cArr), eVar.b(i4));
            } else if (b2 == 3) {
                oVar.a(eVar.c(i4));
            } else if (b2 != 4) {
                if (b2 == 5) {
                    oVar.a(eVar.d(i4));
                } else if (b2 != 6) {
                    switch (b2) {
                        case 9:
                        case 10:
                        case 11:
                            int i13 = eVar.f18890b[eVar.b(i4 + 2)];
                            oVar.a(b2, eVar.b(i4, cArr), eVar.a(i13, cArr), eVar.a(i13 + 2, cArr));
                            continue;
                        case 12:
                            oVar.a(b2, eVar.a(i4, cArr), eVar.a(i4 + 2, cArr), null);
                            continue;
                        default:
                            oVar.a(b2, eVar.a(i4, cArr), null, null);
                            continue;
                    }
                } else {
                    oVar.a(Double.longBitsToDouble(eVar.d(i4)));
                }
                i3++;
            } else {
                oVar.a(Float.intBitsToFloat(eVar.c(i4)));
            }
            int i14 = oVar.h % length;
            oVar.i = oVarArr[i14];
            oVarArr[i14] = oVar;
            i3++;
        }
        int i15 = eVar.f18890b[1] - 1;
        this.g.a(eVar.f18889a, i15, eVar.e - i15);
        this.h = oVarArr;
        this.i = (int) (length * 0.75d);
        this.f = length;
        this.f18896d = eVar;
    }

    private void a(int i, int i2) {
        this.g.a(15, i).b(i2);
    }

    private int b(String str, String str2, String str3, boolean z) {
        return a(str, str2, str3, z).f18920a;
    }

    private o b() {
        short s = (short) (this.w + 1);
        this.w = s;
        o oVar = new o(s, this.j);
        b(oVar);
        if (this.n == null) {
            this.n = new o[16];
        }
        short s2 = this.w;
        o[] oVarArr = this.n;
        if (s2 == oVarArr.length) {
            o[] oVarArr2 = new o[oVarArr.length * 2];
            System.arraycopy(oVarArr, 0, oVarArr2, 0, oVarArr.length);
            this.n = oVarArr2;
        }
        this.n[this.w] = oVar;
        return oVar;
    }

    private int c(String str, String str2, String str3) {
        return b(str, str2, str3).f18920a;
    }

    private o d(String str, String str2) {
        this.k.a(12, str, str2, null);
        o a2 = a(this.k);
        o oVar = a2;
        if (a2 == null) {
            a(12, a(str), a(str2));
            int i = this.f;
            this.f = i + 1;
            oVar = new o(i, this.k);
            b(oVar);
        }
        return oVar;
    }

    private o e(String str) {
        this.k.a(16, str, null, null);
        o a2 = a(this.k);
        o oVar = a2;
        if (a2 == null) {
            this.g.b(16, a(str));
            int i = this.f;
            this.f = i + 1;
            oVar = new o(i, this.k);
            b(oVar);
        }
        return oVar;
    }

    private o f(String str) {
        this.k.a(8, str, null, null);
        o a2 = a(this.k);
        o oVar = a2;
        if (a2 == null) {
            this.g.b(8, a(str));
            int i = this.f;
            this.f = i + 1;
            oVar = new o(i, this.k);
            b(oVar);
        }
        return oVar;
    }

    public final int a(String str) {
        this.j.a(1, str, null, null);
        o a2 = a(this.j);
        o oVar = a2;
        if (a2 == null) {
            this.g.a(1).a(str);
            int i = this.f;
            this.f = i + 1;
            oVar = new o(i, this.j);
            b(oVar);
        }
        return oVar.f18920a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final int a(String str, int i) {
        this.j.f18921b = 31;
        this.j.f18922c = i;
        this.j.e = str;
        this.j.h = (str.hashCode() + 31 + i) & Integer.MAX_VALUE;
        o a2 = a(this.j);
        o oVar = a2;
        if (a2 == null) {
            oVar = b();
        }
        return oVar.f18920a;
    }

    @Override // com.esotericsoftware.a.f
    public final a a(int i, u uVar, String str, boolean z) {
        d dVar = new d();
        b.a(i, uVar, dVar);
        dVar.b(a(str)).b(0);
        b bVar = new b(this, true, dVar, dVar, dVar.f18888b - 2);
        if (z) {
            bVar.f18882c = this.J;
            this.J = bVar;
        } else {
            bVar.f18882c = this.K;
            this.K = bVar;
        }
        return bVar;
    }

    @Override // com.esotericsoftware.a.f
    public final a a(String str, boolean z) {
        d dVar = new d();
        dVar.b(a(str)).b(0);
        b bVar = new b(this, true, dVar, dVar, 2);
        if (z) {
            bVar.f18882c = this.H;
            this.H = bVar;
        } else {
            bVar.f18882c = this.I;
            this.I = bVar;
        }
        return bVar;
    }

    @Override // com.esotericsoftware.a.f
    public final j a(int i, String str, String str2, String str3, Object obj) {
        return new k(this, i, str, str2, str3, obj);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final o a(double d2) {
        this.j.a(d2);
        o a2 = a(this.j);
        o oVar = a2;
        if (a2 == null) {
            this.g.a(6).a(this.j.f18923d);
            oVar = new o(this.f, this.j);
            this.f += 2;
            b(oVar);
        }
        return oVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final o a(float f) {
        this.j.a(f);
        o a2 = a(this.j);
        o oVar = a2;
        if (a2 == null) {
            this.g.a(4).c(this.j.f18922c);
            int i = this.f;
            this.f = i + 1;
            oVar = new o(i, this.j);
            b(oVar);
        }
        return oVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final o a(int i) {
        this.j.a(i);
        o a2 = a(this.j);
        o oVar = a2;
        if (a2 == null) {
            this.g.a(3).c(i);
            int i2 = this.f;
            this.f = i2 + 1;
            oVar = new o(i2, this.j);
            b(oVar);
        }
        return oVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final o a(int i, String str, String str2, String str3, boolean z) {
        this.m.a(i + 20, str, str2, str3);
        o a2 = a(this.m);
        o oVar = a2;
        if (a2 == null) {
            a(i, i <= 4 ? c(str, str2, str3) : b(str, str2, str3, z));
            int i2 = this.f;
            this.f = i2 + 1;
            oVar = new o(i2, this.m);
            b(oVar);
        }
        return oVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final o a(long j) {
        this.j.a(j);
        o a2 = a(this.j);
        o oVar = a2;
        if (a2 == null) {
            this.g.a(5).a(j);
            oVar = new o(this.f, this.j);
            this.f += 2;
            b(oVar);
        }
        return oVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final o a(o oVar) {
        o oVar2 = this.h[oVar.h % this.h.length];
        while (oVar2 != null && (oVar2.f18921b != oVar.f18921b || !oVar.a(oVar2))) {
            oVar2 = oVar2.i;
        }
        return oVar2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final o a(Object obj) {
        if (obj instanceof Integer) {
            return a(((Integer) obj).intValue());
        }
        if (obj instanceof Byte) {
            return a(((Byte) obj).intValue());
        }
        if (obj instanceof Character) {
            return a((int) ((Character) obj).charValue());
        }
        if (obj instanceof Short) {
            return a(((Short) obj).intValue());
        }
        if (obj instanceof Boolean) {
            return a(((Boolean) obj).booleanValue() ? 1 : 0);
        }
        if (obj instanceof Float) {
            return a(((Float) obj).floatValue());
        }
        if (obj instanceof Long) {
            return a(((Long) obj).longValue());
        }
        if (obj instanceof Double) {
            return a(((Double) obj).doubleValue());
        }
        if (obj instanceof String) {
            return f((String) obj);
        }
        if (obj instanceof t) {
            t tVar = (t) obj;
            int i = tVar.j;
            if (i == 10) {
                return b(tVar.b());
            }
            String c2 = tVar.c();
            return i == 11 ? e(c2) : b(c2);
        } else if (obj instanceof m) {
            m mVar = (m) obj;
            return a(mVar.f18912a, mVar.f18913b, mVar.f18914c, mVar.f18915d, mVar.e);
        } else {
            throw new IllegalArgumentException("value ".concat(String.valueOf(obj)));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final o a(String str, String str2, String str3, boolean z) {
        int i = z ? 11 : 10;
        this.l.a(i, str, str2, str3);
        o a2 = a(this.l);
        o oVar = a2;
        if (a2 == null) {
            a(i, c(str), b(str2, str3));
            int i2 = this.f;
            this.f = i2 + 1;
            oVar = new o(i2, this.l);
            b(oVar);
        }
        return oVar;
    }

    @Override // com.esotericsoftware.a.f
    public final q a(int i, String str, String str2, String str3, String[] strArr) {
        return new r(this, i, str, str2, str3, strArr, this.O, this.P);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(int i, int i2, int i3) {
        this.g.b(i, i2).b(i3);
    }

    @Override // com.esotericsoftware.a.f
    public final void a(int i, int i2, String str, String str2, String str3, String[] strArr) {
        this.e = i;
        this.x = i2;
        this.y = c(str);
        this.o = str;
        if (str2 != null) {
            this.z = a(str2);
        }
        this.A = str3 == null ? 0 : c(str3);
        if (strArr != null && strArr.length > 0) {
            int length = strArr.length;
            this.B = length;
            this.C = new int[length];
            for (int i3 = 0; i3 < this.B; i3++) {
                this.C[i3] = c(strArr[i3]);
            }
        }
    }

    @Override // com.esotericsoftware.a.f
    public final void a(c cVar) {
        cVar.f18886c = this.L;
        this.L = cVar;
    }

    @Override // com.esotericsoftware.a.f
    public final void a(String str, String str2) {
        if (str != null) {
            this.D = a(str);
        }
        if (str2 != null) {
            this.E = new d().a(str2, 0, Integer.MAX_VALUE);
        }
    }

    @Override // com.esotericsoftware.a.f
    public final void a(String str, String str2, String str3) {
        this.F = c(str);
        if (str2 != null && str3 != null) {
            this.G = b(str2, str3);
        }
    }

    @Override // com.esotericsoftware.a.f
    public final void a(String str, String str2, String str3, int i) {
        if (this.N == null) {
            this.N = new d();
        }
        o b2 = b(str);
        if (b2.f18922c == 0) {
            this.M++;
            this.N.b(b2.f18920a);
            int i2 = 0;
            this.N.b(str2 == null ? 0 : c(str2));
            d dVar = this.N;
            if (str3 != null) {
                i2 = a(str3);
            }
            dVar.b(i2);
            this.N.b(i);
            b2.f18922c = this.M;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:105:0x04b8, code lost:
        if ((r0.f18907d & 262144) != 0) goto L_0x04bb;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x006a, code lost:
        if ((r7.f18907d & 262144) != 0) goto L_0x006d;
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x02a4, code lost:
        if ((r0 & 262144) != 0) goto L_0x02a7;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final byte[] a() {
        /*
            Method dump skipped, instructions count: 2306
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.esotericsoftware.a.g.a():byte[]");
    }

    public final int b(String str, String str2) {
        return d(str, str2).f18920a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final o b(String str) {
        this.k.a(7, str, null, null);
        o a2 = a(this.k);
        o oVar = a2;
        if (a2 == null) {
            this.g.b(7, a(str));
            int i = this.f;
            this.f = i + 1;
            oVar = new o(i, this.k);
            b(oVar);
        }
        return oVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final o b(String str, String str2, String str3) {
        this.l.a(9, str, str2, str3);
        o a2 = a(this.l);
        o oVar = a2;
        if (a2 == null) {
            a(9, c(str), b(str2, str3));
            int i = this.f;
            this.f = i + 1;
            oVar = new o(i, this.l);
            b(oVar);
        }
        return oVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void b(o oVar) {
        if (this.f + this.w > this.i) {
            int length = this.h.length;
            int i = (length * 2) + 1;
            o[] oVarArr = new o[i];
            while (true) {
                length--;
                if (length < 0) {
                    break;
                }
                o oVar2 = this.h[length];
                while (oVar2 != null) {
                    int i2 = oVar2.h % i;
                    oVar2 = oVar2.i;
                    oVar2.i = oVarArr[i2];
                    oVarArr[i2] = oVar2;
                }
            }
            this.h = oVarArr;
            this.i = (int) (i * 0.75d);
        }
        int i3 = oVar.h;
        o[] oVarArr2 = this.h;
        int length2 = i3 % oVarArr2.length;
        oVar.i = oVarArr2[length2];
        this.h[length2] = oVar;
    }

    public final int c(String str) {
        return b(str).f18920a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String c(String str, String str2) {
        Class<? super Object> superclass;
        ClassLoader classLoader = getClass().getClassLoader();
        try {
            Class<?> cls = Class.forName(str.replace('/', '.'), false, classLoader);
            Class<?> cls2 = Class.forName(str2.replace('/', '.'), false, classLoader);
            if (cls.isAssignableFrom(cls2)) {
                return str;
            }
            if (cls2.isAssignableFrom(cls)) {
                return str2;
            }
            if (cls.isInterface()) {
                return "java/lang/Object";
            }
            Class<?> cls3 = cls;
            if (cls2.isInterface()) {
                return "java/lang/Object";
            }
            do {
                superclass = cls3.getSuperclass();
                cls3 = superclass;
            } while (!superclass.isAssignableFrom(cls2));
            return superclass.getName().replace('.', '/');
        } catch (Exception e) {
            throw new RuntimeException(e.toString());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final int d(String str) {
        this.j.a(30, str, null, null);
        o a2 = a(this.j);
        o oVar = a2;
        if (a2 == null) {
            oVar = b();
        }
        return oVar.f18920a;
    }
}
