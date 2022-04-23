package com.google.zxing.c;

import com.google.zxing.FormatException;
import com.google.zxing.WriterException;
import com.google.zxing.a;
import com.google.zxing.c;
import com.google.zxing.common.b;
import java.util.Map;
/* loaded from: classes4-dex2jar.jar:com/google/zxing/c/k.class */
public final class k extends u {
    @Override // com.google.zxing.c.o, com.google.zxing.e
    public final b a(String str, a aVar, int i, int i2, Map<c, ?> map) throws WriterException {
        if (aVar == a.EAN_8) {
            return super.a(str, aVar, i, i2, map);
        }
        throw new IllegalArgumentException("Can only encode EAN_8, but got ".concat(String.valueOf(aVar)));
    }

    @Override // com.google.zxing.c.o
    public final boolean[] a(String str) {
        int length = str.length();
        if (length == 7) {
            try {
                str = str + t.b(str);
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
        boolean[] zArr = new boolean[67];
        int a2 = a(zArr, 0, t.f32973b, true) + 0;
        for (int i = 0; i <= 3; i++) {
            a2 += a(zArr, a2, t.e[Character.digit(str.charAt(i), 10)], false);
        }
        int a3 = a2 + a(zArr, a2, t.f32974c, false);
        for (int i2 = 4; i2 <= 7; i2++) {
            a3 += a(zArr, a3, t.e[Character.digit(str.charAt(i2), 10)], true);
        }
        a(zArr, a3, t.f32973b, true);
        return zArr;
    }
}
