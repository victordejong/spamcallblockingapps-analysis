package com.google.zxing.c;

import com.google.zxing.FormatException;
import com.google.zxing.WriterException;
import com.google.zxing.a;
import com.google.zxing.c;
import com.google.zxing.common.b;
import java.util.Map;
/* loaded from: classes4-dex2jar.jar:com/google/zxing/c/j.class */
public final class j extends u {
    @Override // com.google.zxing.c.o, com.google.zxing.e
    public final b a(String str, a aVar, int i, int i2, Map<c, ?> map) throws WriterException {
        if (aVar == a.EAN_13) {
            return super.a(str, aVar, i, i2, map);
        }
        throw new IllegalArgumentException("Can only encode EAN_13, but got ".concat(String.valueOf(aVar)));
    }

    @Override // com.google.zxing.c.o
    public final boolean[] a(String str) {
        int length = str.length();
        if (length == 12) {
            try {
                str = str + t.b(str);
            } catch (FormatException e) {
                throw new IllegalArgumentException(e);
            }
        } else if (length == 13) {
            try {
                if (!t.a(str)) {
                    throw new IllegalArgumentException("Contents do not pass checksum");
                }
            } catch (FormatException e2) {
                throw new IllegalArgumentException("Illegal contents");
            }
        } else {
            throw new IllegalArgumentException("Requested contents should be 12 or 13 digits long, but got ".concat(String.valueOf(length)));
        }
        int i = i.f32958a[Character.digit(str.charAt(0), 10)];
        boolean[] zArr = new boolean[95];
        int a2 = a(zArr, 0, t.f32973b, true) + 0;
        for (int i2 = 1; i2 <= 6; i2++) {
            int digit = Character.digit(str.charAt(i2), 10);
            int i3 = digit;
            if (((i >> (6 - i2)) & 1) == 1) {
                i3 = digit + 10;
            }
            a2 += a(zArr, a2, t.f[i3], false);
        }
        int a3 = a2 + a(zArr, a2, t.f32974c, false);
        for (int i4 = 7; i4 <= 12; i4++) {
            a3 += a(zArr, a3, t.e[Character.digit(str.charAt(i4), 10)], true);
        }
        a(zArr, a3, t.f32973b, true);
        return zArr;
    }
}
