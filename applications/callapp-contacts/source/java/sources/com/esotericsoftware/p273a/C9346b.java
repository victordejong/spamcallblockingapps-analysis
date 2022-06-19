package com.esotericsoftware.p273a;
/* renamed from: com.esotericsoftware.a.b */
/* loaded from: classes2-dex2jar.jar:com/esotericsoftware/a/b.class */
public final class C9346b extends AbstractC9345a {

    /* renamed from: c */
    C9346b f31975c;

    /* renamed from: d */
    C9346b f31976d;

    /* renamed from: e */
    private final C9351g f31977e;

    /* renamed from: f */
    private int f31978f;

    /* renamed from: g */
    private final boolean f31979g;

    /* renamed from: h */
    private final C9348d f31980h;

    /* renamed from: i */
    private final C9348d f31981i;

    /* renamed from: j */
    private final int f31982j;

    public C9346b(C9351g c9351g, boolean z, C9348d c9348d, C9348d c9348d2, int i) {
        super(327680);
        this.f31977e = c9351g;
        this.f31979g = z;
        this.f31980h = c9348d;
        this.f31981i = c9348d2;
        this.f31982j = i;
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x007f  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0086  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void m24665a(int r6, com.esotericsoftware.p273a.C9365u r7, com.esotericsoftware.p273a.C9348d r8) {
        /*
            r0 = r6
            r1 = 24
            int r0 = r0 >>> r1
            r9 = r0
            r0 = r9
            if (r0 == 0) goto L72
            r0 = r9
            r1 = 1
            if (r0 == r1) goto L72
            r0 = r9
            switch(r0) {
                case 19: goto L69;
                case 20: goto L69;
                case 21: goto L69;
                case 22: goto L72;
                default: goto L2c;
            }
        L2c:
            r0 = r9
            switch(r0) {
                case 71: goto L60;
                case 72: goto L60;
                case 73: goto L60;
                case 74: goto L60;
                case 75: goto L60;
                default: goto L50;
            }
        L50:
            r0 = r8
            r1 = r9
            r2 = r6
            r3 = 16776960(0xffff00, float:2.3509528E-38)
            r2 = r2 & r3
            r3 = 8
            int r2 = r2 >> r3
            com.esotericsoftware.a.d r0 = r0.m24645b(r1, r2)
            goto L7b
        L60:
            r0 = r8
            r1 = r6
            com.esotericsoftware.a.d r0 = r0.m24644c(r1)
            goto L7b
        L69:
            r0 = r8
            r1 = r9
            com.esotericsoftware.a.d r0 = r0.m24652a(r1)
            goto L7b
        L72:
            r0 = r8
            r1 = r6
            r2 = 16
            int r1 = r1 >>> r2
            com.esotericsoftware.a.d r0 = r0.m24646b(r1)
        L7b:
            r0 = r7
            if (r0 != 0) goto L86
            r0 = r8
            r1 = 0
            com.esotericsoftware.a.d r0 = r0.m24652a(r1)
            return
        L86:
            r0 = r7
            byte[] r0 = r0.f32184a
            r1 = r7
            int r1 = r1.f32185b
            r0 = r0[r1]
            r6 = r0
            r0 = r8
            r1 = r7
            byte[] r1 = r1.f32184a
            r2 = r7
            int r2 = r2.f32185b
            r3 = r6
            r4 = 2
            int r3 = r3 * r4
            r4 = 1
            int r3 = r3 + r4
            com.esotericsoftware.a.d r0 = r0.m24647a(r1, r2, r3)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.esotericsoftware.p273a.C9346b.m24665a(int, com.esotericsoftware.a.u, com.esotericsoftware.a.d):void");
    }

    /* renamed from: a */
    public static void m24659a(C9346b[] c9346bArr, int i, C9348d c9348d) {
        int length = ((c9346bArr.length - i) * 2) + 1;
        int i2 = i;
        while (true) {
            int i3 = 0;
            if (i2 >= c9346bArr.length) {
                break;
            }
            if (c9346bArr[i2] != null) {
                i3 = c9346bArr[i2].m24658b();
            }
            length += i3;
            i2++;
        }
        c9348d.m24644c(length).m24652a(c9346bArr.length - i);
        while (i < c9346bArr.length) {
            C9346b c9346b = null;
            int i4 = 0;
            for (C9346b c9346b2 = c9346bArr[i]; c9346b2 != null; c9346b2 = c9346b2.f31975c) {
                i4++;
                c9346b2.mo24666a();
                c9346b2.f31976d = c9346b;
                c9346b = c9346b2;
            }
            c9348d.m24646b(i4);
            while (c9346b != null) {
                c9348d.m24647a(c9346b.f31980h.f31986a, 0, c9346b.f31980h.f31987b);
                c9346b = c9346b.f31976d;
            }
            i++;
        }
    }

    @Override // com.esotericsoftware.p273a.AbstractC9345a
    /* renamed from: a */
    public final AbstractC9345a mo24663a(String str) {
        this.f31978f++;
        if (this.f31979g) {
            this.f31980h.m24646b(this.f31977e.m24606a(str));
        }
        this.f31980h.m24645b(91, 0);
        C9351g c9351g = this.f31977e;
        C9348d c9348d = this.f31980h;
        return new C9346b(c9351g, false, c9348d, c9348d, c9348d.f31987b - 2);
    }

    @Override // com.esotericsoftware.p273a.AbstractC9345a
    /* renamed from: a */
    public final AbstractC9345a mo24661a(String str, String str2) {
        this.f31978f++;
        if (this.f31979g) {
            this.f31980h.m24646b(this.f31977e.m24606a(str));
        }
        this.f31980h.m24645b(64, this.f31977e.m24606a(str2)).m24646b(0);
        C9351g c9351g = this.f31977e;
        C9348d c9348d = this.f31980h;
        return new C9346b(c9351g, true, c9348d, c9348d, c9348d.f31987b - 2);
    }

    @Override // com.esotericsoftware.p273a.AbstractC9345a
    /* renamed from: a */
    public final void mo24666a() {
        C9348d c9348d = this.f31981i;
        if (c9348d != null) {
            byte[] bArr = c9348d.f31986a;
            int i = this.f31982j;
            int i2 = this.f31978f;
            bArr[i] = (byte) (i2 >>> 8);
            bArr[i + 1] = (byte) i2;
        }
    }

    /* renamed from: a */
    public final void m24664a(C9348d c9348d) {
        int i = 2;
        int i2 = 0;
        C9346b c9346b = null;
        C9346b c9346b2 = this;
        while (true) {
            C9346b c9346b3 = c9346b2;
            if (c9346b3 == null) {
                break;
            }
            i2++;
            i += c9346b3.f31980h.f31987b;
            c9346b3.mo24666a();
            c9346b3.f31976d = c9346b;
            c9346b = c9346b3;
            c9346b2 = c9346b3.f31975c;
        }
        c9348d.m24644c(i);
        c9348d.m24646b(i2);
        while (c9346b != null) {
            c9348d.m24647a(c9346b.f31980h.f31986a, 0, c9346b.f31980h.f31987b);
            c9346b = c9346b.f31976d;
        }
    }

    @Override // com.esotericsoftware.p273a.AbstractC9345a
    /* renamed from: a */
    public final void mo24662a(String str, Object obj) {
        this.f31978f++;
        if (this.f31979g) {
            this.f31980h.m24646b(this.f31977e.m24606a(str));
        }
        if (obj instanceof String) {
            this.f31980h.m24645b(115, this.f31977e.m24606a((String) obj));
        } else if (obj instanceof Byte) {
            this.f31980h.m24645b(66, this.f31977e.m24618a((int) ((Byte) obj).byteValue()).f32091a);
        } else if (obj instanceof Boolean) {
            this.f31980h.m24645b(90, this.f31977e.m24618a(((Boolean) obj).booleanValue() ? 1 : 0).f32091a);
        } else if (obj instanceof Character) {
            this.f31980h.m24645b(67, this.f31977e.m24618a((int) ((Character) obj).charValue()).f32091a);
        } else if (obj instanceof Short) {
            this.f31980h.m24645b(83, this.f31977e.m24618a((int) ((Short) obj).shortValue()).f32091a);
        } else if (obj instanceof C9364t) {
            this.f31980h.m24645b(99, this.f31977e.m24606a(((C9364t) obj).m24503c()));
        } else {
            if (obj instanceof byte[]) {
                byte[] bArr = (byte[]) obj;
                this.f31980h.m24645b(91, bArr.length);
                for (byte b : bArr) {
                    this.f31980h.m24645b(66, this.f31977e.m24618a((int) b).f32091a);
                }
            } else if (obj instanceof boolean[]) {
                boolean[] zArr = (boolean[]) obj;
                this.f31980h.m24645b(91, zArr.length);
                for (boolean z : zArr) {
                    this.f31980h.m24645b(90, this.f31977e.m24618a(z ? 1 : 0).f32091a);
                }
            } else if (obj instanceof short[]) {
                short[] sArr = (short[]) obj;
                this.f31980h.m24645b(91, sArr.length);
                for (short s : sArr) {
                    this.f31980h.m24645b(83, this.f31977e.m24618a((int) s).f32091a);
                }
            } else if (obj instanceof char[]) {
                char[] cArr = (char[]) obj;
                this.f31980h.m24645b(91, cArr.length);
                for (char c : cArr) {
                    this.f31980h.m24645b(67, this.f31977e.m24618a((int) c).f32091a);
                }
            } else if (obj instanceof int[]) {
                int[] iArr = (int[]) obj;
                this.f31980h.m24645b(91, iArr.length);
                for (int i : iArr) {
                    this.f31980h.m24645b(73, this.f31977e.m24618a(i).f32091a);
                }
            } else if (obj instanceof long[]) {
                long[] jArr = (long[]) obj;
                this.f31980h.m24645b(91, jArr.length);
                for (long j : jArr) {
                    this.f31980h.m24645b(74, this.f31977e.m24610a(j).f32091a);
                }
            } else if (obj instanceof float[]) {
                float[] fArr = (float[]) obj;
                this.f31980h.m24645b(91, fArr.length);
                for (float f : fArr) {
                    this.f31980h.m24645b(70, this.f31977e.m24619a(f).f32091a);
                }
            } else if (!(obj instanceof double[])) {
                C9359o m24607a = this.f31977e.m24607a(obj);
                this.f31980h.m24645b(".s.IFJDCS".charAt(m24607a.f32092b), m24607a.f32091a);
            } else {
                double[] dArr = (double[]) obj;
                this.f31980h.m24645b(91, dArr.length);
                for (double d : dArr) {
                    this.f31980h.m24645b(68, this.f31977e.m24620a(d).f32091a);
                }
            }
        }
    }

    @Override // com.esotericsoftware.p273a.AbstractC9345a
    /* renamed from: a */
    public final void mo24660a(String str, String str2, String str3) {
        this.f31978f++;
        if (this.f31979g) {
            this.f31980h.m24646b(this.f31977e.m24606a(str));
        }
        this.f31980h.m24645b(101, this.f31977e.m24606a(str2)).m24646b(this.f31977e.m24606a(str3));
    }

    /* renamed from: b */
    public final int m24658b() {
        int i = 0;
        C9346b c9346b = this;
        while (true) {
            C9346b c9346b2 = c9346b;
            if (c9346b2 != null) {
                i += c9346b2.f31980h.f31987b;
                c9346b = c9346b2.f31975c;
            } else {
                return i;
            }
        }
    }
}
