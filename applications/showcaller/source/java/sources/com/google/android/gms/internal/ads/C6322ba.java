package com.google.android.gms.internal.ads;

import java.util.Arrays;
/* renamed from: com.google.android.gms.internal.ads.ba */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/ba.class */
public final class C6322ba {

    /* renamed from: a */
    public static final byte[] f20319a = {0, 0, 0, 1};

    /* renamed from: b */
    public static final float[] f20320b = {1.0f, 1.0f, 1.0909091f, 0.90909094f, 1.4545455f, 1.2121212f, 2.1818182f, 1.8181819f, 2.909091f, 2.4242425f, 1.6363636f, 1.3636364f, 1.939394f, 1.6161616f, 1.3333334f, 1.5f, 2.0f};

    /* renamed from: c */
    private static final Object f20321c = new Object();

    /* renamed from: d */
    private static int[] f20322d = new int[10];

    /* renamed from: a */
    public static int m16423a(byte[] bArr, int i) {
        int i2;
        int i3;
        synchronized (f20321c) {
            int i4 = 0;
            int i5 = 0;
            while (i4 < i) {
                while (true) {
                    if (i4 >= i - 2) {
                        i3 = i;
                        break;
                    }
                    if (bArr[i4] == 0 && bArr[i4 + 1] == 0) {
                        i3 = i4;
                        if (bArr[i4 + 2] == 3) {
                            break;
                        }
                    }
                    i4++;
                }
                i4 = i3;
                if (i3 < i) {
                    int[] iArr = f20322d;
                    if (iArr.length <= i5) {
                        int length = iArr.length;
                        f20322d = Arrays.copyOf(iArr, length + length);
                    }
                    f20322d[i5] = i3;
                    i4 = i3 + 3;
                    i5++;
                }
            }
            i2 = i - i5;
            int i6 = 0;
            int i7 = 0;
            for (int i8 = 0; i8 < i5; i8++) {
                int i9 = f20322d[i8] - i6;
                System.arraycopy(bArr, i6, bArr, i7, i9);
                int i10 = i7 + i9;
                int i11 = i10 + 1;
                bArr[i10] = (byte) 0;
                i7 = i11 + 1;
                bArr[i11] = (byte) 0;
                i6 += i9 + 3;
            }
            System.arraycopy(bArr, i6, bArr, i7, i2 - i7);
        }
        return i2;
    }

    /* JADX WARN: Removed duplicated region for block: B:56:0x0161  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x0171  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x01d6  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x0200  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x026d  */
    /* JADX WARN: Removed duplicated region for block: B:89:0x0284  */
    /* JADX WARN: Removed duplicated region for block: B:94:0x02aa  */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.google.android.gms.internal.ads.C6285aa m16422b(byte[] r16, int r17, int r18) {
        /*
            Method dump skipped, instructions count: 770
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.C6322ba.m16422b(byte[], int, int):com.google.android.gms.internal.ads.aa");
    }

    /* renamed from: c */
    public static C7211z9 m16421c(byte[] bArr, int i, int i2) {
        C6731ma c6731ma = new C6731ma(bArr, 3, i2);
        c6731ma.m13329c(8);
        int m13326f = c6731ma.m13326f();
        int m13326f2 = c6731ma.m13326f();
        c6731ma.m13330b();
        return new C7211z9(m13326f, m13326f2, c6731ma.m13328d());
    }

    /* renamed from: d */
    public static int m16420d(byte[] bArr, int i, int i2, boolean[] zArr) {
        int i3 = i2 - i;
        C7173y8.m8895d(i3 >= 0);
        if (i3 == 0) {
            return i2;
        }
        if (zArr[0]) {
            m16419e(zArr);
            return i - 3;
        } else if (i3 > 1 && zArr[1] && bArr[i] == 1) {
            m16419e(zArr);
            return i - 2;
        } else if (i3 > 2 && zArr[2] && bArr[i] == 0 && bArr[i + 1] == 1) {
            m16419e(zArr);
            return i - 1;
        } else {
            int i4 = i2 - 1;
            int i5 = i + 2;
            while (i5 < i4) {
                byte b = bArr[i5];
                if ((b & 254) == 0) {
                    int i6 = i5 - 2;
                    if (bArr[i6] == 0 && bArr[i5 - 1] == 0 && b == 1) {
                        m16419e(zArr);
                        return i6;
                    }
                    i5 = i6;
                }
                i5 += 3;
            }
            zArr[0] = i3 <= 2 ? !(i3 != 2 ? !zArr[1] || bArr[i4] != 1 : !(zArr[2] && bArr[i2 - 2] == 0 && bArr[i4] == 1)) : bArr[i2 - 3] == 0 && bArr[i2 - 2] == 0 && bArr[i4] == 1;
            zArr[1] = i3 <= 1 ? !(!zArr[2] || bArr[i4] != 0) : bArr[i2 - 2] == 0 && bArr[i4] == 0;
            boolean z = false;
            if (bArr[i4] == 0) {
                z = true;
            }
            zArr[2] = z;
            return i2;
        }
    }

    /* renamed from: e */
    public static void m16419e(boolean[] zArr) {
        zArr[0] = false;
        zArr[1] = false;
        zArr[2] = false;
    }
}
