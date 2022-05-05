package p081h.p119d.p120a.p123r;

import androidx.media2.exoplayer.external.extractor.p007ts.AdtsReader;
/* renamed from: h.d.a.r.c */
/* loaded from: classes-dex2jar.jar:h/d/a/r/c.class */
public class C5803c {

    /* renamed from: a */
    public int f14640a;

    /* renamed from: b */
    public byte[] f14641b;

    /* renamed from: c */
    public int f14642c;

    /* renamed from: d */
    public int f14643d;

    /* renamed from: f */
    public int[] f14645f = new int[256];

    /* renamed from: g */
    public int[] f14646g = new int[256];

    /* renamed from: h */
    public int[] f14647h = new int[256];

    /* renamed from: i */
    public int[] f14648i = new int[32];

    /* renamed from: e */
    public int[][] f14644e = new int[256];

    /* JADX WARN: Type inference failed for: r1v12, types: [int[], int[][]] */
    public C5803c(byte[] bArr, int i, int i2) {
        this.f14641b = bArr;
        this.f14642c = i;
        this.f14643d = i2;
        for (int i3 = 0; i3 < 256; i3++) {
            int[][] iArr = this.f14644e;
            iArr[i3] = new int[4];
            int[] iArr2 = iArr[i3];
            int i4 = (i3 << 12) / 256;
            iArr2[2] = i4;
            iArr2[1] = i4;
            iArr2[0] = i4;
            this.f14647h[i3] = 256;
            this.f14646g[i3] = 0;
        }
    }

    /* renamed from: a */
    public int m24317a(int i, int i2, int i3) {
        int i4 = -1;
        int i5 = -1;
        int i6 = Integer.MAX_VALUE;
        int i7 = Integer.MAX_VALUE;
        for (int i8 = 0; i8 < 256; i8++) {
            int[] iArr = this.f14644e[i8];
            int i9 = iArr[0] - i;
            int i10 = i9;
            if (i9 < 0) {
                i10 = -i9;
            }
            int i11 = iArr[1] - i2;
            int i12 = i11;
            if (i11 < 0) {
                i12 = -i11;
            }
            int i13 = iArr[2] - i3;
            int i14 = i13;
            if (i13 < 0) {
                i14 = -i13;
            }
            int i15 = i10 + i12 + i14;
            i6 = i6;
            if (i15 < i6) {
                i4 = i8;
                i6 = i15;
            }
            int i16 = i15 - (this.f14646g[i8] >> 12);
            i7 = i7;
            if (i16 < i7) {
                i5 = i8;
                i7 = i16;
            }
            int[] iArr2 = this.f14647h;
            int i17 = iArr2[i8] >> 10;
            iArr2[i8] = iArr2[i8] - i17;
            int[] iArr3 = this.f14646g;
            iArr3[i8] = iArr3[i8] + (i17 << 10);
        }
        int[] iArr4 = this.f14647h;
        iArr4[i4] = iArr4[i4] + 64;
        int[] iArr5 = this.f14646g;
        iArr5[i4] = iArr5[i4] - 65536;
        return i5;
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:28:0x0113 -> B:24:0x00f9). Please submit an issue!!! */
    /* renamed from: a */
    public void m24316a(int i, int i2, int i3, int i4, int i5) {
        int i6 = i2 - i;
        int i7 = i6;
        if (i6 < -1) {
            i7 = -1;
        }
        int i8 = i2 + i;
        int i9 = i8;
        if (i8 > 256) {
            i9 = 256;
        }
        int i10 = i2 + 1;
        int i11 = i2 - 1;
        int i12 = 1;
        while (true) {
            if (i10 < i9 || i11 > i7) {
                int i13 = i12 + 1;
                int i14 = this.f14648i[i12];
                int i15 = i10;
                if (i10 < i9) {
                    int[] iArr = this.f14644e[i10];
                    try {
                        iArr[0] = iArr[0] - (((iArr[0] - i3) * i14) / 262144);
                        iArr[1] = iArr[1] - (((iArr[1] - i4) * i14) / 262144);
                        iArr[2] = iArr[2] - (((iArr[2] - i5) * i14) / 262144);
                    } catch (Exception e) {
                    }
                    i15 = i10 + 1;
                }
                if (i11 > i7) {
                    int[] iArr2 = this.f14644e[i11];
                    try {
                        iArr2[0] = iArr2[0] - (((iArr2[0] - i3) * i14) / 262144);
                        iArr2[1] = iArr2[1] - (((iArr2[1] - i4) * i14) / 262144);
                        iArr2[2] = iArr2[2] - ((i14 * (iArr2[2] - i5)) / 262144);
                    } catch (Exception e2) {
                    }
                    i11--;
                    i10 = i15;
                    i12 = i13;
                } else {
                    i10 = i15;
                    i12 = i13;
                }
            } else {
                return;
            }
        }
    }

    /* renamed from: a */
    public byte[] m24318a() {
        byte[] bArr = new byte[AdtsReader.MATCH_STATE_I];
        int[] iArr = new int[256];
        for (int i = 0; i < 256; i++) {
            iArr[this.f14644e[i][3]] = i;
        }
        int i2 = 0;
        int i3 = 0;
        while (i2 < 256) {
            int i4 = iArr[i2];
            int i5 = i3 + 1;
            int[][] iArr2 = this.f14644e;
            bArr[i3] = (byte) iArr2[i4][0];
            int i6 = i5 + 1;
            bArr[i5] = (byte) iArr2[i4][1];
            bArr[i6] = (byte) iArr2[i4][2];
            i2++;
            i3 = i6 + 1;
        }
        return bArr;
    }

    /* renamed from: b */
    public int m24314b(int i, int i2, int i3) {
        int i4 = this.f14645f[i2];
        int i5 = i4 - 1;
        int i6 = -1;
        int i7 = 1000;
        while (true) {
            if (i4 >= 256 && i5 < 0) {
                return i6;
            }
            int i8 = i4;
            int i9 = i6;
            int i10 = i7;
            if (i4 < 256) {
                int[] iArr = this.f14644e[i4];
                int i11 = iArr[1] - i2;
                if (i11 >= i7) {
                    i8 = 256;
                    i9 = i6;
                    i10 = i7;
                } else {
                    int i12 = i4 + 1;
                    int i13 = i11;
                    if (i11 < 0) {
                        i13 = -i11;
                    }
                    int i14 = iArr[0] - i;
                    int i15 = i14;
                    if (i14 < 0) {
                        i15 = -i14;
                    }
                    int i16 = i13 + i15;
                    i8 = i12;
                    i9 = i6;
                    i10 = i7;
                    if (i16 < i7) {
                        int i17 = iArr[2] - i3;
                        int i18 = i17;
                        if (i17 < 0) {
                            i18 = -i17;
                        }
                        int i19 = i16 + i18;
                        i8 = i12;
                        i9 = i6;
                        i10 = i7;
                        if (i19 < i7) {
                            i9 = iArr[3];
                            i10 = i19;
                            i8 = i12;
                        }
                    }
                }
            }
            i4 = i8;
            i6 = i9;
            i7 = i10;
            if (i5 >= 0) {
                int[] iArr2 = this.f14644e[i5];
                int i20 = i2 - iArr2[1];
                if (i20 >= i10) {
                    i5 = -1;
                    i4 = i8;
                    i6 = i9;
                    i7 = i10;
                } else {
                    int i21 = i5 - 1;
                    int i22 = i20;
                    if (i20 < 0) {
                        i22 = -i20;
                    }
                    int i23 = iArr2[0] - i;
                    int i24 = i23;
                    if (i23 < 0) {
                        i24 = -i23;
                    }
                    int i25 = i22 + i24;
                    i4 = i8;
                    i5 = i21;
                    i6 = i9;
                    i7 = i10;
                    if (i25 < i10) {
                        int i26 = iArr2[2] - i3;
                        int i27 = i26;
                        if (i26 < 0) {
                            i27 = -i26;
                        }
                        int i28 = i27 + i25;
                        i4 = i8;
                        i5 = i21;
                        i6 = i9;
                        i7 = i10;
                        if (i28 < i10) {
                            i6 = iArr2[3];
                            i7 = i28;
                            i4 = i8;
                            i5 = i21;
                        }
                    }
                }
            }
        }
    }

    /* renamed from: b */
    public void m24315b() {
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        while (i < 256) {
            int[] iArr = this.f14644e[i];
            int i4 = iArr[1];
            int i5 = i + 1;
            int i6 = i;
            for (int i7 = i5; i7 < 256; i7++) {
                int[] iArr2 = this.f14644e[i7];
                i4 = i4;
                if (iArr2[1] < i4) {
                    i4 = iArr2[1];
                    i6 = i7;
                }
            }
            int[] iArr3 = this.f14644e[i6];
            if (i != i6) {
                int i8 = iArr3[0];
                iArr3[0] = iArr[0];
                iArr[0] = i8;
                int i9 = iArr3[1];
                iArr3[1] = iArr[1];
                iArr[1] = i9;
                int i10 = iArr3[2];
                iArr3[2] = iArr[2];
                iArr[2] = i10;
                int i11 = iArr3[3];
                iArr3[3] = iArr[3];
                iArr[3] = i11;
            }
            i2 = i2;
            i3 = i3;
            if (i4 != i2) {
                this.f14645f[i2] = (i3 + i) >> 1;
                while (true) {
                    i2++;
                    if (i2 >= i4) {
                        break;
                    }
                    this.f14645f[i2] = i;
                }
                i3 = i;
                i2 = i4;
            }
            i = i5;
        }
        this.f14645f[i2] = (i3 + 255) >> 1;
        for (int i12 = i2 + 1; i12 < 256; i12++) {
            this.f14645f[i12] = 255;
        }
    }

    /* renamed from: b */
    public void m24313b(int i, int i2, int i3, int i4, int i5) {
        int[] iArr = this.f14644e[i2];
        iArr[0] = iArr[0] - (((iArr[0] - i3) * i) / 1024);
        iArr[1] = iArr[1] - (((iArr[1] - i4) * i) / 1024);
        iArr[2] = iArr[2] - ((i * (iArr[2] - i5)) / 1024);
    }

    /* renamed from: c */
    public void m24312c() {
        if (this.f14642c < 1509) {
            this.f14643d = 1;
        }
        int i = this.f14643d;
        this.f14640a = ((i - 1) / 3) + 30;
        byte[] bArr = this.f14641b;
        int i2 = this.f14642c;
        int i3 = i2 / (i * 3);
        int i4 = i3 / 100;
        for (int i5 = 0; i5 < 32; i5++) {
            this.f14648i[i5] = 1024 * (((1024 - (i5 * i5)) * 256) / 1024);
        }
        int i6 = this.f14642c;
        int i7 = i6 < 1509 ? 3 : i6 % 499 != 0 ? 1497 : i6 % 491 != 0 ? 1473 : i6 % 487 != 0 ? 1461 : 1509;
        int i8 = 0;
        int i9 = 0;
        int i10 = 1024;
        int i11 = 32;
        int i12 = 2048;
        while (i8 < i3) {
            int i13 = (bArr[i9 + 0] & 255) << 4;
            int i14 = (bArr[i9 + 1] & 255) << 4;
            int i15 = (bArr[i9 + 2] & 255) << 4;
            int a = m24317a(i13, i14, i15);
            m24313b(i10, a, i13, i14, i15);
            if (i11 != 0) {
                m24316a(i11, a, i13, i14, i15);
            }
            int i16 = i9 + i7;
            int i17 = i16;
            if (i16 >= i2) {
                i17 = i16 - this.f14642c;
            }
            int i18 = i8 + 1;
            int i19 = i4;
            if (i4 == 0) {
                i19 = 1;
            }
            i8 = i18;
            i9 = i17;
            i4 = i19;
            if (i18 % i19 == 0) {
                i10 -= i10 / this.f14640a;
                int i20 = i12 - (i12 / 30);
                int i21 = i20 >> 6;
                int i22 = i21;
                if (i21 <= 1) {
                    i22 = 0;
                }
                for (int i23 = 0; i23 < i22; i23++) {
                    int i24 = i22 * i22;
                    this.f14648i[i23] = (((i24 - (i23 * i23)) * 256) / i24) * i10;
                }
                i8 = i18;
                i9 = i17;
                i11 = i22;
                i4 = i19;
                i12 = i20;
            }
        }
    }

    /* renamed from: d */
    public byte[] m24311d() {
        m24312c();
        m24310e();
        m24315b();
        return m24318a();
    }

    /* renamed from: e */
    public void m24310e() {
        for (int i = 0; i < 256; i++) {
            int[][] iArr = this.f14644e;
            int[] iArr2 = iArr[i];
            iArr2[0] = iArr2[0] >> 4;
            int[] iArr3 = iArr[i];
            iArr3[1] = iArr3[1] >> 4;
            int[] iArr4 = iArr[i];
            iArr4[2] = iArr4[2] >> 4;
            iArr[i][3] = i;
        }
    }
}
