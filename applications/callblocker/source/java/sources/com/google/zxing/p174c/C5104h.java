package com.google.zxing.p174c;

import com.google.zxing.EnumC5069a;
import com.google.zxing.EnumC5095c;
import com.google.zxing.common.C5117b;
import java.util.Map;
/* renamed from: com.google.zxing.c.h */
/* loaded from: classes-dex2jar.jar:com/google/zxing/c/h.class */
public class C5104h extends AbstractC5110n {
    /* renamed from: a */
    private static int m1484a(String str, int i) {
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

    /* renamed from: a */
    private static int m1483a(boolean[] zArr, int i, int[] iArr) {
        int length = iArr.length;
        int i2 = 0;
        while (i2 < length) {
            zArr[i] = iArr[i2] != 0;
            i2++;
            i++;
        }
        return 9;
    }

    /* renamed from: a */
    private static void m1485a(int i, int[] iArr) {
        for (int i2 = 0; i2 < 9; i2++) {
            iArr[i2] = ((1 << (8 - i2)) & i) == 0 ? 0 : 1;
        }
    }

    @Override // com.google.zxing.p174c.AbstractC5110n, com.google.zxing.AbstractC5133e
    /* renamed from: a */
    public C5117b mo1394a(String str, EnumC5069a enumC5069a, int i, int i2, Map<EnumC5095c, ?> map) {
        if (enumC5069a != EnumC5069a.CODE_93) {
            throw new IllegalArgumentException("Can only encode CODE_93, but got ".concat(String.valueOf(enumC5069a)));
        }
        return super.mo1394a(str, enumC5069a, i, i2, map);
    }

    @Override // com.google.zxing.p174c.AbstractC5110n
    /* renamed from: a */
    public boolean[] mo1476a(String str) {
        int m1484a;
        int length = str.length();
        if (length > 80) {
            throw new IllegalArgumentException("Requested contents should be less than 80 digits long, but got ".concat(String.valueOf(length)));
        }
        int[] iArr = new int[9];
        int length2 = str.length();
        m1485a(C5103g.f21585a[47], iArr);
        boolean[] zArr = new boolean[((length2 + 2 + 2) * 9) + 1];
        int m1483a = m1483a(zArr, 0, iArr);
        for (int i = 0; i < length; i++) {
            m1485a(C5103g.f21585a["0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%abcd*".indexOf(str.charAt(i))], iArr);
            m1483a += m1483a(zArr, m1483a, iArr);
        }
        m1485a(C5103g.f21585a[m1484a(str, 20)], iArr);
        int m1483a2 = m1483a + m1483a(zArr, m1483a, iArr);
        m1485a(C5103g.f21585a[m1484a(str + "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%abcd*".charAt(m1484a), 15)], iArr);
        int m1483a3 = m1483a(zArr, m1483a2, iArr) + m1483a2;
        m1485a(C5103g.f21585a[47], iArr);
        zArr[m1483a3 + m1483a(zArr, m1483a3, iArr)] = true;
        return zArr;
    }
}
