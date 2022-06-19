package com.google.zxing.p177e.p179b;
/* renamed from: com.google.zxing.e.b.d */
/* loaded from: classes-dex2jar.jar:com/google/zxing/e/b/d.class */
final class C5144d {
    /* renamed from: a */
    public static int m1346a(C5141b c5141b) {
        return m1345a(c5141b, true) + m1345a(c5141b, false);
    }

    /* renamed from: a */
    private static int m1345a(C5141b c5141b, boolean z) {
        int i;
        int i2;
        int m1376a = z ? c5141b.m1376a() : c5141b.m1371b();
        int m1371b = z ? c5141b.m1371b() : c5141b.m1376a();
        byte[][] m1370c = c5141b.m1370c();
        int i3 = 0;
        int i4 = 0;
        while (true) {
            int i5 = i4;
            if (i3 < m1376a) {
                byte b = -1;
                int i6 = 0;
                int i7 = 0;
                while (true) {
                    i = i7;
                    if (i6 >= m1371b) {
                        break;
                    }
                    byte b2 = z ? m1370c[i3][i6] : m1370c[i6][i3];
                    if (b2 == b) {
                        i2 = i + 1;
                    } else {
                        int i8 = i5;
                        if (i >= 5) {
                            i8 = i5 + (i - 5) + 3;
                        }
                        i5 = i8;
                        b = b2;
                        i2 = 1;
                    }
                    i6++;
                    i7 = i2;
                }
                int i9 = i5;
                if (i >= 5) {
                    i9 = i5 + (i - 5) + 3;
                }
                i3++;
                i4 = i9;
            } else {
                return i5;
            }
        }
    }

    /* renamed from: a */
    public static boolean m1347a(int i, int i2, int i3) {
        int i4;
        switch (i) {
            case 0:
                i4 = (i3 + i2) & 1;
                break;
            case 1:
                i4 = i3 & 1;
                break;
            case 2:
                i4 = i2 % 3;
                break;
            case 3:
                i4 = (i3 + i2) % 3;
                break;
            case 4:
                i4 = ((i3 / 2) + (i2 / 3)) & 1;
                break;
            case 5:
                int i5 = i3 * i2;
                i4 = (i5 % 3) + (i5 & 1);
                break;
            case 6:
                int i6 = i3 * i2;
                i4 = ((i6 % 3) + (i6 & 1)) & 1;
                break;
            case 7:
                i4 = (((i3 * i2) % 3) + ((i3 + i2) & 1)) & 1;
                break;
            default:
                throw new IllegalArgumentException("Invalid mask pattern: ".concat(String.valueOf(i)));
        }
        return i4 == 0;
    }

    /* renamed from: a */
    private static boolean m1344a(byte[] bArr, int i, int i2) {
        boolean z = false;
        int max = Math.max(i, 0);
        int min = Math.min(i2, bArr.length);
        while (true) {
            if (max >= min) {
                z = true;
                break;
            } else if (bArr[max] == 1) {
                break;
            } else {
                max++;
            }
        }
        return z;
    }

    /* renamed from: a */
    private static boolean m1343a(byte[][] bArr, int i, int i2, int i3) {
        boolean z = false;
        int max = Math.max(i2, 0);
        int min = Math.min(i3, bArr.length);
        while (true) {
            if (max >= min) {
                z = true;
                break;
            } else if (bArr[max][i] == 1) {
                break;
            } else {
                max++;
            }
        }
        return z;
    }

    /* renamed from: b */
    public static int m1342b(C5141b c5141b) {
        byte[][] m1370c = c5141b.m1370c();
        int m1371b = c5141b.m1371b();
        int m1376a = c5141b.m1376a();
        int i = 0;
        for (int i2 = 0; i2 < m1376a - 1; i2++) {
            byte[] bArr = m1370c[i2];
            int i3 = 0;
            while (i3 < m1371b - 1) {
                byte b = bArr[i3];
                int i4 = i;
                if (b == bArr[i3 + 1]) {
                    i4 = i;
                    if (b == m1370c[i2 + 1][i3]) {
                        i4 = i;
                        if (b == m1370c[i2 + 1][i3 + 1]) {
                            i4 = i + 1;
                        }
                    }
                }
                i3++;
                i = i4;
            }
        }
        return i * 3;
    }

    /* JADX WARN: Code restructure failed: missing block: B:27:0x00b4, code lost:
        if (m1344a(r0, r12 + 7, r12 + 11) != false) goto L28;
     */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int m1341c(com.google.zxing.p177e.p179b.C5141b r6) {
        /*
            Method dump skipped, instructions count: 380
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.zxing.p177e.p179b.C5144d.m1341c(com.google.zxing.e.b.b):int");
    }

    /* renamed from: d */
    public static int m1340d(C5141b c5141b) {
        byte[][] m1370c = c5141b.m1370c();
        int m1371b = c5141b.m1371b();
        int m1376a = c5141b.m1376a();
        int i = 0;
        for (int i2 = 0; i2 < m1376a; i2++) {
            byte[] bArr = m1370c[i2];
            int i3 = 0;
            while (i3 < m1371b) {
                int i4 = i;
                if (bArr[i3] == 1) {
                    i4 = i + 1;
                }
                i3++;
                i = i4;
            }
        }
        int m1376a2 = c5141b.m1376a() * c5141b.m1371b();
        return ((Math.abs((i << 1) - m1376a2) * 10) / m1376a2) * 10;
    }
}
