package p193e.p1545k.p1546a.p1548b.p1552w;

import com.amazon.device.ads.DtbConstants;
import io.agora.rtc.Constants;
/* renamed from: e.k.a.b.w.g */
/* loaded from: classes2-dex2jar.jar:e/k/a/b/w/g.class */
public final class C23401g {

    /* renamed from: a */
    public static final String f64798a = String.valueOf(Integer.MIN_VALUE);

    /* renamed from: b */
    public static final String f64799b = String.valueOf(Long.MIN_VALUE);

    /* renamed from: c */
    public static final int[] f64800c = new int[1000];

    /* renamed from: d */
    public static final String[] f64801d;

    /* renamed from: e */
    public static final String[] f64802e;

    static {
        int i = 0;
        for (int i2 = 0; i2 < 10; i2++) {
            for (int i3 = 0; i3 < 10; i3++) {
                int i4 = 0;
                while (i4 < 10) {
                    f64800c[i] = ((i2 + 48) << 16) | ((i3 + 48) << 8) | (i4 + 48);
                    i4++;
                    i++;
                }
            }
        }
        f64801d = new String[]{DtbConstants.NETWORK_TYPE_UNKNOWN, "1", "2", "3", "4", "5", "6", "7", "8", "9", "10"};
        f64802e = new String[]{"-1", "-2", "-3", "-4", "-5", "-6", "-7", "-8", "-9", "-10"};
    }

    /* renamed from: a */
    public static int m7113a(int i, byte[] bArr, int i2) {
        int i3 = f64800c[i];
        int i4 = i2 + 1;
        bArr[i2] = (byte) (i3 >> 16);
        int i5 = i4 + 1;
        bArr[i4] = (byte) (i3 >> 8);
        bArr[i5] = (byte) i3;
        return i5 + 1;
    }

    /* renamed from: b */
    public static int m7112b(int i, char[] cArr, int i2) {
        int i3 = f64800c[i];
        int i4 = i2 + 1;
        cArr[i2] = (char) (i3 >> 16);
        int i5 = i4 + 1;
        cArr[i4] = (char) ((i3 >> 8) & Constants.ERR_WATERMARKR_INFO);
        cArr[i5] = (char) (i3 & Constants.ERR_WATERMARKR_INFO);
        return i5 + 1;
    }

    /* renamed from: c */
    public static int m7111c(int i, byte[] bArr, int i2) {
        int i3 = f64800c[i];
        int i4 = i2;
        if (i > 9) {
            int i5 = i2;
            if (i > 99) {
                bArr[i2] = (byte) (i3 >> 16);
                i5 = i2 + 1;
            }
            bArr[i5] = (byte) (i3 >> 8);
            i4 = i5 + 1;
        }
        bArr[i4] = (byte) i3;
        return i4 + 1;
    }

    /* renamed from: d */
    public static int m7110d(int i, char[] cArr, int i2) {
        int i3 = f64800c[i];
        int i4 = i2;
        if (i > 9) {
            int i5 = i2;
            if (i > 99) {
                cArr[i2] = (char) (i3 >> 16);
                i5 = i2 + 1;
            }
            cArr[i5] = (char) ((i3 >> 8) & Constants.ERR_WATERMARKR_INFO);
            i4 = i5 + 1;
        }
        cArr[i4] = (char) (i3 & Constants.ERR_WATERMARKR_INFO);
        return i4 + 1;
    }

    /* renamed from: e */
    public static int m7109e(int i, byte[] bArr, int i2) {
        int i3 = i / 1000;
        int i4 = i3 / 1000;
        int[] iArr = f64800c;
        int i5 = iArr[i4];
        int i6 = i2 + 1;
        bArr[i2] = (byte) (i5 >> 16);
        int i7 = i6 + 1;
        bArr[i6] = (byte) (i5 >> 8);
        int i8 = i7 + 1;
        bArr[i7] = (byte) i5;
        int i9 = iArr[i3 - (i4 * 1000)];
        int i10 = i8 + 1;
        bArr[i8] = (byte) (i9 >> 16);
        int i11 = i10 + 1;
        bArr[i10] = (byte) (i9 >> 8);
        int i12 = i11 + 1;
        bArr[i11] = (byte) i9;
        int i13 = iArr[i - (i3 * 1000)];
        int i14 = i12 + 1;
        bArr[i12] = (byte) (i13 >> 16);
        int i15 = i14 + 1;
        bArr[i14] = (byte) (i13 >> 8);
        bArr[i15] = (byte) i13;
        return i15 + 1;
    }

    /* renamed from: f */
    public static int m7108f(int i, char[] cArr, int i2) {
        int i3 = i / 1000;
        int i4 = i3 / 1000;
        int[] iArr = f64800c;
        int i5 = iArr[i4];
        int i6 = i2 + 1;
        cArr[i2] = (char) (i5 >> 16);
        int i7 = i6 + 1;
        cArr[i6] = (char) ((i5 >> 8) & Constants.ERR_WATERMARKR_INFO);
        int i8 = i7 + 1;
        cArr[i7] = (char) (i5 & Constants.ERR_WATERMARKR_INFO);
        int i9 = iArr[i3 - (i4 * 1000)];
        int i10 = i8 + 1;
        cArr[i8] = (char) (i9 >> 16);
        int i11 = i10 + 1;
        cArr[i10] = (char) ((i9 >> 8) & Constants.ERR_WATERMARKR_INFO);
        int i12 = i11 + 1;
        cArr[i11] = (char) (i9 & Constants.ERR_WATERMARKR_INFO);
        int i13 = iArr[i - (i3 * 1000)];
        int i14 = i12 + 1;
        cArr[i12] = (char) (i13 >> 16);
        int i15 = i14 + 1;
        cArr[i14] = (char) ((i13 >> 8) & Constants.ERR_WATERMARKR_INFO);
        cArr[i15] = (char) (i13 & Constants.ERR_WATERMARKR_INFO);
        return i15 + 1;
    }

    /* renamed from: g */
    public static boolean m7107g(double d) {
        return Double.isNaN(d) || Double.isInfinite(d);
    }

    /* renamed from: h */
    public static boolean m7106h(float f) {
        return Float.isNaN(f) || Float.isInfinite(f);
    }

    /* renamed from: i */
    public static int m7105i(int i, byte[] bArr, int i2) {
        int i3;
        int i4;
        int i5 = i;
        int i6 = i2;
        if (i < 0) {
            if (i == Integer.MIN_VALUE) {
                int length = f64798a.length();
                int i7 = 0;
                while (i7 < length) {
                    bArr[i2] = (byte) f64798a.charAt(i7);
                    i7++;
                    i2++;
                }
                return i2;
            }
            bArr[i2] = (byte) 45;
            i5 = -i;
            i6 = i2 + 1;
        }
        if (i5 < 1000000) {
            if (i5 >= 1000) {
                int i8 = i5 / 1000;
                i4 = m7113a(i5 - (i8 * 1000), bArr, m7111c(i8, bArr, i6));
            } else if (i5 < 10) {
                i4 = i6 + 1;
                bArr[i6] = (byte) (i5 + 48);
            } else {
                i4 = m7111c(i5, bArr, i6);
            }
            return i4;
        } else if (i5 < 1000000000) {
            int i9 = i5 / 1000;
            int i10 = i9 / 1000;
            return m7113a(i5 - (i9 * 1000), bArr, m7113a(i9 - (i10 * 1000), bArr, m7111c(i10, bArr, i6)));
        } else {
            int i11 = i5 - 1000000000;
            if (i11 >= 1000000000) {
                i11 -= 1000000000;
                i3 = i6 + 1;
                bArr[i6] = (byte) 50;
            } else {
                i3 = i6 + 1;
                bArr[i6] = (byte) 49;
            }
            return m7109e(i11, bArr, i3);
        }
    }

    /* renamed from: j */
    public static int m7104j(int i, char[] cArr, int i2) {
        int i3;
        int i4 = i;
        int i5 = i2;
        if (i < 0) {
            if (i == Integer.MIN_VALUE) {
                String str = f64798a;
                int length = str.length();
                str.getChars(0, length, cArr, i2);
                return length + i2;
            }
            cArr[i2] = (char) 45;
            i4 = -i;
            i5 = i2 + 1;
        }
        if (i4 < 1000000) {
            if (i4 >= 1000) {
                int i6 = i4 / 1000;
                return m7112b(i4 - (i6 * 1000), cArr, m7110d(i6, cArr, i5));
            } else if (i4 >= 10) {
                return m7110d(i4, cArr, i5);
            } else {
                cArr[i5] = (char) (i4 + 48);
                return i5 + 1;
            }
        } else if (i4 < 1000000000) {
            int i7 = i4 / 1000;
            int i8 = i7 / 1000;
            return m7112b(i4 - (i7 * 1000), cArr, m7112b(i7 - (i8 * 1000), cArr, m7110d(i8, cArr, i5)));
        } else {
            int i9 = i4 - 1000000000;
            if (i9 >= 1000000000) {
                i9 -= 1000000000;
                i3 = i5 + 1;
                cArr[i5] = (char) 50;
            } else {
                i3 = i5 + 1;
                cArr[i5] = (char) 49;
            }
            return m7108f(i9, cArr, i3);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v94, types: [long] */
    /* renamed from: k */
    public static int m7103k(long j, byte[] bArr, int i) {
        char c;
        int i2;
        int i3;
        if (j >= 0) {
            c = j;
            i2 = i;
            if (j <= 2147483647L) {
                return m7105i((int) j, bArr, i);
            }
        } else if (j > -2147483648L) {
            return m7105i((int) j, bArr, i);
        } else {
            if (j == Long.MIN_VALUE) {
                int length = f64799b.length();
                int i4 = 0;
                while (i4 < length) {
                    bArr[i] = (byte) f64799b.charAt(i4);
                    i4++;
                    i++;
                }
                return i;
            }
            bArr[i] = (byte) 45;
            c = -j;
            i2 = i + 1;
        }
        long j2 = c / 51712;
        if (j2 < 1000000000) {
            int i5 = (int) j2;
            if (i5 >= 1000000) {
                int i6 = i5 / 1000;
                int i7 = i6 / 1000;
                int m7111c = m7111c(i7, bArr, i2);
                int[] iArr = f64800c;
                int i8 = iArr[i6 - (i7 * 1000)];
                int i9 = m7111c + 1;
                bArr[m7111c] = (byte) (i8 >> 16);
                int i10 = i9 + 1;
                bArr[i9] = (byte) (i8 >> 8);
                int i11 = i10 + 1;
                bArr[i10] = (byte) i8;
                int i12 = iArr[i5 - (i6 * 1000)];
                int i13 = i11 + 1;
                bArr[i11] = (byte) (i12 >> 16);
                int i14 = i13 + 1;
                bArr[i13] = (byte) (i12 >> 8);
                i3 = i14 + 1;
                bArr[i14] = (byte) i12;
            } else if (i5 < 1000) {
                i3 = m7111c(i5, bArr, i2);
            } else {
                int i15 = i5 / 1000;
                int[] iArr2 = f64800c;
                int i16 = iArr2[i15];
                int i17 = i2;
                if (i15 > 9) {
                    int i18 = i2;
                    if (i15 > 99) {
                        bArr[i2] = (byte) (i16 >> 16);
                        i18 = i2 + 1;
                    }
                    bArr[i18] = (byte) (i16 >> 8);
                    i17 = i18 + 1;
                }
                int i19 = i17 + 1;
                bArr[i17] = (byte) i16;
                int i20 = iArr2[i5 - (i15 * 1000)];
                int i21 = i19 + 1;
                bArr[i19] = (byte) (i20 >> 16);
                int i22 = i21 + 1;
                bArr[i21] = (byte) (i20 >> 8);
                i3 = i22 + 1;
                bArr[i22] = (byte) i20;
            }
        } else {
            long j3 = j2 / 1000000000;
            i3 = m7109e((int) (j2 - (1000000000 * j3)), bArr, m7111c((int) j3, bArr, i2));
        }
        return m7109e((int) (c - (j2 * 1000000000)), bArr, i3);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v94, types: [long] */
    /* renamed from: l */
    public static int m7102l(long j, char[] cArr, int i) {
        char c;
        int i2;
        int i3;
        if (j >= 0) {
            c = j;
            i2 = i;
            if (j <= 2147483647L) {
                return m7104j((int) j, cArr, i);
            }
        } else if (j > -2147483648L) {
            return m7104j((int) j, cArr, i);
        } else {
            if (j == Long.MIN_VALUE) {
                String str = f64799b;
                int length = str.length();
                str.getChars(0, length, cArr, i);
                return length + i;
            }
            cArr[i] = (char) 45;
            c = -j;
            i2 = i + 1;
        }
        long j2 = c / 51712;
        if (j2 < 1000000000) {
            int i4 = (int) j2;
            if (i4 >= 1000000) {
                int i5 = i4 / 1000;
                int i6 = i5 / 1000;
                int m7110d = m7110d(i6, cArr, i2);
                int[] iArr = f64800c;
                int i7 = iArr[i5 - (i6 * 1000)];
                int i8 = m7110d + 1;
                cArr[m7110d] = (char) (i7 >> 16);
                int i9 = i8 + 1;
                cArr[i8] = (char) ((i7 >> 8) & Constants.ERR_WATERMARKR_INFO);
                int i10 = i9 + 1;
                cArr[i9] = (char) (i7 & Constants.ERR_WATERMARKR_INFO);
                int i11 = iArr[i4 - (i5 * 1000)];
                int i12 = i10 + 1;
                cArr[i10] = (char) (i11 >> 16);
                int i13 = i12 + 1;
                cArr[i12] = (char) ((i11 >> 8) & Constants.ERR_WATERMARKR_INFO);
                i3 = i13 + 1;
                cArr[i13] = (char) (i11 & Constants.ERR_WATERMARKR_INFO);
            } else if (i4 < 1000) {
                i3 = m7110d(i4, cArr, i2);
            } else {
                int i14 = i4 / 1000;
                int[] iArr2 = f64800c;
                int i15 = iArr2[i14];
                int i16 = i2;
                if (i14 > 9) {
                    int i17 = i2;
                    if (i14 > 99) {
                        cArr[i2] = (char) (i15 >> 16);
                        i17 = i2 + 1;
                    }
                    cArr[i17] = (char) ((i15 >> 8) & Constants.ERR_WATERMARKR_INFO);
                    i16 = i17 + 1;
                }
                int i18 = i16 + 1;
                cArr[i16] = (char) (i15 & Constants.ERR_WATERMARKR_INFO);
                int i19 = iArr2[i4 - (i14 * 1000)];
                int i20 = i18 + 1;
                cArr[i18] = (char) (i19 >> 16);
                int i21 = i20 + 1;
                cArr[i20] = (char) ((i19 >> 8) & Constants.ERR_WATERMARKR_INFO);
                i3 = i21 + 1;
                cArr[i21] = (char) (i19 & Constants.ERR_WATERMARKR_INFO);
            }
        } else {
            long j3 = j2 / 1000000000;
            i3 = m7108f((int) (j2 - (1000000000 * j3)), cArr, m7110d((int) j3, cArr, i2));
        }
        return m7108f((int) (c - (j2 * 1000000000)), cArr, i3);
    }

    /* renamed from: m */
    public static String m7101m(int i) {
        String[] strArr = f64801d;
        if (i < strArr.length) {
            if (i >= 0) {
                return strArr[i];
            }
            int i2 = (-i) - 1;
            String[] strArr2 = f64802e;
            if (i2 < strArr2.length) {
                return strArr2[i2];
            }
        }
        return Integer.toString(i);
    }
}
