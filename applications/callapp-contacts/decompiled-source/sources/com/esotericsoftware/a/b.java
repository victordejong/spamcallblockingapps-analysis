package com.esotericsoftware.a;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/esotericsoftware/a/b.class */
public final class b extends a {

    /* renamed from: c  reason: collision with root package name */
    b f18882c;

    /* renamed from: d  reason: collision with root package name */
    b f18883d;
    private final g e;
    private int f;
    private final boolean g;
    private final d h;
    private final d i;
    private final int j;

    /* JADX INFO: Access modifiers changed from: package-private */
    public b(g gVar, boolean z, d dVar, d dVar2, int i) {
        super(327680);
        this.e = gVar;
        this.g = z;
        this.h = dVar;
        this.i = dVar2;
        this.j = i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Removed duplicated region for block: B:16:0x007f  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0086  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void a(int r6, com.esotericsoftware.a.u r7, com.esotericsoftware.a.d r8) {
        /*
            r0 = r6
            r1 = 24
            int r0 = r0 >>> r1
            r9 = r0
            r0 = r9
            if (r0 == 0) goto L_0x0072
            r0 = r9
            r1 = 1
            if (r0 == r1) goto L_0x0072
            r0 = r9
            switch(r0) {
                case 19: goto L_0x0069;
                case 20: goto L_0x0069;
                case 21: goto L_0x0069;
                case 22: goto L_0x0072;
                default: goto L_0x002c;
            }
        L_0x002c:
            r0 = r9
            switch(r0) {
                case 71: goto L_0x0060;
                case 72: goto L_0x0060;
                case 73: goto L_0x0060;
                case 74: goto L_0x0060;
                case 75: goto L_0x0060;
                default: goto L_0x0050;
            }
        L_0x0050:
            r0 = r8
            r1 = r9
            r2 = r6
            r3 = 16776960(0xffff00, float:2.3509528E-38)
            r2 = r2 & r3
            r3 = 8
            int r2 = r2 >> r3
            com.esotericsoftware.a.d r0 = r0.b(r1, r2)
            goto L_0x007b
        L_0x0060:
            r0 = r8
            r1 = r6
            com.esotericsoftware.a.d r0 = r0.c(r1)
            goto L_0x007b
        L_0x0069:
            r0 = r8
            r1 = r9
            com.esotericsoftware.a.d r0 = r0.a(r1)
            goto L_0x007b
        L_0x0072:
            r0 = r8
            r1 = r6
            r2 = 16
            int r1 = r1 >>> r2
            com.esotericsoftware.a.d r0 = r0.b(r1)
        L_0x007b:
            r0 = r7
            if (r0 != 0) goto L_0x0086
            r0 = r8
            r1 = 0
            com.esotericsoftware.a.d r0 = r0.a(r1)
            return
        L_0x0086:
            r0 = r7
            byte[] r0 = r0.f18940a
            r1 = r7
            int r1 = r1.f18941b
            r0 = r0[r1]
            r6 = r0
            r0 = r8
            r1 = r7
            byte[] r1 = r1.f18940a
            r2 = r7
            int r2 = r2.f18941b
            r3 = r6
            r4 = 2
            int r3 = r3 * r4
            r4 = 1
            int r3 = r3 + r4
            com.esotericsoftware.a.d r0 = r0.a(r1, r2, r3)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.esotericsoftware.a.b.a(int, com.esotericsoftware.a.u, com.esotericsoftware.a.d):void");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(b[] bVarArr, int i, d dVar) {
        int length = ((bVarArr.length - i) * 2) + 1;
        int i2 = i;
        while (true) {
            int i3 = 0;
            if (i2 >= bVarArr.length) {
                break;
            }
            if (bVarArr[i2] != null) {
                i3 = bVarArr[i2].b();
            }
            length += i3;
            i2++;
        }
        dVar.c(length).a(bVarArr.length - i);
        while (i < bVarArr.length) {
            b bVar = bVarArr[i];
            b bVar2 = null;
            int i4 = 0;
            while (bVar != null) {
                i4++;
                bVar.a();
                bVar.f18883d = bVar2;
                bVar = bVar.f18882c;
                bVar2 = bVar;
            }
            dVar.b(i4);
            while (bVar2 != null) {
                dVar.a(bVar2.h.f18887a, 0, bVar2.h.f18888b);
                bVar2 = bVar2.f18883d;
            }
            i++;
        }
    }

    @Override // com.esotericsoftware.a.a
    public final a a(String str) {
        this.f++;
        if (this.g) {
            this.h.b(this.e.a(str));
        }
        this.h.b(91, 0);
        g gVar = this.e;
        d dVar = this.h;
        return new b(gVar, false, dVar, dVar, dVar.f18888b - 2);
    }

    @Override // com.esotericsoftware.a.a
    public final a a(String str, String str2) {
        this.f++;
        if (this.g) {
            this.h.b(this.e.a(str));
        }
        this.h.b(64, this.e.a(str2)).b(0);
        g gVar = this.e;
        d dVar = this.h;
        return new b(gVar, true, dVar, dVar, dVar.f18888b - 2);
    }

    @Override // com.esotericsoftware.a.a
    public final void a() {
        d dVar = this.i;
        if (dVar != null) {
            byte[] bArr = dVar.f18887a;
            int i = this.j;
            int i2 = this.f;
            bArr[i] = (byte) (i2 >>> 8);
            bArr[i + 1] = (byte) i2;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(d dVar) {
        int i = 2;
        int i2 = 0;
        b bVar = null;
        b bVar2 = this;
        while (bVar2 != null) {
            i2++;
            i += bVar2.h.f18888b;
            bVar2.a();
            bVar2.f18883d = bVar;
            bVar2 = bVar2.f18882c;
            bVar = bVar2;
        }
        dVar.c(i);
        dVar.b(i2);
        while (bVar != null) {
            dVar.a(bVar.h.f18887a, 0, bVar.h.f18888b);
            bVar = bVar.f18883d;
        }
    }

    @Override // com.esotericsoftware.a.a
    public final void a(String str, Object obj) {
        this.f++;
        if (this.g) {
            this.h.b(this.e.a(str));
        }
        if (obj instanceof String) {
            this.h.b(115, this.e.a((String) obj));
        } else if (obj instanceof Byte) {
            this.h.b(66, this.e.a((int) ((Byte) obj).byteValue()).f18920a);
        } else if (obj instanceof Boolean) {
            this.h.b(90, this.e.a(((Boolean) obj).booleanValue() ? 1 : 0).f18920a);
        } else if (obj instanceof Character) {
            this.h.b(67, this.e.a((int) ((Character) obj).charValue()).f18920a);
        } else if (obj instanceof Short) {
            this.h.b(83, this.e.a((int) ((Short) obj).shortValue()).f18920a);
        } else if (obj instanceof t) {
            this.h.b(99, this.e.a(((t) obj).c()));
        } else {
            if (obj instanceof byte[]) {
                byte[] bArr = (byte[]) obj;
                this.h.b(91, bArr.length);
                for (byte b2 : bArr) {
                    this.h.b(66, this.e.a((int) b2).f18920a);
                }
            } else if (obj instanceof boolean[]) {
                boolean[] zArr = (boolean[]) obj;
                this.h.b(91, zArr.length);
                for (boolean z : zArr) {
                    this.h.b(90, this.e.a(z ? 1 : 0).f18920a);
                }
            } else if (obj instanceof short[]) {
                short[] sArr = (short[]) obj;
                this.h.b(91, sArr.length);
                for (short s : sArr) {
                    this.h.b(83, this.e.a((int) s).f18920a);
                }
            } else if (obj instanceof char[]) {
                char[] cArr = (char[]) obj;
                this.h.b(91, cArr.length);
                for (char c2 : cArr) {
                    this.h.b(67, this.e.a((int) c2).f18920a);
                }
            } else if (obj instanceof int[]) {
                int[] iArr = (int[]) obj;
                this.h.b(91, iArr.length);
                for (int i : iArr) {
                    this.h.b(73, this.e.a(i).f18920a);
                }
            } else if (obj instanceof long[]) {
                long[] jArr = (long[]) obj;
                this.h.b(91, jArr.length);
                for (long j : jArr) {
                    this.h.b(74, this.e.a(j).f18920a);
                }
            } else if (obj instanceof float[]) {
                float[] fArr = (float[]) obj;
                this.h.b(91, fArr.length);
                for (float f : fArr) {
                    this.h.b(70, this.e.a(f).f18920a);
                }
            } else if (obj instanceof double[]) {
                double[] dArr = (double[]) obj;
                this.h.b(91, dArr.length);
                for (double d2 : dArr) {
                    this.h.b(68, this.e.a(d2).f18920a);
                }
            } else {
                o a2 = this.e.a(obj);
                this.h.b(".s.IFJDCS".charAt(a2.f18921b), a2.f18920a);
            }
        }
    }

    @Override // com.esotericsoftware.a.a
    public final void a(String str, String str2, String str3) {
        this.f++;
        if (this.g) {
            this.h.b(this.e.a(str));
        }
        this.h.b(101, this.e.a(str2)).b(this.e.a(str3));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final int b() {
        int i = 0;
        for (b bVar = this; bVar != null; bVar = bVar.f18882c) {
            i += bVar.h.f18888b;
        }
        return i;
    }
}
