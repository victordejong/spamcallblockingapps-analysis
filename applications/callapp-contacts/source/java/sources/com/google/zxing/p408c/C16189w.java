package com.google.zxing.p408c;

import com.google.zxing.EnumC16139a;
import com.google.zxing.EnumC16165c;
import com.google.zxing.FormatException;
import com.google.zxing.WriterException;
import com.google.zxing.common.C16191b;
import java.util.Map;
/* renamed from: com.google.zxing.c.w */
/* loaded from: classes4-dex2jar.jar:com/google/zxing/c/w.class */
public final class C16189w extends AbstractC16187u {
    @Override // com.google.zxing.p408c.AbstractC16181o, com.google.zxing.AbstractC16207e
    /* renamed from: a */
    public final C16191b mo7642a(String str, EnumC16139a enumC16139a, int i, int i2, Map<EnumC16165c, ?> map) throws WriterException {
        if (enumC16139a == EnumC16139a.UPC_E) {
            return super.mo7642a(str, enumC16139a, i, i2, map);
        }
        throw new IllegalArgumentException("Can only encode UPC_E, but got ".concat(String.valueOf(enumC16139a)));
    }

    @Override // com.google.zxing.p408c.AbstractC16181o
    /* renamed from: a */
    public final boolean[] mo7688a(String str) {
        int length = str.length();
        if (length == 7) {
            try {
                str = str + AbstractC16186t.m7691b(C16188v.m7689a(str));
            } catch (FormatException e) {
                throw new IllegalArgumentException(e);
            }
        } else if (length != 8) {
            throw new IllegalArgumentException("Requested contents should be 8 digits long, but got ".concat(String.valueOf(length)));
        } else {
            try {
                if (!AbstractC16186t.m7692a(str)) {
                    throw new IllegalArgumentException("Contents do not pass checksum");
                }
            } catch (FormatException e2) {
                throw new IllegalArgumentException("Illegal contents");
            }
        }
        int digit = Character.digit(str.charAt(0), 10);
        if (digit == 0 || digit == 1) {
            int i = C16188v.f57152a[digit][Character.digit(str.charAt(7), 10)];
            boolean[] zArr = new boolean[51];
            int a = m7693a(zArr, 0, AbstractC16186t.f57144b, true) + 0;
            for (int i2 = 1; i2 <= 6; i2++) {
                int digit2 = Character.digit(str.charAt(i2), 10);
                int i3 = digit2;
                if (((i >> (6 - i2)) & 1) == 1) {
                    i3 = digit2 + 10;
                }
                a += m7693a(zArr, a, AbstractC16186t.f57148f[i3], false);
            }
            m7693a(zArr, a, AbstractC16186t.f57146d, false);
            return zArr;
        }
        throw new IllegalArgumentException("Number system must be 0 or 1");
    }
}
