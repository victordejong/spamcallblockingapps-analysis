package com.google.zxing.p174c;

import com.google.zxing.EnumC5069a;
import com.google.zxing.EnumC5095c;
import com.google.zxing.FormatException;
import com.google.zxing.common.C5117b;
import java.util.Map;
/* renamed from: com.google.zxing.c.j */
/* loaded from: classes-dex2jar.jar:com/google/zxing/c/j.class */
public final class C5106j extends AbstractC5113q {
    @Override // com.google.zxing.p174c.AbstractC5110n, com.google.zxing.AbstractC5133e
    /* renamed from: a */
    public C5117b mo1394a(String str, EnumC5069a enumC5069a, int i, int i2, Map<EnumC5095c, ?> map) {
        if (enumC5069a != EnumC5069a.EAN_13) {
            throw new IllegalArgumentException("Can only encode EAN_13, but got ".concat(String.valueOf(enumC5069a)));
        }
        return super.mo1394a(str, enumC5069a, i, i2, map);
    }

    @Override // com.google.zxing.p174c.AbstractC5110n
    /* renamed from: a */
    public boolean[] mo1476a(String str) {
        String str2;
        int length = str.length();
        switch (length) {
            case 12:
                try {
                    str2 = str + AbstractC5112p.m1479b(str);
                    break;
                } catch (FormatException e) {
                    throw new IllegalArgumentException(e);
                }
            case 13:
                str2 = str;
                try {
                    if (!AbstractC5112p.m1480a(str)) {
                        throw new IllegalArgumentException("Contents do not pass checksum");
                    }
                } catch (FormatException e2) {
                    throw new IllegalArgumentException("Illegal contents");
                }
                break;
            default:
                throw new IllegalArgumentException("Requested contents should be 12 or 13 digits long, but got ".concat(String.valueOf(length)));
        }
        int i = C5105i.f21588a[Character.digit(str2.charAt(0), 10)];
        boolean[] zArr = new boolean[95];
        int a = m1481a(zArr, 0, AbstractC5112p.f21593b, true) + 0;
        for (int i2 = 1; i2 <= 6; i2++) {
            int digit = Character.digit(str2.charAt(i2), 10);
            int i3 = digit;
            if (((i >> (6 - i2)) & 1) == 1) {
                i3 = digit + 10;
            }
            a += m1481a(zArr, a, AbstractC5112p.f21597f[i3], false);
        }
        int a2 = a + m1481a(zArr, a, AbstractC5112p.f21594c, false);
        for (int i4 = 7; i4 <= 12; i4++) {
            a2 += m1481a(zArr, a2, AbstractC5112p.f21596e[Character.digit(str2.charAt(i4), 10)], true);
        }
        m1481a(zArr, a2, AbstractC5112p.f21593b, true);
        return zArr;
    }
}
