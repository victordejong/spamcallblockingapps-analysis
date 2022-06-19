package com.google.zxing.p404a.p405a;

import com.google.zxing.common.C16190a;
import com.google.zxing.common.C16191b;
import com.google.zxing.common.reedsolomon.C16193a;
import com.google.zxing.common.reedsolomon.C16195c;
/* renamed from: com.google.zxing.a.a.c */
/* loaded from: classes4-dex2jar.jar:com/google/zxing/a/a/c.class */
public final class C16143c {

    /* renamed from: a */
    private static final int[] f57057a = {4, 6, 6, 8, 8, 8, 8, 8, 8, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12};

    private C16143c() {
    }

    /* renamed from: a */
    private static int m7763a(int i, boolean z) {
        return ((z ? 88 : 112) + (i << 4)) * i;
    }

    /* JADX WARN: Code restructure failed: missing block: B:82:0x0250, code lost:
        if (r12 != com.google.zxing.p404a.p405a.C16143c.f57057a[r17]) goto L83;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.google.zxing.p404a.p405a.C16141a m7758a(byte[] r8, int r9, int r10) {
        /*
            Method dump skipped, instructions count: 1403
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.zxing.p404a.p405a.C16143c.m7758a(byte[], int, int):com.google.zxing.a.a.a");
    }

    /* renamed from: a */
    private static C16190a m7762a(C16190a c16190a, int i) {
        int i2;
        int i3;
        C16190a c16190a2 = new C16190a();
        int i4 = c16190a.f57156b;
        int i5 = (1 << i) - 2;
        int i6 = 0;
        while (true) {
            int i7 = i6;
            if (i7 < i4) {
                int i8 = 0;
                int i9 = 0;
                while (true) {
                    i2 = i9;
                    if (i8 >= i) {
                        break;
                    }
                    int i10 = i7 + i8;
                    if (i10 < i4) {
                        i3 = i2;
                        if (!c16190a.m7686a(i10)) {
                            i8++;
                            i9 = i3;
                        }
                    }
                    i3 = i2 | (1 << ((i - 1) - i8));
                    i8++;
                    i9 = i3;
                }
                int i11 = i2 & i5;
                if (i11 == i5) {
                    c16190a2.m7685a(i11, i);
                } else if (i11 == 0) {
                    c16190a2.m7685a(i2 | 1, i);
                } else {
                    c16190a2.m7685a(i2, i);
                    i6 = i7 + i;
                }
                i7--;
                i6 = i7 + i;
            } else {
                return c16190a2;
            }
        }
    }

    /* renamed from: a */
    private static C16190a m7761a(C16190a c16190a, int i, int i2) {
        C16193a c16193a;
        int i3 = c16190a.f57156b / i2;
        if (i2 == 4) {
            c16193a = C16193a.f57164d;
        } else if (i2 == 6) {
            c16193a = C16193a.f57163c;
        } else if (i2 == 8) {
            c16193a = C16193a.f57167g;
        } else if (i2 == 10) {
            c16193a = C16193a.f57162b;
        } else if (i2 != 12) {
            throw new IllegalArgumentException("Unsupported word size ".concat(String.valueOf(i2)));
        } else {
            c16193a = C16193a.f57161a;
        }
        C16195c c16195c = new C16195c(c16193a);
        int i4 = i / i2;
        int[] m7757b = m7757b(c16190a, i2, i4);
        c16195c.m7667a(m7757b, i4 - i3);
        C16190a c16190a2 = new C16190a();
        c16190a2.m7685a(0, i % i2);
        for (int i5 : m7757b) {
            c16190a2.m7685a(i5, i2);
        }
        return c16190a2;
    }

    /* renamed from: a */
    private static void m7760a(C16191b c16191b, int i, int i2) {
        for (int i3 = 0; i3 < i2; i3 += 2) {
            int i4 = i - i3;
            int i5 = i4;
            while (true) {
                int i6 = i + i3;
                if (i5 <= i6) {
                    c16191b.m7676b(i5, i4);
                    c16191b.m7676b(i5, i6);
                    c16191b.m7676b(i4, i5);
                    c16191b.m7676b(i6, i5);
                    i5++;
                }
            }
        }
        int i7 = i - i2;
        c16191b.m7676b(i7, i7);
        int i8 = i7 + 1;
        c16191b.m7676b(i8, i7);
        c16191b.m7676b(i7, i8);
        int i9 = i + i2;
        c16191b.m7676b(i9, i7);
        c16191b.m7676b(i9, i8);
        c16191b.m7676b(i9, i9 - 1);
    }

    /* renamed from: a */
    private static void m7759a(C16191b c16191b, boolean z, int i, C16190a c16190a) {
        int i2 = i / 2;
        if (!z) {
            for (int i3 = 0; i3 < 10; i3++) {
                int i4 = (i2 - 5) + i3 + (i3 / 5);
                if (c16190a.m7686a(i3)) {
                    c16191b.m7676b(i4, i2 - 7);
                }
                if (c16190a.m7686a(i3 + 10)) {
                    c16191b.m7676b(i2 + 7, i4);
                }
                if (c16190a.m7686a(29 - i3)) {
                    c16191b.m7676b(i4, i2 + 7);
                }
                if (c16190a.m7686a(39 - i3)) {
                    c16191b.m7676b(i2 - 7, i4);
                }
            }
            return;
        }
        for (int i5 = 0; i5 < 7; i5++) {
            int i6 = (i2 - 3) + i5;
            if (c16190a.m7686a(i5)) {
                c16191b.m7676b(i6, i2 - 5);
            }
            if (c16190a.m7686a(i5 + 7)) {
                c16191b.m7676b(i2 + 5, i6);
            }
            if (c16190a.m7686a(20 - i5)) {
                c16191b.m7676b(i6, i2 + 5);
            }
            if (c16190a.m7686a(27 - i5)) {
                c16191b.m7676b(i2 - 5, i6);
            }
        }
    }

    /* renamed from: b */
    private static int[] m7757b(C16190a c16190a, int i, int i2) {
        int[] iArr = new int[i2];
        int i3 = c16190a.f57156b / i;
        for (int i4 = 0; i4 < i3; i4++) {
            int i5 = 0;
            for (int i6 = 0; i6 < i; i6++) {
                i5 |= c16190a.m7686a((i4 * i) + i6) ? 1 << ((i - i6) - 1) : 0;
            }
            iArr[i4] = i5;
        }
        return iArr;
    }
}
