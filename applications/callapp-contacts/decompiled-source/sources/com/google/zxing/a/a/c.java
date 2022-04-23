package com.google.zxing.a.a;

import com.google.zxing.common.a;
import com.google.zxing.common.b;
/* loaded from: classes4-dex2jar.jar:com/google/zxing/a/a/c.class */
public final class c {

    /* renamed from: a  reason: collision with root package name */
    private static final int[] f32905a = {4, 6, 6, 8, 8, 8, 8, 8, 8, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12};

    private c() {
    }

    private static int a(int i, boolean z) {
        return ((z ? 88 : 112) + (i << 4)) * i;
    }

    /* JADX WARN: Code restructure failed: missing block: B:82:0x0250, code lost:
        if (r0 != com.google.zxing.a.a.c.f32905a[r17]) goto L_0x0253;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.google.zxing.a.a.a a(byte[] r8, int r9, int r10) {
        /*
            Method dump skipped, instructions count: 1403
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.zxing.a.a.c.a(byte[], int, int):com.google.zxing.a.a.a");
    }

    private static a a(a aVar, int i) {
        a aVar2 = new a();
        int i2 = aVar.f32979b;
        int i3 = (1 << i) - 2;
        int i4 = 0;
        while (i4 < i2) {
            int i5 = 0;
            for (int i6 = 0; i6 < i; i6++) {
                int i7 = i4 + i6;
                if (i7 < i2) {
                    i5 = i5;
                    if (!aVar.a(i7)) {
                    }
                }
                i5 |= 1 << ((i - 1) - i6);
            }
            int i8 = i5 & i3;
            if (i8 == i3) {
                aVar2.a(i8, i);
            } else if (i8 == 0) {
                aVar2.a(i5 | 1, i);
            } else {
                aVar2.a(i5, i);
                i4 += i;
            }
            i4--;
            i4 += i;
        }
        return aVar2;
    }

    private static a a(a aVar, int i, int i2) {
        com.google.zxing.common.reedsolomon.a aVar2;
        int i3 = aVar.f32979b / i2;
        if (i2 == 4) {
            aVar2 = com.google.zxing.common.reedsolomon.a.f32987d;
        } else if (i2 == 6) {
            aVar2 = com.google.zxing.common.reedsolomon.a.f32986c;
        } else if (i2 == 8) {
            aVar2 = com.google.zxing.common.reedsolomon.a.g;
        } else if (i2 == 10) {
            aVar2 = com.google.zxing.common.reedsolomon.a.f32985b;
        } else if (i2 == 12) {
            aVar2 = com.google.zxing.common.reedsolomon.a.f32984a;
        } else {
            throw new IllegalArgumentException("Unsupported word size ".concat(String.valueOf(i2)));
        }
        com.google.zxing.common.reedsolomon.c cVar = new com.google.zxing.common.reedsolomon.c(aVar2);
        int i4 = i / i2;
        int[] b2 = b(aVar, i2, i4);
        cVar.a(b2, i4 - i3);
        a aVar3 = new a();
        aVar3.a(0, i % i2);
        for (int i5 : b2) {
            aVar3.a(i5, i2);
        }
        return aVar3;
    }

    private static void a(b bVar, int i, int i2) {
        for (int i3 = 0; i3 < i2; i3 += 2) {
            int i4 = i - i3;
            int i5 = i4;
            while (true) {
                int i6 = i + i3;
                if (i5 <= i6) {
                    bVar.b(i5, i4);
                    bVar.b(i5, i6);
                    bVar.b(i4, i5);
                    bVar.b(i6, i5);
                    i5++;
                }
            }
        }
        int i7 = i - i2;
        bVar.b(i7, i7);
        int i8 = i7 + 1;
        bVar.b(i8, i7);
        bVar.b(i7, i8);
        int i9 = i + i2;
        bVar.b(i9, i7);
        bVar.b(i9, i8);
        bVar.b(i9, i9 - 1);
    }

    private static void a(b bVar, boolean z, int i, a aVar) {
        int i2 = i / 2;
        if (z) {
            for (int i3 = 0; i3 < 7; i3++) {
                int i4 = (i2 - 3) + i3;
                if (aVar.a(i3)) {
                    bVar.b(i4, i2 - 5);
                }
                if (aVar.a(i3 + 7)) {
                    bVar.b(i2 + 5, i4);
                }
                if (aVar.a(20 - i3)) {
                    bVar.b(i4, i2 + 5);
                }
                if (aVar.a(27 - i3)) {
                    bVar.b(i2 - 5, i4);
                }
            }
            return;
        }
        for (int i5 = 0; i5 < 10; i5++) {
            int i6 = (i2 - 5) + i5 + (i5 / 5);
            if (aVar.a(i5)) {
                bVar.b(i6, i2 - 7);
            }
            if (aVar.a(i5 + 10)) {
                bVar.b(i2 + 7, i6);
            }
            if (aVar.a(29 - i5)) {
                bVar.b(i6, i2 + 7);
            }
            if (aVar.a(39 - i5)) {
                bVar.b(i2 - 7, i6);
            }
        }
    }

    private static int[] b(a aVar, int i, int i2) {
        int[] iArr = new int[i2];
        int i3 = aVar.f32979b / i;
        for (int i4 = 0; i4 < i3; i4++) {
            int i5 = 0;
            for (int i6 = 0; i6 < i; i6++) {
                i5 |= aVar.a((i4 * i) + i6) ? 1 << ((i - i6) - 1) : 0;
            }
            iArr[i4] = i5;
        }
        return iArr;
    }
}
