package com.google.zxing.p174c;

import com.google.zxing.EnumC5069a;
import com.google.zxing.EnumC5095c;
import com.google.zxing.FormatException;
import com.google.zxing.common.C5117b;
import java.util.Map;
/* renamed from: com.google.zxing.c.s */
/* loaded from: classes-dex2jar.jar:com/google/zxing/c/s.class */
public final class C5115s extends AbstractC5113q {
    @Override // com.google.zxing.p174c.AbstractC5110n, com.google.zxing.AbstractC5133e
    /* renamed from: a */
    public C5117b mo1394a(String str, EnumC5069a enumC5069a, int i, int i2, Map<EnumC5095c, ?> map) {
        if (enumC5069a != EnumC5069a.UPC_E) {
            throw new IllegalArgumentException("Can only encode UPC_E, but got ".concat(String.valueOf(enumC5069a)));
        }
        return super.mo1394a(str, enumC5069a, i, i2, map);
    }

    @Override // com.google.zxing.p174c.AbstractC5110n
    /* renamed from: a */
    public boolean[] mo1476a(String str) {
        String str2;
        int length = str.length();
        switch (length) {
            case 7:
                try {
                    str2 = str + AbstractC5112p.m1479b(C5114r.m1477a(str));
                    break;
                } catch (FormatException e) {
                    throw new IllegalArgumentException(e);
                }
            case 8:
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
                throw new IllegalArgumentException("Requested contents should be 8 digits long, but got ".concat(String.valueOf(length)));
        }
        int digit = Character.digit(str2.charAt(0), 10);
        if (digit == 0 || digit == 1) {
            int i = C5114r.f21598a[digit][Character.digit(str2.charAt(7), 10)];
            boolean[] zArr = new boolean[51];
            int a = m1481a(zArr, 0, AbstractC5112p.f21593b, true) + 0;
            for (int i2 = 1; i2 <= 6; i2++) {
                int digit2 = Character.digit(str2.charAt(i2), 10);
                int i3 = digit2;
                if (((i >> (6 - i2)) & 1) == 1) {
                    i3 = digit2 + 10;
                }
                a += m1481a(zArr, a, AbstractC5112p.f21597f[i3], false);
            }
            m1481a(zArr, a, AbstractC5112p.f21595d, false);
            return zArr;
        }
        throw new IllegalArgumentException("Number system must be 0 or 1");
    }
}
