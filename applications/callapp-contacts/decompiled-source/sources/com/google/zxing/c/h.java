package com.google.zxing.c;

import com.google.zxing.WriterException;
import com.google.zxing.a;
import com.google.zxing.c;
import com.google.zxing.common.b;
import java.util.Map;
/* loaded from: classes4-dex2jar.jar:com/google/zxing/c/h.class */
public final class h extends o {
    private static int a(String str, int i) {
        int i2 = 0;
        int i3 = 1;
        for (int length = str.length() - 1; length >= 0; length--) {
            i2 += "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%abcd*".indexOf(str.charAt(length)) * i3;
            int i4 = i3 + 1;
            i3 = i4;
            if (i4 > i) {
                i3 = 1;
            }
        }
        return i2 % 47;
    }

    private static int a(boolean[] zArr, int i, int[] iArr) {
        int i2 = 0;
        while (i2 < 9) {
            zArr[i] = iArr[i2] != 0;
            i2++;
            i++;
        }
        return 9;
    }

    private static void a(int i, int[] iArr) {
        for (int i2 = 0; i2 < 9; i2++) {
            int i3 = 1;
            if (((1 << (8 - i2)) & i) == 0) {
                i3 = 0;
            }
            iArr[i2] = i3;
        }
    }

    @Override // com.google.zxing.c.o, com.google.zxing.e
    public final b a(String str, a aVar, int i, int i2, Map<c, ?> map) throws WriterException {
        if (aVar == a.CODE_93) {
            return super.a(str, aVar, i, i2, map);
        }
        throw new IllegalArgumentException("Can only encode CODE_93, but got ".concat(String.valueOf(aVar)));
    }

    @Override // com.google.zxing.c.o
    public final boolean[] a(String str) {
        int length = str.length();
        if (length <= 80) {
            int[] iArr = new int[9];
            int length2 = str.length();
            a(g.f32954a[47], iArr);
            boolean[] zArr = new boolean[((length2 + 2 + 2) * 9) + 1];
            int a2 = a(zArr, 0, iArr);
            for (int i = 0; i < length; i++) {
                a(g.f32954a["0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%abcd*".indexOf(str.charAt(i))], iArr);
                a2 += a(zArr, a2, iArr);
            }
            int a3 = a(str, 20);
            a(g.f32954a[a3], iArr);
            int a4 = a2 + a(zArr, a2, iArr);
            a(g.f32954a[a(str + "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%abcd*".charAt(a3), 15)], iArr);
            int a5 = a4 + a(zArr, a4, iArr);
            a(g.f32954a[47], iArr);
            zArr[a5 + a(zArr, a5, iArr)] = true;
            return zArr;
        }
        throw new IllegalArgumentException("Requested contents should be less than 80 digits long, but got ".concat(String.valueOf(length)));
    }
}
