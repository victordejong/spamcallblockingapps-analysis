package com.google.zxing.p174c;

import com.google.zxing.EnumC5069a;
import com.google.zxing.EnumC5095c;
import com.google.zxing.FormatException;
import com.google.zxing.common.C5117b;
import java.util.Map;
/* renamed from: com.google.zxing.c.k */
/* loaded from: classes-dex2jar.jar:com/google/zxing/c/k.class */
public final class C5107k extends AbstractC5113q {
    @Override // com.google.zxing.p174c.AbstractC5110n, com.google.zxing.AbstractC5133e
    /* renamed from: a */
    public C5117b mo1394a(String str, EnumC5069a enumC5069a, int i, int i2, Map<EnumC5095c, ?> map) {
        if (enumC5069a != EnumC5069a.EAN_8) {
            throw new IllegalArgumentException("Can only encode EAN_8, but got ".concat(String.valueOf(enumC5069a)));
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
                    str2 = str + AbstractC5112p.m1479b(str);
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
        boolean[] zArr = new boolean[67];
        int a = m1481a(zArr, 0, AbstractC5112p.f21593b, true) + 0;
        for (int i = 0; i <= 3; i++) {
            a += m1481a(zArr, a, AbstractC5112p.f21596e[Character.digit(str2.charAt(i), 10)], false);
        }
        int a2 = a + m1481a(zArr, a, AbstractC5112p.f21594c, false);
        for (int i2 = 4; i2 <= 7; i2++) {
            a2 += m1481a(zArr, a2, AbstractC5112p.f21596e[Character.digit(str2.charAt(i2), 10)], true);
        }
        m1481a(zArr, a2, AbstractC5112p.f21593b, true);
        return zArr;
    }
}
