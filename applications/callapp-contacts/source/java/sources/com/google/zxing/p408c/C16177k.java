package com.google.zxing.p408c;

import com.google.zxing.EnumC16139a;
import com.google.zxing.EnumC16165c;
import com.google.zxing.FormatException;
import com.google.zxing.WriterException;
import com.google.zxing.common.C16191b;
import java.util.Map;
/* renamed from: com.google.zxing.c.k */
/* loaded from: classes4-dex2jar.jar:com/google/zxing/c/k.class */
public final class C16177k extends AbstractC16187u {
    @Override // com.google.zxing.p408c.AbstractC16181o, com.google.zxing.AbstractC16207e
    /* renamed from: a */
    public final C16191b mo7642a(String str, EnumC16139a enumC16139a, int i, int i2, Map<EnumC16165c, ?> map) throws WriterException {
        if (enumC16139a == EnumC16139a.EAN_8) {
            return super.mo7642a(str, enumC16139a, i, i2, map);
        }
        throw new IllegalArgumentException("Can only encode EAN_8, but got ".concat(String.valueOf(enumC16139a)));
    }

    @Override // com.google.zxing.p408c.AbstractC16181o
    /* renamed from: a */
    public final boolean[] mo7688a(String str) {
        int length = str.length();
        if (length == 7) {
            try {
                str = str + AbstractC16186t.m7691b(str);
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
        boolean[] zArr = new boolean[67];
        int a = m7693a(zArr, 0, AbstractC16186t.f57144b, true) + 0;
        for (int i = 0; i <= 3; i++) {
            a += m7693a(zArr, a, AbstractC16186t.f57147e[Character.digit(str.charAt(i), 10)], false);
        }
        int a2 = a + m7693a(zArr, a, AbstractC16186t.f57145c, false);
        for (int i2 = 4; i2 <= 7; i2++) {
            a2 += m7693a(zArr, a2, AbstractC16186t.f57147e[Character.digit(str.charAt(i2), 10)], true);
        }
        m7693a(zArr, a2, AbstractC16186t.f57144b, true);
        return zArr;
    }
}
