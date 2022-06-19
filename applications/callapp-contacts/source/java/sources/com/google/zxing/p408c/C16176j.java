package com.google.zxing.p408c;

import com.google.zxing.EnumC16139a;
import com.google.zxing.EnumC16165c;
import com.google.zxing.FormatException;
import com.google.zxing.WriterException;
import com.google.zxing.common.C16191b;
import java.util.Map;
/* renamed from: com.google.zxing.c.j */
/* loaded from: classes4-dex2jar.jar:com/google/zxing/c/j.class */
public final class C16176j extends AbstractC16187u {
    @Override // com.google.zxing.p408c.AbstractC16181o, com.google.zxing.AbstractC16207e
    /* renamed from: a */
    public final C16191b mo7642a(String str, EnumC16139a enumC16139a, int i, int i2, Map<EnumC16165c, ?> map) throws WriterException {
        if (enumC16139a == EnumC16139a.EAN_13) {
            return super.mo7642a(str, enumC16139a, i, i2, map);
        }
        throw new IllegalArgumentException("Can only encode EAN_13, but got ".concat(String.valueOf(enumC16139a)));
    }

    @Override // com.google.zxing.p408c.AbstractC16181o
    /* renamed from: a */
    public final boolean[] mo7688a(String str) {
        int length = str.length();
        if (length == 12) {
            try {
                str = str + AbstractC16186t.m7691b(str);
            } catch (FormatException e) {
                throw new IllegalArgumentException(e);
            }
        } else if (length != 13) {
            throw new IllegalArgumentException("Requested contents should be 12 or 13 digits long, but got ".concat(String.valueOf(length)));
        } else {
            try {
                if (!AbstractC16186t.m7692a(str)) {
                    throw new IllegalArgumentException("Contents do not pass checksum");
                }
            } catch (FormatException e2) {
                throw new IllegalArgumentException("Illegal contents");
            }
        }
        int i = C16175i.f57128a[Character.digit(str.charAt(0), 10)];
        boolean[] zArr = new boolean[95];
        int a = m7693a(zArr, 0, AbstractC16186t.f57144b, true) + 0;
        for (int i2 = 1; i2 <= 6; i2++) {
            int digit = Character.digit(str.charAt(i2), 10);
            int i3 = digit;
            if (((i >> (6 - i2)) & 1) == 1) {
                i3 = digit + 10;
            }
            a += m7693a(zArr, a, AbstractC16186t.f57148f[i3], false);
        }
        int a2 = a + m7693a(zArr, a, AbstractC16186t.f57145c, false);
        for (int i4 = 7; i4 <= 12; i4++) {
            a2 += m7693a(zArr, a2, AbstractC16186t.f57147e[Character.digit(str.charAt(i4), 10)], true);
        }
        m7693a(zArr, a2, AbstractC16186t.f57144b, true);
        return zArr;
    }
}
