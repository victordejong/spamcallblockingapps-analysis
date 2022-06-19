package com.esotericsoftware.p273a;

import java.io.IOException;
import java.io.InputStream;
/* renamed from: com.esotericsoftware.a.e */
/* loaded from: classes2-dex2jar.jar:com/esotericsoftware/a/e.class */
public final class C9349e {

    /* renamed from: a */
    public final byte[] f31988a;

    /* renamed from: b */
    final int[] f31989b;

    /* renamed from: c */
    final String[] f31990c;

    /* renamed from: d */
    final int f31991d;

    /* renamed from: e */
    public final int f31992e;

    public C9349e(InputStream inputStream) throws IOException {
        this(m24631a(inputStream, false));
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public C9349e(java.lang.String r6) throws java.io.IOException {
        /*
            r5 = this;
            java.lang.StringBuffer r0 = new java.lang.StringBuffer
            r1 = r0
            r1.<init>()
            r7 = r0
            r0 = r7
            r1 = r6
            r2 = 46
            r3 = 47
            java.lang.String r1 = r1.replace(r2, r3)
            java.lang.StringBuffer r0 = r0.append(r1)
            r0 = r7
            java.lang.String r1 = ".class"
            java.lang.StringBuffer r0 = r0.append(r1)
            r0 = r5
            r1 = r7
            java.lang.String r1 = r1.toString()
            java.io.InputStream r1 = java.lang.ClassLoader.getSystemResourceAsStream(r1)
            r2 = 1
            byte[] r1 = m24631a(r1, r2)
            r0.<init>(r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.esotericsoftware.p273a.C9349e.<init>(java.lang.String):void");
    }

    public C9349e(byte[] bArr) {
        this(bArr, 0, bArr.length);
    }

    public C9349e(byte[] bArr, int i, int i2) {
        int i3;
        int i4;
        int i5;
        this.f31988a = bArr;
        if (m24622e(i + 6) <= 52) {
            int[] iArr = new int[m24628b(i + 8)];
            this.f31989b = iArr;
            int length = iArr.length;
            this.f31990c = new String[length];
            int i6 = 0;
            int i7 = i + 10;
            int i8 = 1;
            while (i8 < length) {
                int i9 = i7 + 1;
                this.f31989b[i8] = i9;
                byte b = bArr[i7];
                if (b == 1) {
                    int m24628b = m24628b(i9) + 3;
                    i4 = i6;
                    i3 = i8;
                    i5 = m24628b;
                    if (m24628b > i6) {
                        i4 = m24628b;
                        i5 = m24628b;
                        i3 = i8;
                    }
                } else if (b != 15) {
                    i4 = i6;
                    i3 = i8;
                    i5 = 5;
                    if (b != 18) {
                        i4 = i6;
                        i3 = i8;
                        i5 = 5;
                        if (b != 3) {
                            i4 = i6;
                            i3 = i8;
                            i5 = 5;
                            if (b != 4) {
                                if (b == 5 || b == 6) {
                                    i5 = 9;
                                    i3 = i8 + 1;
                                    i4 = i6;
                                } else {
                                    i4 = i6;
                                    i3 = i8;
                                    i5 = 5;
                                    switch (b) {
                                        case 9:
                                        case 10:
                                        case 11:
                                        case 12:
                                            break;
                                        default:
                                            i5 = 3;
                                            i4 = i6;
                                            i3 = i8;
                                            continue;
                                    }
                                }
                            }
                        }
                    }
                } else {
                    i5 = 4;
                    i4 = i6;
                    i3 = i8;
                }
                i7 += i5;
                i8 = i3 + 1;
                i6 = i4;
            }
            this.f31991d = i6;
            this.f31992e = i7;
            return;
        }
        throw new IllegalArgumentException();
    }

    /* renamed from: a */
    private int m24639a(int i, boolean z, boolean z2, C9352h c9352h) {
        int i2;
        int i3;
        int i4;
        char[] cArr = c9352h.f32037c;
        C9360p[] c9360pArr = c9352h.f32042h;
        if (z) {
            i2 = i + 1;
            i3 = this.f31988a[i] & 255;
        } else {
            c9352h.f32045k = -1;
            i2 = i;
            i3 = 255;
        }
        c9352h.f32051q = 0;
        if (i3 < 64) {
            c9352h.f32049o = 3;
            c9352h.f32053s = 0;
        } else if (i3 < 128) {
            i3 -= 64;
            i2 = m24629a(c9352h.f32054t, 0, i2, cArr, c9360pArr);
            c9352h.f32049o = 4;
            c9352h.f32053s = 1;
        } else {
            int m24628b = m24628b(i2);
            int i5 = i2 + 2;
            if (i3 == 247) {
                i4 = m24629a(c9352h.f32054t, 0, i5, cArr, c9360pArr);
                c9352h.f32049o = 4;
                c9352h.f32053s = 1;
            } else {
                if (i3 >= 248 && i3 < 251) {
                    c9352h.f32049o = 2;
                    c9352h.f32051q = 251 - i3;
                    c9352h.f32050p -= c9352h.f32051q;
                    i4 = i5;
                } else if (i3 != 251) {
                    if (i3 >= 255) {
                        c9352h.f32049o = 0;
                        int m24628b2 = m24628b(i5);
                        int i6 = i5 + 2;
                        c9352h.f32051q = m24628b2;
                        c9352h.f32050p = m24628b2;
                        int i7 = 0;
                        while (m24628b2 > 0) {
                            i6 = m24629a(c9352h.f32052r, i7, i6, cArr, c9360pArr);
                            m24628b2--;
                            i7++;
                        }
                        int m24628b3 = m24628b(i6);
                        int i8 = i6 + 2;
                        c9352h.f32053s = m24628b3;
                        int i9 = 0;
                        while (true) {
                            i4 = i8;
                            if (m24628b3 <= 0) {
                                break;
                            }
                            i8 = m24629a(c9352h.f32054t, i9, i8, cArr, c9360pArr);
                            m24628b3--;
                            i9++;
                        }
                    } else {
                        int i10 = i3 - 251;
                        int i11 = i10;
                        i4 = i5;
                        int i12 = z2 ? c9352h.f32050p : 0;
                        while (i11 > 0) {
                            i4 = m24629a(c9352h.f32052r, i12, i4, cArr, c9360pArr);
                            i11--;
                            i12++;
                        }
                        c9352h.f32049o = 1;
                        c9352h.f32051q = i10;
                        c9352h.f32050p += c9352h.f32051q;
                    }
                } else {
                    c9352h.f32049o = 3;
                    i4 = i5;
                }
                c9352h.f32053s = 0;
            }
            i2 = i4;
            i3 = m24628b;
        }
        c9352h.f32045k += i3 + 1;
        m24635a(c9352h.f32045k, c9360pArr);
        return i2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v31, types: [com.esotericsoftware.a.t] */
    /* JADX WARN: Type inference failed for: r0v44, types: [java.lang.Boolean] */
    /* JADX WARN: Type inference failed for: r0v45, types: [java.lang.Boolean] */
    /* JADX WARN: Type inference failed for: r14v0, types: [com.esotericsoftware.a.a] */
    /* renamed from: a */
    private int m24637a(int i, char[] cArr, String str, AbstractC9345a abstractC9345a) {
        int i2;
        String str2;
        Object sh;
        if (abstractC9345a == 0) {
            int i3 = this.f31988a[i] & 255;
            return i3 != 64 ? i3 != 91 ? i3 != 101 ? i + 3 : i + 5 : m24636a(i + 1, cArr, false, (AbstractC9345a) null) : m24636a(i + 3, cArr, true, (AbstractC9345a) null);
        }
        int i4 = i + 1;
        int i5 = this.f31988a[i] & 255;
        if (i5 != 64) {
            if (i5 != 70) {
                if (i5 != 83) {
                    if (i5 == 99) {
                        str2 = C9364t.m24510a(m24638a(i4, cArr));
                    } else if (i5 == 101) {
                        abstractC9345a.mo24660a(str, m24638a(i4, cArr), m24638a(i4 + 2, cArr));
                        i2 = i4 + 4;
                    } else if (i5 == 115) {
                        str2 = m24638a(i4, cArr);
                    } else if (i5 != 73 && i5 != 74) {
                        if (i5 == 90) {
                            str2 = m24625c(this.f31989b[m24628b(i4)]) == 0 ? Boolean.FALSE : Boolean.TRUE;
                        } else if (i5 != 91) {
                            switch (i5) {
                                case 66:
                                    sh = new Byte((byte) m24625c(this.f31989b[m24628b(i4)]));
                                    break;
                                case 67:
                                    sh = new Character((char) m24625c(this.f31989b[m24628b(i4)]));
                                    break;
                                case 68:
                                    break;
                                default:
                                    i2 = i4;
                                    break;
                            }
                        } else {
                            int m24628b = m24628b(i4);
                            int i6 = i4 + 2;
                            if (m24628b == 0) {
                                return m24636a(i6 - 2, cArr, false, abstractC9345a.mo24663a(str));
                            }
                            int i7 = i6 + 1;
                            int i8 = this.f31988a[i6] & 255;
                            if (i8 == 70) {
                                float[] fArr = new float[m24628b];
                                for (int i9 = 0; i9 < m24628b; i9++) {
                                    fArr[i9] = Float.intBitsToFloat(m24625c(this.f31989b[m24628b(i7)]));
                                    i7 += 3;
                                }
                                abstractC9345a.mo24662a(str, fArr);
                            } else if (i8 == 83) {
                                short[] sArr = new short[m24628b];
                                for (int i10 = 0; i10 < m24628b; i10++) {
                                    sArr[i10] = (short) m24625c(this.f31989b[m24628b(i7)]);
                                    i7 += 3;
                                }
                                abstractC9345a.mo24662a(str, sArr);
                            } else if (i8 == 90) {
                                boolean[] zArr = new boolean[m24628b];
                                for (int i11 = 0; i11 < m24628b; i11++) {
                                    zArr[i11] = m24625c(this.f31989b[m24628b(i7)]) != 0;
                                    i7 += 3;
                                }
                                abstractC9345a.mo24662a(str, zArr);
                            } else if (i8 == 73) {
                                int[] iArr = new int[m24628b];
                                for (int i12 = 0; i12 < m24628b; i12++) {
                                    iArr[i12] = m24625c(this.f31989b[m24628b(i7)]);
                                    i7 += 3;
                                }
                                abstractC9345a.mo24662a(str, iArr);
                            } else if (i8 != 74) {
                                switch (i8) {
                                    case 66:
                                        byte[] bArr = new byte[m24628b];
                                        for (int i13 = 0; i13 < m24628b; i13++) {
                                            bArr[i13] = (byte) m24625c(this.f31989b[m24628b(i7)]);
                                            i7 += 3;
                                        }
                                        abstractC9345a.mo24662a(str, bArr);
                                        break;
                                    case 67:
                                        char[] cArr2 = new char[m24628b];
                                        for (int i14 = 0; i14 < m24628b; i14++) {
                                            cArr2[i14] = (char) m24625c(this.f31989b[m24628b(i7)]);
                                            i7 += 3;
                                        }
                                        abstractC9345a.mo24662a(str, cArr2);
                                        break;
                                    case 68:
                                        double[] dArr = new double[m24628b];
                                        for (int i15 = 0; i15 < m24628b; i15++) {
                                            dArr[i15] = Double.longBitsToDouble(m24623d(this.f31989b[m24628b(i7)]));
                                            i7 += 3;
                                        }
                                        abstractC9345a.mo24662a(str, dArr);
                                        break;
                                    default:
                                        i2 = m24636a(i7 - 3, cArr, false, abstractC9345a.mo24663a(str));
                                        break;
                                }
                            } else {
                                long[] jArr = new long[m24628b];
                                for (int i16 = 0; i16 < m24628b; i16++) {
                                    jArr[i16] = m24623d(this.f31989b[m24628b(i7)]);
                                    i7 += 3;
                                }
                                abstractC9345a.mo24662a(str, jArr);
                            }
                            i2 = i7 - 1;
                        }
                    }
                    abstractC9345a.mo24662a(str, str2);
                    i2 = i4 + 2;
                } else {
                    sh = new Short((short) m24625c(this.f31989b[m24628b(i4)]));
                }
                abstractC9345a.mo24662a(str, sh);
                i2 = i4 + 2;
            }
            str2 = m24624c(m24628b(i4), cArr);
            abstractC9345a.mo24662a(str, str2);
            i2 = i4 + 2;
        } else {
            i2 = m24636a(i4 + 2, cArr, true, abstractC9345a.mo24661a(str, m24638a(i4, cArr)));
        }
        return i2;
    }

    /* renamed from: a */
    private int m24636a(int i, char[] cArr, boolean z, AbstractC9345a abstractC9345a) {
        int i2;
        int m24628b = m24628b(i);
        int i3 = i + 2;
        int i4 = m24628b;
        int i5 = i3;
        if (!z) {
            while (true) {
                i2 = i5;
                if (i4 <= 0) {
                    break;
                }
                i5 = m24637a(i5, cArr, (String) null, abstractC9345a);
                i4--;
            }
        } else {
            int i6 = i3;
            int i7 = m24628b;
            while (true) {
                i2 = i6;
                if (i7 <= 0) {
                    break;
                }
                i6 = m24637a(i6 + 2, cArr, m24638a(i6, cArr), abstractC9345a);
                i7--;
            }
        }
        if (abstractC9345a != null) {
            abstractC9345a.mo24666a();
        }
        return i2;
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x0149  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x014f  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private int m24633a(com.esotericsoftware.p273a.C9352h r7, int r8) {
        /*
            Method dump skipped, instructions count: 365
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.esotericsoftware.p273a.C9349e.m24633a(com.esotericsoftware.a.h, int):int");
    }

    /* renamed from: a */
    private int m24629a(Object[] objArr, int i, int i2, char[] cArr, C9360p[] c9360pArr) {
        int i3;
        int i4 = i2 + 1;
        switch (this.f31988a[i2] & 255) {
            case 0:
                objArr[i] = AbstractC9363s.f32164a;
                i3 = i4;
                break;
            case 1:
                objArr[i] = AbstractC9363s.f32165b;
                i3 = i4;
                break;
            case 2:
                objArr[i] = AbstractC9363s.f32166c;
                i3 = i4;
                break;
            case 3:
                objArr[i] = AbstractC9363s.f32167d;
                i3 = i4;
                break;
            case 4:
                objArr[i] = AbstractC9363s.f32168e;
                i3 = i4;
                break;
            case 5:
                objArr[i] = AbstractC9363s.f32169f;
                i3 = i4;
                break;
            case 6:
                objArr[i] = AbstractC9363s.f32170g;
                i3 = i4;
                break;
            case 7:
                objArr[i] = m24627b(i4, cArr);
                i3 = i4 + 2;
                break;
            default:
                objArr[i] = m24635a(m24628b(i4), c9360pArr);
                i3 = i4 + 2;
                break;
        }
        return i3;
    }

    /* renamed from: a */
    private C9347c m24630a(C9347c[] c9347cArr, String str, int i, int i2) {
        C9347c c9347c;
        int i3 = 0;
        while (true) {
            if (i3 >= c9347cArr.length) {
                c9347c = new C9347c(str);
                break;
            } else if (c9347cArr[i3].f31983a.equals(str)) {
                c9347c = c9347cArr[i3];
                break;
            } else {
                i3++;
            }
        }
        return c9347c.m24656a(this, i, i2);
    }

    /* renamed from: a */
    private static C9360p m24635a(int i, C9360p[] c9360pArr) {
        if (c9360pArr[i] == null) {
            c9360pArr[i] = new C9360p();
        }
        return c9360pArr[i];
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0025, code lost:
        if (r9 >= r8.length) goto L13;
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x0028, code lost:
        r11 = new byte[r9];
        java.lang.System.arraycopy(r8, 0, r11, 0, r9);
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x0037, code lost:
        if (r7 == false) goto L16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x003a, code lost:
        r6.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0040, code lost:
        return r11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x001f, code lost:
        r11 = r8;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static byte[] m24631a(java.io.InputStream r6, boolean r7) throws java.io.IOException {
        /*
            r0 = r6
            if (r0 == 0) goto L96
            r0 = r6
            int r0 = r0.available()     // Catch: java.lang.Throwable -> L8b
            byte[] r0 = new byte[r0]     // Catch: java.lang.Throwable -> L8b
            r8 = r0
            r0 = 0
            r9 = r0
        Ld:
            r0 = r6
            r1 = r8
            r2 = r9
            r3 = r8
            int r3 = r3.length     // Catch: java.lang.Throwable -> L8b
            r4 = r9
            int r3 = r3 - r4
            int r0 = r0.read(r1, r2, r3)     // Catch: java.lang.Throwable -> L8b
            r10 = r0
            r0 = r10
            r1 = -1
            if (r0 != r1) goto L41
            r0 = r8
            r11 = r0
            r0 = r9
            r1 = r8
            int r1 = r1.length     // Catch: java.lang.Throwable -> L8b
            if (r0 >= r1) goto L36
            r0 = r9
            byte[] r0 = new byte[r0]     // Catch: java.lang.Throwable -> L8b
            r11 = r0
            r0 = r8
            r1 = 0
            r2 = r11
            r3 = 0
            r4 = r9
            java.lang.System.arraycopy(r0, r1, r2, r3, r4)     // Catch: java.lang.Throwable -> L8b
        L36:
            r0 = r7
            if (r0 == 0) goto L3e
            r0 = r6
            r0.close()
        L3e:
            r0 = r11
            return r0
        L41:
            r0 = r9
            r1 = r10
            int r0 = r0 + r1
            r10 = r0
            r0 = r10
            r9 = r0
            r0 = r10
            r1 = r8
            int r1 = r1.length     // Catch: java.lang.Throwable -> L8b
            if (r0 != r1) goto Ld
            r0 = r6
            int r0 = r0.read()     // Catch: java.lang.Throwable -> L8b
            r9 = r0
            r0 = r9
            if (r0 >= 0) goto L64
            r0 = r7
            if (r0 == 0) goto L62
            r0 = r6
            r0.close()
        L62:
            r0 = r8
            return r0
        L64:
            r0 = r8
            int r0 = r0.length     // Catch: java.lang.Throwable -> L8b
            r1 = 1000(0x3e8, float:1.401E-42)
            int r0 = r0 + r1
            byte[] r0 = new byte[r0]     // Catch: java.lang.Throwable -> L8b
            r11 = r0
            r0 = r8
            r1 = 0
            r2 = r11
            r3 = 0
            r4 = r10
            java.lang.System.arraycopy(r0, r1, r2, r3, r4)     // Catch: java.lang.Throwable -> L8b
            r0 = r11
            r1 = r10
            r2 = r9
            byte r2 = (byte) r2
            byte r2 = (byte) r2
            r0[r1] = r2
            r0 = r10
            r1 = 1
            int r0 = r0 + r1
            r9 = r0
            r0 = r11
            r8 = r0
            goto Ld
        L8b:
            r8 = move-exception
            r0 = r7
            if (r0 == 0) goto L94
            r0 = r6
            r0.close()
        L94:
            r0 = r8
            throw r0
        L96:
            java.io.IOException r0 = new java.io.IOException
            r1 = r0
            java.lang.String r2 = "Class not found"
            r1.<init>(r2)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.esotericsoftware.p273a.C9349e.m24631a(java.io.InputStream, boolean):byte[]");
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x00fe  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x013c  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private int[] m24632a(com.esotericsoftware.p273a.AbstractC9361q r12, com.esotericsoftware.p273a.C9352h r13, int r14, boolean r15) {
        /*
            Method dump skipped, instructions count: 342
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.esotericsoftware.p273a.C9349e.m24632a(com.esotericsoftware.a.q, com.esotericsoftware.a.h, int, boolean):int[]");
    }

    /* renamed from: b */
    private void m24626b(AbstractC9361q abstractC9361q, C9352h c9352h, int i, boolean z) {
        int i2 = i + 1;
        int i3 = this.f31988a[i] & 255;
        int length = C9364t.m24500d(c9352h.f32041g).length - i3;
        int i4 = 0;
        while (i4 < length) {
            AbstractC9345a mo24545a = abstractC9361q.mo24545a(i4, "Ljava/lang/Synthetic;", false);
            if (mo24545a != null) {
                mo24545a.mo24666a();
            }
            i4++;
        }
        char[] cArr = c9352h.f32037c;
        int i5 = i2;
        for (int i6 = i4; i6 < i3 + length; i6++) {
            i5 += 2;
            for (int m24628b = m24628b(i5); m24628b > 0; m24628b--) {
                i5 = m24636a(i5 + 2, cArr, true, abstractC9361q.mo24545a(i6, m24638a(i5, cArr), z));
            }
        }
    }

    /* renamed from: e */
    private short m24622e(int i) {
        byte[] bArr = this.f31988a;
        return (short) ((bArr[i + 1] & 255) | ((bArr[i] & 255) << 8));
    }

    /* renamed from: a */
    public final int m24642a() {
        int i = this.f31992e;
        int m24628b = i + 8 + (m24628b(i + 6) * 2);
        for (int m24628b2 = m24628b(m24628b); m24628b2 > 0; m24628b2--) {
            for (int m24628b3 = m24628b(m24628b + 8); m24628b3 > 0; m24628b3--) {
                m24628b += m24625c(m24628b + 12) + 6;
            }
            m24628b += 8;
        }
        int i2 = m24628b + 2;
        for (int m24628b4 = m24628b(i2); m24628b4 > 0; m24628b4--) {
            for (int m24628b5 = m24628b(i2 + 8); m24628b5 > 0; m24628b5--) {
                i2 += m24625c(i2 + 12) + 6;
            }
            i2 += 8;
        }
        return i2 + 2;
    }

    /* renamed from: a */
    public final int m24641a(int i) {
        return this.f31988a[i] & 255;
    }

    /* renamed from: a */
    public final String m24640a(int i, int i2, char[] cArr) {
        byte[] bArr = this.f31988a;
        int i3 = 0;
        boolean z = false;
        char c = 0;
        int i4 = i;
        while (true) {
            int i5 = i4;
            if (i5 < i2 + i) {
                i4 = i5 + 1;
                byte b = bArr[i5];
                if (!z) {
                    int i6 = b & 255;
                    if (i6 < 128) {
                        cArr[i3] = (char) i6;
                        i3++;
                    } else if (i6 >= 224 || i6 <= 191) {
                        c = (char) (i6 & 15);
                        z = true;
                    } else {
                        c = (char) (i6 & 31);
                        z = true;
                    }
                } else if (z) {
                    cArr[i3] = (char) ((b & 63) | (c << 6));
                    i3++;
                    z = false;
                } else if (z) {
                    c = (char) ((b & 63) | (c << 6));
                    z = true;
                }
            } else {
                return new String(cArr, 0, i3);
            }
        }
    }

    /* renamed from: a */
    public final String m24638a(int i, char[] cArr) {
        int m24628b = m24628b(i);
        if (i == 0 || m24628b == 0) {
            return null;
        }
        String[] strArr = this.f31990c;
        String str = strArr[m24628b];
        if (str != null) {
            return str;
        }
        int i2 = this.f31989b[m24628b];
        String m24640a = m24640a(i2 + 2, m24628b(i2), cArr);
        strArr[m24628b] = m24640a;
        return m24640a;
    }

    /* JADX WARN: Code restructure failed: missing block: B:236:0x0be0, code lost:
        if (r0.f32144g == 0) goto L245;
     */
    /* JADX WARN: Removed duplicated region for block: B:562:0x1acd  */
    /* JADX WARN: Removed duplicated region for block: B:578:0x1b4b  */
    /* JADX WARN: Removed duplicated region for block: B:773:0x1b3e A[ADDED_TO_REGION, SYNTHETIC] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m24634a(com.esotericsoftware.p273a.AbstractC9350f r15) {
        /*
            Method dump skipped, instructions count: 7706
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.esotericsoftware.p273a.C9349e.m24634a(com.esotericsoftware.a.f):void");
    }

    /* renamed from: b */
    public final int m24628b(int i) {
        byte[] bArr = this.f31988a;
        return (bArr[i + 1] & 255) | ((bArr[i] & 255) << 8);
    }

    /* renamed from: b */
    public final String m24627b(int i, char[] cArr) {
        return m24638a(this.f31989b[m24628b(i)], cArr);
    }

    /* renamed from: c */
    public final int m24625c(int i) {
        byte[] bArr = this.f31988a;
        return (bArr[i + 3] & 255) | ((bArr[i] & 255) << 24) | ((bArr[i + 1] & 255) << 16) | ((bArr[i + 2] & 255) << 8);
    }

    /* renamed from: c */
    public final Object m24624c(int i, char[] cArr) {
        int i2 = this.f31989b[i];
        byte b = this.f31988a[i2 - 1];
        if (b != 16) {
            switch (b) {
                case 3:
                    return new Integer(m24625c(i2));
                case 4:
                    return new Float(Float.intBitsToFloat(m24625c(i2)));
                case 5:
                    return new Long(m24623d(i2));
                case 6:
                    return new Double(Double.longBitsToDouble(m24623d(i2)));
                case 7:
                    return C9364t.m24504b(m24638a(i2, cArr));
                case 8:
                    return m24638a(i2, cArr);
                default:
                    int m24641a = m24641a(i2);
                    int[] iArr = this.f31989b;
                    int i3 = iArr[m24628b(i2 + 1)];
                    boolean z = this.f31988a[i3 - 1] == 11;
                    String m24627b = m24627b(i3, cArr);
                    int i4 = iArr[m24628b(i3 + 2)];
                    return new C9357m(m24641a, m24627b, m24638a(i4, cArr), m24638a(i4 + 2, cArr), z);
            }
        }
        return C9364t.m24502c(m24638a(i2, cArr));
    }

    /* renamed from: d */
    public final long m24623d(int i) {
        return (m24625c(i) << 32) | (m24625c(i + 4) & 4294967295L);
    }
}
