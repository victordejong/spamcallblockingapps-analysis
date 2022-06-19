package com.google.zxing.p170a;

import com.google.zxing.AbstractC5133e;
import com.google.zxing.EnumC5069a;
import com.google.zxing.EnumC5095c;
import com.google.zxing.common.C5117b;
import com.google.zxing.p170a.p171a.C5071a;
import com.google.zxing.p170a.p171a.C5073c;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.Map;
/* renamed from: com.google.zxing.a.a */
/* loaded from: classes-dex2jar.jar:com/google/zxing/a/a.class */
public final class C5070a implements AbstractC5133e {
    /* renamed from: a */
    private static C5117b m1605a(C5071a c5071a, int i, int i2) {
        C5117b m1603a = c5071a.m1603a();
        if (m1603a == null) {
            throw new IllegalStateException();
        }
        int m1459b = m1603a.m1459b();
        int m1457c = m1603a.m1457c();
        int max = Math.max(i, m1459b);
        int max2 = Math.max(i2, m1457c);
        int min = Math.min(max / m1459b, max2 / m1457c);
        int i3 = (max - (m1459b * min)) / 2;
        int i4 = (max2 - (m1457c * min)) / 2;
        C5117b c5117b = new C5117b(max, max2);
        for (int i5 = 0; i5 < m1457c; i5++) {
            int i6 = i3;
            int i7 = 0;
            while (i7 < m1459b) {
                if (m1603a.m1463a(i7, i5)) {
                    c5117b.m1462a(i6, i4, min, min);
                }
                i7++;
                i6 += min;
            }
            i4 += min;
        }
        return c5117b;
    }

    /* renamed from: a */
    private static C5117b m1604a(String str, EnumC5069a enumC5069a, int i, int i2, Charset charset, int i3, int i4) {
        if (enumC5069a != EnumC5069a.AZTEC) {
            throw new IllegalArgumentException("Can only encode AZTEC, but got ".concat(String.valueOf(enumC5069a)));
        }
        return m1605a(C5073c.m1590a(str.getBytes(charset), i3, i4), i, i2);
    }

    @Override // com.google.zxing.AbstractC5133e
    /* renamed from: a */
    public C5117b mo1394a(String str, EnumC5069a enumC5069a, int i, int i2, Map<EnumC5095c, ?> map) {
        Charset charset;
        int i3;
        Charset charset2 = StandardCharsets.ISO_8859_1;
        int i4 = 33;
        Charset charset3 = charset2;
        int i5 = 33;
        if (map != null) {
            if (map.containsKey(EnumC5095c.CHARACTER_SET)) {
                charset2 = Charset.forName(map.get(EnumC5095c.CHARACTER_SET).toString());
            }
            if (map.containsKey(EnumC5095c.ERROR_CORRECTION)) {
                i4 = Integer.parseInt(map.get(EnumC5095c.ERROR_CORRECTION).toString());
            }
            charset3 = charset2;
            i5 = i4;
            if (map.containsKey(EnumC5095c.AZTEC_LAYERS)) {
                int parseInt = Integer.parseInt(map.get(EnumC5095c.AZTEC_LAYERS).toString());
                i5 = i4;
                charset = charset2;
                i3 = parseInt;
                return m1604a(str, enumC5069a, i, i2, charset, i5, i3);
            }
        }
        charset = charset3;
        i3 = 0;
        return m1604a(str, enumC5069a, i, i2, charset, i5, i3);
    }
}
