package com.google.zxing.p177e.p179b;

import com.google.zxing.WriterException;
import com.google.zxing.common.C5116a;
import com.google.zxing.p177e.p178a.C5137c;
import com.google.zxing.p177e.p178a.EnumC5135a;
/* renamed from: com.google.zxing.e.b.e */
/* loaded from: classes-dex2jar.jar:com/google/zxing/e/b/e.class */
final class C5145e {

    /* renamed from: a */
    private static final int[][] f21726a = {new int[]{1, 1, 1, 1, 1, 1, 1}, new int[]{1, 0, 0, 0, 0, 0, 1}, new int[]{1, 0, 1, 1, 1, 0, 1}, new int[]{1, 0, 1, 1, 1, 0, 1}, new int[]{1, 0, 1, 1, 1, 0, 1}, new int[]{1, 0, 0, 0, 0, 0, 1}, new int[]{1, 1, 1, 1, 1, 1, 1}};

    /* renamed from: b */
    private static final int[][] f21727b = {new int[]{1, 1, 1, 1, 1}, new int[]{1, 0, 0, 0, 1}, new int[]{1, 0, 1, 0, 1}, new int[]{1, 0, 0, 0, 1}, new int[]{1, 1, 1, 1, 1}};

    /* renamed from: c */
    private static final int[][] f21728c = {new int[]{-1, -1, -1, -1, -1, -1, -1}, new int[]{6, 18, -1, -1, -1, -1, -1}, new int[]{6, 22, -1, -1, -1, -1, -1}, new int[]{6, 26, -1, -1, -1, -1, -1}, new int[]{6, 30, -1, -1, -1, -1, -1}, new int[]{6, 34, -1, -1, -1, -1, -1}, new int[]{6, 22, 38, -1, -1, -1, -1}, new int[]{6, 24, 42, -1, -1, -1, -1}, new int[]{6, 26, 46, -1, -1, -1, -1}, new int[]{6, 28, 50, -1, -1, -1, -1}, new int[]{6, 30, 54, -1, -1, -1, -1}, new int[]{6, 32, 58, -1, -1, -1, -1}, new int[]{6, 34, 62, -1, -1, -1, -1}, new int[]{6, 26, 46, 66, -1, -1, -1}, new int[]{6, 26, 48, 70, -1, -1, -1}, new int[]{6, 26, 50, 74, -1, -1, -1}, new int[]{6, 30, 54, 78, -1, -1, -1}, new int[]{6, 30, 56, 82, -1, -1, -1}, new int[]{6, 30, 58, 86, -1, -1, -1}, new int[]{6, 34, 62, 90, -1, -1, -1}, new int[]{6, 28, 50, 72, 94, -1, -1}, new int[]{6, 26, 50, 74, 98, -1, -1}, new int[]{6, 30, 54, 78, 102, -1, -1}, new int[]{6, 28, 54, 80, 106, -1, -1}, new int[]{6, 32, 58, 84, 110, -1, -1}, new int[]{6, 30, 58, 86, 114, -1, -1}, new int[]{6, 34, 62, 90, 118, -1, -1}, new int[]{6, 26, 50, 74, 98, 122, -1}, new int[]{6, 30, 54, 78, 102, 126, -1}, new int[]{6, 26, 52, 78, 104, 130, -1}, new int[]{6, 30, 56, 82, 108, 134, -1}, new int[]{6, 34, 60, 86, 112, 138, -1}, new int[]{6, 30, 58, 86, 114, 142, -1}, new int[]{6, 34, 62, 90, 118, 146, -1}, new int[]{6, 30, 54, 78, 102, 126, 150}, new int[]{6, 24, 50, 76, 102, 128, 154}, new int[]{6, 28, 54, 80, 106, 132, 158}, new int[]{6, 32, 58, 84, 110, 136, 162}, new int[]{6, 26, 54, 82, 110, 138, 166}, new int[]{6, 30, 58, 86, 114, 142, 170}};

    /* renamed from: d */
    private static final int[][] f21729d = {new int[]{8, 0}, new int[]{8, 1}, new int[]{8, 2}, new int[]{8, 3}, new int[]{8, 4}, new int[]{8, 5}, new int[]{8, 7}, new int[]{8, 8}, new int[]{7, 8}, new int[]{5, 8}, new int[]{4, 8}, new int[]{3, 8}, new int[]{2, 8}, new int[]{1, 8}, new int[]{0, 8}};

    /* renamed from: a */
    static int m1339a(int i) {
        return 32 - Integer.numberOfLeadingZeros(i);
    }

    /* renamed from: a */
    static int m1338a(int i, int i2) {
        if (i2 == 0) {
            throw new IllegalArgumentException("0 polynomial");
        }
        int m1339a = m1339a(i2);
        int i3 = i << (m1339a - 1);
        while (true) {
            int i4 = i3;
            if (m1339a(i4) < m1339a) {
                return i4;
            }
            i3 = i4 ^ (i2 << (m1339a(i4) - m1339a));
        }
    }

    /* renamed from: a */
    private static void m1337a(int i, int i2, C5141b c5141b) {
        for (int i3 = 0; i3 < 8; i3++) {
            if (!m1329b(c5141b.m1374a(i + i3, i2))) {
                throw new WriterException();
            }
            c5141b.m1373a(i + i3, i2, 0);
        }
    }

    /* renamed from: a */
    static void m1336a(C5116a c5116a, int i, C5141b c5141b) {
        int i2;
        int i3;
        int i4;
        boolean z;
        int m1376a = c5141b.m1376a() - 1;
        int i5 = -1;
        int i6 = 0;
        for (int m1371b = c5141b.m1371b() - 1; m1371b > 0; m1371b = i2 - 2) {
            if (m1371b == 6) {
                i2 = m1371b - 1;
                i3 = m1376a;
            } else {
                i2 = m1371b;
                i3 = m1376a;
            }
            while (i3 >= 0 && i3 < c5141b.m1376a()) {
                int i7 = 0;
                while (true) {
                    i4 = i6;
                    if (i7 < 2) {
                        int i8 = i2 - i7;
                        i6 = i4;
                        if (m1329b(c5141b.m1374a(i8, i3))) {
                            if (i4 < c5116a.m1475a()) {
                                z = c5116a.m1474a(i4);
                                i4++;
                            } else {
                                z = false;
                            }
                            boolean z2 = z;
                            if (i != -1) {
                                z2 = z;
                                if (C5144d.m1347a(i, i8, i3)) {
                                    z2 = !z;
                                }
                            }
                            c5141b.m1372a(i8, i3, z2);
                            i6 = i4;
                        }
                        i7++;
                    }
                }
                i3 += i5;
                i6 = i4;
            }
            i5 = -i5;
            m1376a = i3 + i5;
        }
        if (i6 != c5116a.m1475a()) {
            throw new WriterException("Not all bits consumed: " + i6 + '/' + c5116a.m1475a());
        }
    }

    /* renamed from: a */
    public static void m1335a(C5116a c5116a, EnumC5135a enumC5135a, C5137c c5137c, int i, C5141b c5141b) {
        m1330a(c5141b);
        m1331a(c5137c, c5141b);
        m1333a(enumC5135a, i, c5141b);
        m1327b(c5137c, c5141b);
        m1336a(c5116a, i, c5141b);
    }

    /* renamed from: a */
    static void m1334a(EnumC5135a enumC5135a, int i, C5116a c5116a) {
        if (!C5146f.m1314b(i)) {
            throw new WriterException("Invalid mask pattern");
        }
        int m1393a = (enumC5135a.m1393a() << 3) | i;
        c5116a.m1473a(m1393a, 5);
        c5116a.m1473a(m1338a(m1393a, 1335), 10);
        C5116a c5116a2 = new C5116a();
        c5116a2.m1473a(21522, 15);
        c5116a.m1467b(c5116a2);
        if (c5116a.m1475a() == 15) {
            return;
        }
        throw new WriterException("should not happen but we got: " + c5116a.m1475a());
    }

    /* renamed from: a */
    static void m1333a(EnumC5135a enumC5135a, int i, C5141b c5141b) {
        C5116a c5116a = new C5116a();
        m1334a(enumC5135a, i, c5116a);
        for (int i2 = 0; i2 < c5116a.m1475a(); i2++) {
            boolean m1474a = c5116a.m1474a((c5116a.m1475a() - 1) - i2);
            int[] iArr = f21729d[i2];
            c5141b.m1372a(iArr[0], iArr[1], m1474a);
            if (i2 < 8) {
                c5141b.m1372a((c5141b.m1371b() - i2) - 1, 8, m1474a);
            } else {
                c5141b.m1372a(8, (c5141b.m1376a() - 7) + (i2 - 8), m1474a);
            }
        }
    }

    /* renamed from: a */
    static void m1332a(C5137c c5137c, C5116a c5116a) {
        c5116a.m1473a(c5137c.m1390a(), 6);
        c5116a.m1473a(m1338a(c5137c.m1390a(), 7973), 12);
        if (c5116a.m1475a() != 18) {
            throw new WriterException("should not happen but we got: " + c5116a.m1475a());
        }
    }

    /* renamed from: a */
    static void m1331a(C5137c c5137c, C5141b c5141b) {
        m1321d(c5141b);
        m1323c(c5141b);
        m1324c(c5137c, c5141b);
        m1326b(c5141b);
    }

    /* renamed from: a */
    static void m1330a(C5141b c5141b) {
        c5141b.m1375a((byte) -1);
    }

    /* renamed from: b */
    private static void m1328b(int i, int i2, C5141b c5141b) {
        for (int i3 = 0; i3 < 7; i3++) {
            if (!m1329b(c5141b.m1374a(i, i2 + i3))) {
                throw new WriterException();
            }
            c5141b.m1373a(i, i2 + i3, 0);
        }
    }

    /* renamed from: b */
    static void m1327b(C5137c c5137c, C5141b c5141b) {
        if (c5137c.m1390a() < 7) {
            return;
        }
        C5116a c5116a = new C5116a();
        m1332a(c5137c, c5116a);
        int i = 17;
        for (int i2 = 0; i2 < 6; i2++) {
            for (int i3 = 0; i3 < 3; i3++) {
                boolean m1474a = c5116a.m1474a(i);
                i--;
                c5141b.m1372a(i2, (c5141b.m1376a() - 11) + i3, m1474a);
                c5141b.m1372a((c5141b.m1376a() - 11) + i3, i2, m1474a);
            }
        }
    }

    /* renamed from: b */
    private static void m1326b(C5141b c5141b) {
        for (int i = 8; i < c5141b.m1371b() - 8; i++) {
            int i2 = (i + 1) % 2;
            if (m1329b(c5141b.m1374a(i, 6))) {
                c5141b.m1373a(i, 6, i2);
            }
            if (m1329b(c5141b.m1374a(6, i))) {
                c5141b.m1373a(6, i, i2);
            }
        }
    }

    /* renamed from: b */
    private static boolean m1329b(int i) {
        return i == -1;
    }

    /* renamed from: c */
    private static void m1325c(int i, int i2, C5141b c5141b) {
        for (int i3 = 0; i3 < 5; i3++) {
            int[] iArr = f21727b[i3];
            for (int i4 = 0; i4 < 5; i4++) {
                c5141b.m1373a(i + i4, i2 + i3, iArr[i4]);
            }
        }
    }

    /* renamed from: c */
    private static void m1324c(C5137c c5137c, C5141b c5141b) {
        if (c5137c.m1390a() < 2) {
            return;
        }
        int[] iArr = f21728c[c5137c.m1390a() - 1];
        for (int i : iArr) {
            if (i >= 0) {
                for (int i2 : iArr) {
                    if (i2 >= 0 && m1329b(c5141b.m1374a(i2, i))) {
                        m1325c(i2 - 2, i - 2, c5141b);
                    }
                }
            }
        }
    }

    /* renamed from: c */
    private static void m1323c(C5141b c5141b) {
        if (c5141b.m1374a(8, c5141b.m1376a() - 8) == 0) {
            throw new WriterException();
        }
        c5141b.m1373a(8, c5141b.m1376a() - 8, 1);
    }

    /* renamed from: d */
    private static void m1322d(int i, int i2, C5141b c5141b) {
        for (int i3 = 0; i3 < 7; i3++) {
            int[] iArr = f21726a[i3];
            for (int i4 = 0; i4 < 7; i4++) {
                c5141b.m1373a(i + i4, i2 + i3, iArr[i4]);
            }
        }
    }

    /* renamed from: d */
    private static void m1321d(C5141b c5141b) {
        int length = f21726a[0].length;
        m1322d(0, 0, c5141b);
        m1322d(c5141b.m1371b() - length, 0, c5141b);
        m1322d(0, c5141b.m1371b() - length, c5141b);
        m1337a(0, 7, c5141b);
        m1337a(c5141b.m1371b() - 8, 7, c5141b);
        m1337a(0, c5141b.m1371b() - 8, c5141b);
        m1328b(7, 0, c5141b);
        m1328b((c5141b.m1376a() - 7) - 1, 0, c5141b);
        m1328b(7, c5141b.m1376a() - 7, c5141b);
    }
}
