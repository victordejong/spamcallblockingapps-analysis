package com.esotericsoftware.a;

import java.io.IOException;
import java.io.InputStream;
/* loaded from: classes2-dex2jar.jar:com/esotericsoftware/a/e.class */
public final class e {

    /* renamed from: a  reason: collision with root package name */
    public final byte[] f18889a;

    /* renamed from: b  reason: collision with root package name */
    final int[] f18890b;

    /* renamed from: c  reason: collision with root package name */
    final String[] f18891c;

    /* renamed from: d  reason: collision with root package name */
    final int f18892d;
    public final int e;

    public e(InputStream inputStream) throws IOException {
        this(a(inputStream, false));
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public e(java.lang.String r6) throws java.io.IOException {
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
            byte[] r1 = a(r1, r2)
            r0.<init>(r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.esotericsoftware.a.e.<init>(java.lang.String):void");
    }

    public e(byte[] bArr) {
        this(bArr, 0, bArr.length);
    }

    public e(byte[] bArr, int i, int i2) {
        int i3;
        int i4;
        this.f18889a = bArr;
        if (e(i + 6) <= 52) {
            int[] iArr = new int[b(i + 8)];
            this.f18890b = iArr;
            int length = iArr.length;
            this.f18891c = new String[length];
            int i5 = 0;
            int i6 = i + 10;
            int i7 = 1;
            while (i7 < length) {
                int i8 = i6 + 1;
                this.f18890b[i7] = i8;
                byte b2 = bArr[i6];
                if (b2 == 1) {
                    int b3 = b(i8) + 3;
                    i5 = i5;
                    i3 = i7;
                    i4 = b3;
                    if (b3 > i5) {
                        i5 = b3;
                        i4 = b3;
                        i3 = i7;
                    }
                } else if (b2 != 15) {
                    i5 = i5;
                    i3 = i7;
                    i4 = 5;
                    if (b2 != 18) {
                        i5 = i5;
                        i3 = i7;
                        i4 = 5;
                        if (b2 != 3) {
                            i5 = i5;
                            i3 = i7;
                            i4 = 5;
                            if (b2 != 4) {
                                if (b2 == 5 || b2 == 6) {
                                    i4 = 9;
                                    i3 = i7 + 1;
                                    i5 = i5;
                                } else {
                                    i5 = i5;
                                    i3 = i7;
                                    i4 = 5;
                                    switch (b2) {
                                        case 9:
                                        case 10:
                                        case 11:
                                        case 12:
                                            break;
                                        default:
                                            i4 = 3;
                                            i5 = i5;
                                            i3 = i7;
                                            continue;
                                    }
                                }
                            }
                        }
                    }
                } else {
                    i4 = 4;
                    i5 = i5;
                    i3 = i7;
                }
                i6 += i4;
                i7 = i3 + 1;
            }
            this.f18892d = i5;
            this.e = i6;
            return;
        }
        throw new IllegalArgumentException();
    }

    private int a(int i, boolean z, boolean z2, h hVar) {
        int i2;
        int i3;
        char[] cArr = hVar.f18899c;
        p[] pVarArr = hVar.h;
        if (z) {
            i3 = this.f18889a[i] & 255;
            i2 = i + 1;
        } else {
            hVar.k = -1;
            i2 = i;
            i3 = 255;
        }
        hVar.q = 0;
        if (i3 < 64) {
            hVar.o = 3;
            hVar.s = 0;
        } else if (i3 < 128) {
            i3 -= 64;
            i2 = a(hVar.t, 0, i2, cArr, pVarArr);
            hVar.o = 4;
            hVar.s = 1;
        } else {
            i3 = b(i2);
            int i4 = i2 + 2;
            if (i3 == 247) {
                i2 = a(hVar.t, 0, i4, cArr, pVarArr);
                hVar.o = 4;
                hVar.s = 1;
            } else {
                if (i3 < 248 || i3 >= 251) {
                    if (i3 != 251) {
                        if (i3 >= 255) {
                            hVar.o = 0;
                            int b2 = b(i4);
                            int i5 = i4 + 2;
                            hVar.q = b2;
                            hVar.p = b2;
                            int i6 = 0;
                            while (b2 > 0) {
                                i5 = a(hVar.r, i6, i5, cArr, pVarArr);
                                b2--;
                                i6++;
                            }
                            int b3 = b(i5);
                            int i7 = i5 + 2;
                            hVar.s = b3;
                            int i8 = 0;
                            while (true) {
                                i2 = i7;
                                if (b3 <= 0) {
                                    break;
                                }
                                i7 = a(hVar.t, i8, i7, cArr, pVarArr);
                                b3--;
                                i8++;
                            }
                        } else {
                            int i9 = z2 ? hVar.p : 0;
                            int i10 = i3 - 251;
                            int i11 = i10;
                            i2 = i4;
                            while (i11 > 0) {
                                i2 = a(hVar.r, i9, i2, cArr, pVarArr);
                                i11--;
                                i9++;
                            }
                            hVar.o = 1;
                            hVar.q = i10;
                            hVar.p += hVar.q;
                        }
                    } else {
                        hVar.o = 3;
                        i2 = i4;
                    }
                } else {
                    hVar.o = 2;
                    hVar.q = 251 - i3;
                    hVar.p -= hVar.q;
                    i2 = i4;
                }
                hVar.s = 0;
            }
        }
        hVar.k += i3 + 1;
        a(hVar.k, pVarArr);
        return i2;
    }

    private int a(int i, char[] cArr, String str, a aVar) {
        int i2;
        Object obj;
        Object sh;
        if (aVar == null) {
            int i3 = this.f18889a[i] & 255;
            return i3 != 64 ? i3 != 91 ? i3 != 101 ? i + 3 : i + 5 : a(i + 1, cArr, false, (a) null) : a(i + 3, cArr, true, (a) null);
        }
        int i4 = i + 1;
        int i5 = this.f18889a[i] & 255;
        if (i5 != 64) {
            if (i5 != 70) {
                if (i5 != 83) {
                    if (i5 == 99) {
                        obj = t.a(a(i4, cArr));
                    } else if (i5 == 101) {
                        aVar.a(str, a(i4, cArr), a(i4 + 2, cArr));
                        i2 = i4 + 4;
                    } else if (i5 == 115) {
                        obj = a(i4, cArr);
                    } else if (!(i5 == 73 || i5 == 74)) {
                        if (i5 == 90) {
                            obj = c(this.f18890b[b(i4)]) == 0 ? Boolean.FALSE : Boolean.TRUE;
                        } else if (i5 != 91) {
                            switch (i5) {
                                case 66:
                                    sh = new Byte((byte) c(this.f18890b[b(i4)]));
                                    break;
                                case 67:
                                    sh = new Character((char) c(this.f18890b[b(i4)]));
                                    break;
                                case 68:
                                    break;
                                default:
                                    i2 = i4;
                                    break;
                            }
                        } else {
                            int b2 = b(i4);
                            int i6 = i4 + 2;
                            if (b2 == 0) {
                                return a(i6 - 2, cArr, false, aVar.a(str));
                            }
                            int i7 = i6 + 1;
                            int i8 = this.f18889a[i6] & 255;
                            if (i8 == 70) {
                                float[] fArr = new float[b2];
                                for (int i9 = 0; i9 < b2; i9++) {
                                    fArr[i9] = Float.intBitsToFloat(c(this.f18890b[b(i7)]));
                                    i7 += 3;
                                }
                                aVar.a(str, fArr);
                            } else if (i8 == 83) {
                                short[] sArr = new short[b2];
                                for (int i10 = 0; i10 < b2; i10++) {
                                    sArr[i10] = (short) c(this.f18890b[b(i7)]);
                                    i7 += 3;
                                }
                                aVar.a(str, sArr);
                            } else if (i8 == 90) {
                                boolean[] zArr = new boolean[b2];
                                for (int i11 = 0; i11 < b2; i11++) {
                                    zArr[i11] = c(this.f18890b[b(i7)]) != 0;
                                    i7 += 3;
                                }
                                aVar.a(str, zArr);
                            } else if (i8 == 73) {
                                int[] iArr = new int[b2];
                                for (int i12 = 0; i12 < b2; i12++) {
                                    iArr[i12] = c(this.f18890b[b(i7)]);
                                    i7 += 3;
                                }
                                aVar.a(str, iArr);
                            } else if (i8 != 74) {
                                switch (i8) {
                                    case 66:
                                        byte[] bArr = new byte[b2];
                                        for (int i13 = 0; i13 < b2; i13++) {
                                            bArr[i13] = (byte) c(this.f18890b[b(i7)]);
                                            i7 += 3;
                                        }
                                        aVar.a(str, bArr);
                                        break;
                                    case 67:
                                        char[] cArr2 = new char[b2];
                                        for (int i14 = 0; i14 < b2; i14++) {
                                            cArr2[i14] = (char) c(this.f18890b[b(i7)]);
                                            i7 += 3;
                                        }
                                        aVar.a(str, cArr2);
                                        break;
                                    case 68:
                                        double[] dArr = new double[b2];
                                        for (int i15 = 0; i15 < b2; i15++) {
                                            dArr[i15] = Double.longBitsToDouble(d(this.f18890b[b(i7)]));
                                            i7 += 3;
                                        }
                                        aVar.a(str, dArr);
                                        break;
                                    default:
                                        i2 = a(i7 - 3, cArr, false, aVar.a(str));
                                        break;
                                }
                            } else {
                                long[] jArr = new long[b2];
                                for (int i16 = 0; i16 < b2; i16++) {
                                    jArr[i16] = d(this.f18890b[b(i7)]);
                                    i7 += 3;
                                }
                                aVar.a(str, jArr);
                            }
                            i2 = i7 - 1;
                        }
                    }
                    aVar.a(str, obj);
                    i2 = i4 + 2;
                } else {
                    sh = new Short((short) c(this.f18890b[b(i4)]));
                }
                aVar.a(str, sh);
                i2 = i4 + 2;
            }
            obj = c(b(i4), cArr);
            aVar.a(str, obj);
            i2 = i4 + 2;
        } else {
            i2 = a(i4 + 2, cArr, true, aVar.a(str, a(i4, cArr)));
        }
        return i2;
    }

    private int a(int i, char[] cArr, boolean z, a aVar) {
        int i2;
        int b2 = b(i);
        int i3 = i + 2;
        int i4 = b2;
        int i5 = i3;
        if (!z) {
            while (true) {
                i2 = i5;
                if (i4 <= 0) {
                    break;
                }
                i5 = a(i5, cArr, (String) null, aVar);
                i4--;
            }
        } else {
            int i6 = i3;
            int i7 = b2;
            while (true) {
                i2 = i6;
                if (i7 <= 0) {
                    break;
                }
                i6 = a(i6 + 2, cArr, a(i6, cArr), aVar);
                i7--;
            }
        }
        if (aVar != null) {
            aVar.a();
        }
        return i2;
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x0149  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x014f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private int a(com.esotericsoftware.a.h r7, int r8) {
        /*
            Method dump skipped, instructions count: 365
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.esotericsoftware.a.e.a(com.esotericsoftware.a.h, int):int");
    }

    private int a(Object[] objArr, int i, int i2, char[] cArr, p[] pVarArr) {
        int i3;
        int i4 = i2 + 1;
        switch (this.f18889a[i2] & 255) {
            case 0:
                objArr[i] = s.f18932a;
                i3 = i4;
                break;
            case 1:
                objArr[i] = s.f18933b;
                i3 = i4;
                break;
            case 2:
                objArr[i] = s.f18934c;
                i3 = i4;
                break;
            case 3:
                objArr[i] = s.f18935d;
                i3 = i4;
                break;
            case 4:
                objArr[i] = s.e;
                i3 = i4;
                break;
            case 5:
                objArr[i] = s.f;
                i3 = i4;
                break;
            case 6:
                objArr[i] = s.g;
                i3 = i4;
                break;
            case 7:
                objArr[i] = b(i4, cArr);
                i3 = i4 + 2;
                break;
            default:
                objArr[i] = a(b(i4), pVarArr);
                i3 = i4 + 2;
                break;
        }
        return i3;
    }

    private c a(c[] cVarArr, String str, int i, int i2) {
        c cVar;
        int i3 = 0;
        while (true) {
            if (i3 >= cVarArr.length) {
                cVar = new c(str);
                break;
            } else if (cVarArr[i3].f18884a.equals(str)) {
                cVar = cVarArr[i3];
                break;
            } else {
                i3++;
            }
        }
        return cVar.a(this, i, i2);
    }

    private static p a(int i, p[] pVarArr) {
        if (pVarArr[i] == null) {
            pVarArr[i] = new p();
        }
        return pVarArr[i];
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0025, code lost:
        if (r9 >= r8.length) goto L_0x0036;
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x0028, code lost:
        r11 = new byte[r9];
        java.lang.System.arraycopy(r8, 0, r11, 0, r9);
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0040, code lost:
        return r11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x001f, code lost:
        r11 = r8;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static byte[] a(java.io.InputStream r6, boolean r7) throws java.io.IOException {
        /*
            r0 = r6
            if (r0 == 0) goto L_0x0096
            r0 = r6
            int r0 = r0.available()     // Catch: all -> 0x008b
            byte[] r0 = new byte[r0]     // Catch: all -> 0x008b
            r8 = r0
            r0 = 0
            r9 = r0
        L_0x000d:
            r0 = r6
            r1 = r8
            r2 = r9
            r3 = r8
            int r3 = r3.length     // Catch: all -> 0x008b
            r4 = r9
            int r3 = r3 - r4
            int r0 = r0.read(r1, r2, r3)     // Catch: all -> 0x008b
            r10 = r0
            r0 = r10
            r1 = -1
            if (r0 != r1) goto L_0x0041
            r0 = r8
            r11 = r0
            r0 = r9
            r1 = r8
            int r1 = r1.length     // Catch: all -> 0x008b
            if (r0 >= r1) goto L_0x0036
            r0 = r9
            byte[] r0 = new byte[r0]     // Catch: all -> 0x008b
            r11 = r0
            r0 = r8
            r1 = 0
            r2 = r11
            r3 = 0
            r4 = r9
            java.lang.System.arraycopy(r0, r1, r2, r3, r4)     // Catch: all -> 0x008b
        L_0x0036:
            r0 = r7
            if (r0 == 0) goto L_0x003e
            r0 = r6
            r0.close()
        L_0x003e:
            r0 = r11
            return r0
        L_0x0041:
            r0 = r9
            r1 = r10
            int r0 = r0 + r1
            r10 = r0
            r0 = r10
            r9 = r0
            r0 = r10
            r1 = r8
            int r1 = r1.length     // Catch: all -> 0x008b
            if (r0 != r1) goto L_0x000d
            r0 = r6
            int r0 = r0.read()     // Catch: all -> 0x008b
            r9 = r0
            r0 = r9
            if (r0 >= 0) goto L_0x0064
            r0 = r7
            if (r0 == 0) goto L_0x0062
            r0 = r6
            r0.close()
        L_0x0062:
            r0 = r8
            return r0
        L_0x0064:
            r0 = r8
            int r0 = r0.length     // Catch: all -> 0x008b
            r1 = 1000(0x3e8, float:1.401E-42)
            int r0 = r0 + r1
            byte[] r0 = new byte[r0]     // Catch: all -> 0x008b
            r11 = r0
            r0 = r8
            r1 = 0
            r2 = r11
            r3 = 0
            r4 = r10
            java.lang.System.arraycopy(r0, r1, r2, r3, r4)     // Catch: all -> 0x008b
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
            goto L_0x000d
        L_0x008b:
            r8 = move-exception
            r0 = r7
            if (r0 == 0) goto L_0x0094
            r0 = r6
            r0.close()
        L_0x0094:
            r0 = r8
            throw r0
        L_0x0096:
            java.io.IOException r0 = new java.io.IOException
            r1 = r0
            java.lang.String r2 = "Class not found"
            r1.<init>(r2)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.esotericsoftware.a.e.a(java.io.InputStream, boolean):byte[]");
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x00fe  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x013c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private int[] a(com.esotericsoftware.a.q r12, com.esotericsoftware.a.h r13, int r14, boolean r15) {
        /*
            Method dump skipped, instructions count: 342
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.esotericsoftware.a.e.a(com.esotericsoftware.a.q, com.esotericsoftware.a.h, int, boolean):int[]");
    }

    private void b(q qVar, h hVar, int i, boolean z) {
        int i2 = i + 1;
        int i3 = this.f18889a[i] & 255;
        int length = t.d(hVar.g).length - i3;
        int i4 = 0;
        while (i4 < length) {
            a a2 = qVar.a(i4, "Ljava/lang/Synthetic;", false);
            if (a2 != null) {
                a2.a();
            }
            i4++;
        }
        char[] cArr = hVar.f18899c;
        for (int i5 = i4; i5 < i3 + length; i5++) {
            i2 += 2;
            for (int b2 = b(i2); b2 > 0; b2--) {
                i2 = a(i2 + 2, cArr, true, qVar.a(i5, a(i2, cArr), z));
            }
        }
    }

    private short e(int i) {
        byte[] bArr = this.f18889a;
        return (short) ((bArr[i + 1] & 255) | ((bArr[i] & 255) << 8));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final int a() {
        int i = this.e;
        int b2 = i + 8 + (b(i + 6) * 2);
        for (int b3 = b(b2); b3 > 0; b3--) {
            for (int b4 = b(b2 + 8); b4 > 0; b4--) {
                b2 += c(b2 + 12) + 6;
            }
            b2 += 8;
        }
        int i2 = b2 + 2;
        for (int b5 = b(i2); b5 > 0; b5--) {
            for (int b6 = b(i2 + 8); b6 > 0; b6--) {
                i2 += c(i2 + 12) + 6;
            }
            i2 += 8;
        }
        return i2 + 2;
    }

    public final int a(int i) {
        return this.f18889a[i] & 255;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final String a(int i, int i2, char[] cArr) {
        byte[] bArr = this.f18889a;
        int i3 = 0;
        char c2 = 0;
        char c3 = 0;
        int i4 = i;
        while (i4 < i2 + i) {
            i4++;
            byte b2 = bArr[i4];
            if (c2 == 0) {
                int i5 = b2 & 255;
                if (i5 < 128) {
                    cArr[i3] = (char) i5;
                    i3++;
                } else if (i5 >= 224 || i5 <= 191) {
                    c3 = (char) (i5 & 15);
                    c2 = 2;
                } else {
                    c3 = (char) (i5 & 31);
                    c2 = 1;
                }
            } else if (c2 == 1) {
                cArr[i3] = (char) ((b2 & 63) | (c3 << 6));
                i3++;
                c2 = 0;
            } else if (c2 == 2) {
                c3 = (char) ((b2 & 63) | (c3 << 6));
                c2 = 1;
            }
        }
        return new String(cArr, 0, i3);
    }

    public final String a(int i, char[] cArr) {
        int b2 = b(i);
        if (i == 0 || b2 == 0) {
            return null;
        }
        String[] strArr = this.f18891c;
        String str = strArr[b2];
        if (str != null) {
            return str;
        }
        int i2 = this.f18890b[b2];
        String a2 = a(i2 + 2, b(i2), cArr);
        strArr[b2] = a2;
        return a2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:236:0x0be0, code lost:
        if (r0.g == 0) goto L_0x0c22;
     */
    /* JADX WARN: Removed duplicated region for block: B:562:0x1acd  */
    /* JADX WARN: Removed duplicated region for block: B:568:0x1ae1  */
    /* JADX WARN: Removed duplicated region for block: B:578:0x1b4b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void a(com.esotericsoftware.a.f r15) {
        /*
            Method dump skipped, instructions count: 7706
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.esotericsoftware.a.e.a(com.esotericsoftware.a.f):void");
    }

    public final int b(int i) {
        byte[] bArr = this.f18889a;
        return (bArr[i + 1] & 255) | ((bArr[i] & 255) << 8);
    }

    public final String b(int i, char[] cArr) {
        return a(this.f18890b[b(i)], cArr);
    }

    public final int c(int i) {
        byte[] bArr = this.f18889a;
        return (bArr[i + 3] & 255) | ((bArr[i] & 255) << 24) | ((bArr[i + 1] & 255) << 16) | ((bArr[i + 2] & 255) << 8);
    }

    public final Object c(int i, char[] cArr) {
        int i2 = this.f18890b[i];
        byte b2 = this.f18889a[i2 - 1];
        if (b2 == 16) {
            return t.c(a(i2, cArr));
        }
        switch (b2) {
            case 3:
                return new Integer(c(i2));
            case 4:
                return new Float(Float.intBitsToFloat(c(i2)));
            case 5:
                return new Long(d(i2));
            case 6:
                return new Double(Double.longBitsToDouble(d(i2)));
            case 7:
                return t.b(a(i2, cArr));
            case 8:
                return a(i2, cArr);
            default:
                int a2 = a(i2);
                int[] iArr = this.f18890b;
                int i3 = iArr[b(i2 + 1)];
                boolean z = this.f18889a[i3 - 1] == 11;
                String b3 = b(i3, cArr);
                int i4 = iArr[b(i3 + 2)];
                return new m(a2, b3, a(i4, cArr), a(i4 + 2, cArr), z);
        }
    }

    public final long d(int i) {
        return (c(i) << 32) | (c(i + 4) & 4294967295L);
    }
}
