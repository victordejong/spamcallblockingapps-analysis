package com.bumptech.glide.c;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/c/c.class */
final class c {

    /* renamed from: a  reason: collision with root package name */
    protected int f3387a;

    /* renamed from: b  reason: collision with root package name */
    protected byte[] f3388b;
    protected int c;
    protected int d;
    protected int[] f = new int[256];
    protected int[] g = new int[256];
    protected int[] h = new int[256];
    protected int[] i = new int[32];
    protected int[][] e = new int[256];

    /* JADX WARN: Type inference failed for: r1v12, types: [int[], int[][]] */
    public c(byte[] bArr, int i, int i2) {
        this.f3388b = bArr;
        this.c = i;
        this.d = i2;
        for (int i3 = 0; i3 < 256; i3++) {
            this.e[i3] = new int[4];
            int[] iArr = this.e[i3];
            int i4 = (i3 << 12) / 256;
            iArr[2] = i4;
            iArr[1] = i4;
            iArr[0] = i4;
            this.h[i3] = 256;
            this.g[i3] = 0;
        }
    }

    public final int a(int i, int i2, int i3) {
        int i4;
        int i5;
        int i6 = 1000;
        int i7 = this.f[i2];
        int i8 = -1;
        int i9 = i7 - 1;
        while (true) {
            if (i7 >= 256 && i9 < 0) {
                return i8;
            }
            if (i7 < 256) {
                int[] iArr = this.e[i7];
                int i10 = iArr[1] - i2;
                if (i10 >= i6) {
                    i5 = i8;
                    i4 = 256;
                } else {
                    int i11 = i7 + 1;
                    int i12 = i10;
                    if (i10 < 0) {
                        i12 = -i10;
                    }
                    int i13 = iArr[0] - i;
                    int i14 = i13;
                    if (i13 < 0) {
                        i14 = -i13;
                    }
                    int i15 = i14 + i12;
                    if (i15 < i6) {
                        int i16 = iArr[2] - i3;
                        int i17 = i16;
                        if (i16 < 0) {
                            i17 = -i16;
                        }
                        int i18 = i15 + i17;
                        if (i18 < i6) {
                            i5 = iArr[3];
                            i6 = i18;
                            i4 = i11;
                        }
                    }
                    i5 = i8;
                    i4 = i11;
                }
            } else {
                i4 = i7;
                i5 = i8;
            }
            i9 = i9;
            if (i9 >= 0) {
                int[] iArr2 = this.e[i9];
                int i19 = i2 - iArr2[1];
                if (i19 >= i6) {
                    i9 = -1;
                    i7 = i4;
                    i8 = i5;
                } else {
                    i9--;
                    int i20 = i19;
                    if (i19 < 0) {
                        i20 = -i19;
                    }
                    int i21 = iArr2[0] - i;
                    int i22 = i21;
                    if (i21 < 0) {
                        i22 = -i21;
                    }
                    int i23 = i22 + i20;
                    i9 = i9;
                    if (i23 < i6) {
                        int i24 = iArr2[2] - i3;
                        int i25 = i24;
                        if (i24 < 0) {
                            i25 = -i24;
                        }
                        int i26 = i25 + i23;
                        i9 = i9;
                        if (i26 < i6) {
                            i8 = iArr2[3];
                            i6 = i26;
                            i7 = i4;
                        }
                    }
                }
            }
            i7 = i4;
            i8 = i5;
        }
    }

    public final byte[] a() {
        byte[] bArr = new byte[768];
        int[] iArr = new int[256];
        for (int i = 0; i < 256; i++) {
            iArr[this.e[i][3]] = i;
        }
        int i2 = 0;
        for (int i3 = 0; i3 < 256; i3++) {
            int i4 = iArr[i3];
            int i5 = i2 + 1;
            bArr[i2] = (byte) this.e[i4][0];
            int i6 = i5 + 1;
            bArr[i5] = (byte) this.e[i4][1];
            i2 = i6 + 1;
            bArr[i6] = (byte) this.e[i4][2];
        }
        return bArr;
    }

    public final void b() {
        int i = 0;
        int i2 = 0;
        for (int i3 = 0; i3 < 256; i3++) {
            int[] iArr = this.e[i3];
            i2 = iArr[1];
            int i4 = i3;
            for (int i5 = i3 + 1; i5 < 256; i5++) {
                int[] iArr2 = this.e[i5];
                i2 = i2;
                if (iArr2[1] < i2) {
                    i2 = iArr2[1];
                    i4 = i5;
                }
            }
            int[] iArr3 = this.e[i4];
            if (i3 != i4) {
                int i6 = iArr3[0];
                iArr3[0] = iArr[0];
                iArr[0] = i6;
                int i7 = iArr3[1];
                iArr3[1] = iArr[1];
                iArr[1] = i7;
                int i8 = iArr3[2];
                iArr3[2] = iArr[2];
                iArr[2] = i8;
                int i9 = iArr3[3];
                iArr3[3] = iArr[3];
                iArr[3] = i9;
            }
            if (i2 != i2) {
                this.f[i2] = (i + i3) >> 1;
                while (true) {
                    i2++;
                    if (i2 >= i2) {
                        break;
                    }
                    this.f[i2] = i3;
                }
                i = i3;
            } else {
                i2 = i2;
                i = i;
            }
        }
        this.f[i2] = (i + 255) >> 1;
        for (int i10 = i2 + 1; i10 < 256; i10++) {
            this.f[i10] = 255;
        }
    }

    public final void c() {
        if (this.c < 1509) {
            this.d = 1;
        }
        this.f3387a = ((this.d - 1) / 3) + 30;
        byte[] bArr = this.f3388b;
        int i = this.c;
        int i2 = this.c / (this.d * 3);
        int i3 = i2 / 100;
        for (int i4 = 0; i4 < 32; i4++) {
            this.i[i4] = (((1024 - (i4 * i4)) * 256) / 1024) * 1024;
        }
        int i5 = this.c < 1509 ? 3 : this.c % 499 != 0 ? 1497 : this.c % 491 != 0 ? 1473 : this.c % 487 != 0 ? 1461 : 1509;
        int i6 = 0;
        int i7 = 1024;
        int i8 = 32;
        int i9 = 2048;
        int i10 = 0;
        while (i10 < i2) {
            int i11 = (bArr[i6 + 0] & 255) << 4;
            int i12 = (bArr[i6 + 1] & 255) << 4;
            int i13 = (bArr[i6 + 2] & 255) << 4;
            int i14 = Integer.MAX_VALUE;
            int i15 = Integer.MAX_VALUE;
            int i16 = -1;
            int i17 = -1;
            for (int i18 = 0; i18 < 256; i18++) {
                int[] iArr = this.e[i18];
                int i19 = iArr[0] - i11;
                int i20 = i19;
                if (i19 < 0) {
                    i20 = -i19;
                }
                int i21 = iArr[1] - i12;
                int i22 = i21;
                if (i21 < 0) {
                    i22 = -i21;
                }
                int i23 = iArr[2] - i13;
                int i24 = i23;
                if (i23 < 0) {
                    i24 = -i23;
                }
                int i25 = i22 + i20 + i24;
                if (i25 < i14) {
                    i14 = i25;
                    i16 = i18;
                }
                int i26 = i25 - (this.g[i18] >> 12);
                if (i26 < i15) {
                    i17 = i18;
                    i15 = i26;
                }
                int i27 = this.h[i18] >> 10;
                int[] iArr2 = this.h;
                iArr2[i18] = iArr2[i18] - i27;
                int[] iArr3 = this.g;
                iArr3[i18] = (i27 << 10) + iArr3[i18];
            }
            int[] iArr4 = this.h;
            iArr4[i16] = iArr4[i16] + 64;
            int[] iArr5 = this.g;
            iArr5[i16] = iArr5[i16] - 65536;
            int[] iArr6 = this.e[i17];
            iArr6[0] = iArr6[0] - (((iArr6[0] - i11) * i7) / 1024);
            iArr6[1] = iArr6[1] - (((iArr6[1] - i12) * i7) / 1024);
            iArr6[2] = iArr6[2] - (((iArr6[2] - i13) * i7) / 1024);
            if (i8 != 0) {
                int i28 = i17 - i8;
                if (i28 < -1) {
                    i28 = -1;
                }
                int i29 = i17 + i8;
                int i30 = i29;
                if (i29 > 256) {
                    i30 = 256;
                }
                int i31 = i17 - 1;
                int i32 = 1;
                int i33 = i17 + 1;
                while (true) {
                    if (i33 >= i30 && i31 <= i28) {
                        break;
                    }
                    int i34 = i32 + 1;
                    int i35 = this.i[i32];
                    int i36 = i33;
                    if (i33 < i30) {
                        int i37 = i33 + 1;
                        int[] iArr7 = this.e[i33];
                        try {
                            iArr7[0] = iArr7[0] - (((iArr7[0] - i11) * i35) / 262144);
                            iArr7[1] = iArr7[1] - (((iArr7[1] - i12) * i35) / 262144);
                            iArr7[2] = iArr7[2] - (((iArr7[2] - i13) * i35) / 262144);
                            i36 = i37;
                        } catch (Exception e) {
                            i36 = i37;
                        }
                    }
                    if (i31 > i28) {
                        int i38 = i31 - 1;
                        int[] iArr8 = this.e[i31];
                        try {
                            iArr8[0] = iArr8[0] - (((iArr8[0] - i11) * i35) / 262144);
                            iArr8[1] = iArr8[1] - (((iArr8[1] - i12) * i35) / 262144);
                            iArr8[2] = iArr8[2] - ((i35 * (iArr8[2] - i13)) / 262144);
                            i31 = i38;
                            i32 = i34;
                            i33 = i36;
                        } catch (Exception e2) {
                            i31 = i38;
                            i32 = i34;
                            i33 = i36;
                        }
                    } else {
                        i32 = i34;
                        i33 = i36;
                    }
                }
            }
            int i39 = i6 + i5;
            if (i39 >= i) {
                i39 -= this.c;
            }
            int i40 = i10 + 1;
            if (i3 == 0) {
                i3 = 1;
            }
            if (i40 % i3 == 0) {
                i7 -= i7 / this.f3387a;
                i9 -= i9 / 30;
                int i41 = i9 >> 6;
                int i42 = i41;
                if (i41 <= 1) {
                    i42 = 0;
                }
                for (int i43 = 0; i43 < i42; i43++) {
                    this.i[i43] = ((((i42 * i42) - (i43 * i43)) * 256) / (i42 * i42)) * i7;
                }
                i8 = i42;
                i10 = i40;
                i6 = i39;
            } else {
                i10 = i40;
                i6 = i39;
            }
        }
    }

    public final void d() {
        for (int i = 0; i < 256; i++) {
            int[] iArr = this.e[i];
            iArr[0] = iArr[0] >> 4;
            int[] iArr2 = this.e[i];
            iArr2[1] = iArr2[1] >> 4;
            int[] iArr3 = this.e[i];
            iArr3[2] = iArr3[2] >> 4;
            this.e[i][3] = i;
        }
    }
}
