package com.google.zxing.c;

import com.google.zxing.FormatException;
import com.google.zxing.WriterException;
import com.google.zxing.a;
import com.google.zxing.c;
import com.google.zxing.common.b;
import java.util.Map;
/* loaded from: classes4-dex2jar.jar:com/google/zxing/c/w.class */
public final class w extends u {
    @Override // com.google.zxing.c.o, com.google.zxing.e
    public final b a(String str, a aVar, int i, int i2, Map<c, ?> map) throws WriterException {
        if (aVar == a.UPC_E) {
            return super.a(str, aVar, i, i2, map);
        }
        throw new IllegalArgumentException("Can only encode UPC_E, but got ".concat(String.valueOf(aVar)));
    }

    @Override // com.google.zxing.c.o
    public final boolean[] a(String str) {
        int length = str.length();
        if (length == 7) {
            try {
                str = str + t.b(v.a(str));
            } catch (FormatException e) {
                throw new IllegalArgumentException(e);
            }
        } else if (length == 8) {
            try {
                if (!t.a(str)) {
                    throw new IllegalArgumentException("Contents do not pass checksum");
                }
            } catch (FormatException e2) {
                throw new IllegalArgumentException("Illegal contents");
            }
        } else {
            throw new IllegalArgumentException("Requested contents should be 8 digits long, but got ".concat(String.valueOf(length)));
        }
        int digit = Character.digit(str.charAt(0), 10);
        if (digit == 0 || digit == 1) {
            int i = v.f32977a[digit][Character.digit(str.charAt(7), 10)];
            boolean[] zArr = new boolean[51];
            int a2 = a(zArr, 0, t.f32973b, true) + 0;
            for (int i2 = 1; i2 <= 6; i2++) {
                int digit2 = Character.digit(str.charAt(i2), 10);
                int i3 = digit2;
                if (((i >> (6 - i2)) & 1) == 1) {
                    i3 = digit2 + 10;
                }
                a2 += a(zArr, a2, t.f[i3], false);
            }
            a(zArr, a2, t.f32975d, false);
            return zArr;
        }
        throw new IllegalArgumentException("Number system must be 0 or 1");
    }
}
