package com.google.zxing.p170a.p171a;

import com.google.zxing.common.C5116a;
import com.google.zxing.common.C5117b;
import com.google.zxing.common.reedsolomon.C5119a;
import com.google.zxing.common.reedsolomon.C5121c;
/* renamed from: com.google.zxing.a.a.c */
/* loaded from: classes-dex2jar.jar:com/google/zxing/a/a/c.class */
public final class C5073c {

    /* renamed from: a */
    private static final int[] f21509a = {4, 6, 6, 8, 8, 8, 8, 8, 8, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12};

    /* renamed from: a */
    private static int m1596a(int i, boolean z) {
        return ((z ? 88 : 112) + (i << 4)) * i;
    }

    /* JADX WARN: Code restructure failed: missing block: B:52:0x014c, code lost:
        if (r15 != com.google.zxing.p170a.p171a.C5073c.f21509a[r16]) goto L53;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.google.zxing.p170a.p171a.C5071a m1590a(byte[] r8, int r9, int r10) {
        /*
            Method dump skipped, instructions count: 981
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.zxing.p170a.p171a.C5073c.m1590a(byte[], int, int):com.google.zxing.a.a.a");
    }

    /* renamed from: a */
    static C5116a m1595a(C5116a c5116a, int i) {
        int i2;
        int i3;
        C5116a c5116a2 = new C5116a();
        int m1475a = c5116a.m1475a();
        int i4 = (1 << i) - 2;
        int i5 = 0;
        while (true) {
            int i6 = i5;
            if (i6 < m1475a) {
                int i7 = 0;
                int i8 = 0;
                while (true) {
                    i2 = i8;
                    if (i7 >= i) {
                        break;
                    }
                    if (i6 + i7 < m1475a) {
                        i3 = i2;
                        if (!c5116a.m1474a(i6 + i7)) {
                            i7++;
                            i8 = i3;
                        }
                    }
                    i3 = i2 | (1 << ((i - 1) - i7));
                    i7++;
                    i8 = i3;
                }
                if ((i2 & i4) == i4) {
                    c5116a2.m1473a(i2 & i4, i);
                    i6--;
                } else if ((i2 & i4) == 0) {
                    c5116a2.m1473a(i2 | 1, i);
                    i6--;
                } else {
                    c5116a2.m1473a(i2, i);
                }
                i5 = i6 + i;
            } else {
                return c5116a2;
            }
        }
    }

    /* renamed from: a */
    private static C5116a m1594a(C5116a c5116a, int i, int i2) {
        int m1475a = c5116a.m1475a() / i2;
        C5121c c5121c = new C5121c(m1597a(i2));
        int i3 = i / i2;
        int[] m1589b = m1589b(c5116a, i2, i3);
        c5121c.m1436a(m1589b, i3 - m1475a);
        C5116a c5116a2 = new C5116a();
        c5116a2.m1473a(0, i % i2);
        for (int i4 : m1589b) {
            c5116a2.m1473a(i4, i2);
        }
        return c5116a2;
    }

    /* renamed from: a */
    static C5116a m1591a(boolean z, int i, int i2) {
        C5116a m1594a;
        C5116a c5116a = new C5116a();
        if (z) {
            c5116a.m1473a(i - 1, 2);
            c5116a.m1473a(i2 - 1, 6);
            m1594a = m1594a(c5116a, 28, 4);
        } else {
            c5116a.m1473a(i - 1, 5);
            c5116a.m1473a(i2 - 1, 11);
            m1594a = m1594a(c5116a, 40, 4);
        }
        return m1594a;
    }

    /* renamed from: a */
    private static C5119a m1597a(int i) {
        C5119a c5119a;
        switch (i) {
            case 4:
                c5119a = C5119a.f21641d;
                break;
            case 5:
            case 7:
            case 9:
            case 11:
            default:
                throw new IllegalArgumentException("Unsupported word size ".concat(String.valueOf(i)));
            case 6:
                c5119a = C5119a.f21640c;
                break;
            case 8:
                c5119a = C5119a.f21644g;
                break;
            case 10:
                c5119a = C5119a.f21639b;
                break;
            case 12:
                c5119a = C5119a.f21638a;
                break;
        }
        return c5119a;
    }

    /* renamed from: a */
    private static void m1593a(C5117b c5117b, int i, int i2) {
        for (int i3 = 0; i3 < i2; i3 += 2) {
            for (int i4 = i - i3; i4 <= i + i3; i4++) {
                c5117b.m1458b(i4, i - i3);
                c5117b.m1458b(i4, i + i3);
                c5117b.m1458b(i - i3, i4);
                c5117b.m1458b(i + i3, i4);
            }
        }
        c5117b.m1458b(i - i2, i - i2);
        c5117b.m1458b((i - i2) + 1, i - i2);
        c5117b.m1458b(i - i2, (i - i2) + 1);
        c5117b.m1458b(i + i2, i - i2);
        c5117b.m1458b(i + i2, (i - i2) + 1);
        c5117b.m1458b(i + i2, (i + i2) - 1);
    }

    /* renamed from: a */
    private static void m1592a(C5117b c5117b, boolean z, int i, C5116a c5116a) {
        int i2 = i / 2;
        if (!z) {
            for (int i3 = 0; i3 < 10; i3++) {
                int i4 = (i2 - 5) + i3 + (i3 / 5);
                if (c5116a.m1474a(i3)) {
                    c5117b.m1458b(i4, i2 - 7);
                }
                if (c5116a.m1474a(i3 + 10)) {
                    c5117b.m1458b(i2 + 7, i4);
                }
                if (c5116a.m1474a(29 - i3)) {
                    c5117b.m1458b(i4, i2 + 7);
                }
                if (c5116a.m1474a(39 - i3)) {
                    c5117b.m1458b(i2 - 7, i4);
                }
            }
            return;
        }
        for (int i5 = 0; i5 < 7; i5++) {
            int i6 = (i2 - 3) + i5;
            if (c5116a.m1474a(i5)) {
                c5117b.m1458b(i6, i2 - 5);
            }
            if (c5116a.m1474a(i5 + 7)) {
                c5117b.m1458b(i2 + 5, i6);
            }
            if (c5116a.m1474a(20 - i5)) {
                c5117b.m1458b(i6, i2 + 5);
            }
            if (c5116a.m1474a(27 - i5)) {
                c5117b.m1458b(i2 - 5, i6);
            }
        }
    }

    /* renamed from: b */
    private static int[] m1589b(C5116a c5116a, int i, int i2) {
        int[] iArr = new int[i2];
        int m1475a = c5116a.m1475a() / i;
        for (int i3 = 0; i3 < m1475a; i3++) {
            int i4 = 0;
            for (int i5 = 0; i5 < i; i5++) {
                i4 |= c5116a.m1474a((i3 * i) + i5) ? 1 << ((i - i5) - 1) : 0;
            }
            iArr[i3] = i4;
        }
        return iArr;
    }
}
