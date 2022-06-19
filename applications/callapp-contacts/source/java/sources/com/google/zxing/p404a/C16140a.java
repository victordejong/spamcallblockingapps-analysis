package com.google.zxing.p404a;

import com.google.zxing.AbstractC16207e;
import com.google.zxing.EnumC16139a;
import com.google.zxing.EnumC16165c;
import com.google.zxing.common.C16191b;
import com.google.zxing.p404a.p405a.C16141a;
import com.google.zxing.p404a.p405a.C16143c;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.Map;
/* renamed from: com.google.zxing.a.a */
/* loaded from: classes4-dex2jar.jar:com/google/zxing/a/a.class */
public final class C16140a implements AbstractC16207e {
    /* renamed from: a */
    private static C16191b m7764a(C16141a c16141a, int i, int i2) {
        C16191b c16191b = c16141a.f57054e;
        if (c16191b != null) {
            int i3 = c16191b.f57157a;
            int i4 = c16191b.f57158b;
            int max = Math.max(i, i3);
            int max2 = Math.max(i2, i4);
            int min = Math.min(max / i3, max2 / i4);
            int i5 = (max - (i3 * min)) / 2;
            int i6 = (max2 - (i4 * min)) / 2;
            C16191b c16191b2 = new C16191b(max, max2);
            int i7 = 0;
            while (i7 < i4) {
                int i8 = i5;
                int i9 = 0;
                while (i9 < i3) {
                    if (c16191b.m7678a(i9, i7)) {
                        c16191b2.m7677a(i8, i6, min, min);
                    }
                    i9++;
                    i8 += min;
                }
                i7++;
                i6 += min;
            }
            return c16191b2;
        }
        throw new IllegalStateException();
    }

    @Override // com.google.zxing.AbstractC16207e
    /* renamed from: a */
    public final C16191b mo7642a(String str, EnumC16139a enumC16139a, int i, int i2, Map<EnumC16165c, ?> map) {
        Charset charset = StandardCharsets.ISO_8859_1;
        int i3 = 33;
        Charset charset2 = charset;
        int i4 = 33;
        int i5 = 0;
        if (map != null) {
            if (map.containsKey(EnumC16165c.CHARACTER_SET)) {
                charset = Charset.forName(map.get(EnumC16165c.CHARACTER_SET).toString());
            }
            if (map.containsKey(EnumC16165c.ERROR_CORRECTION)) {
                i3 = Integer.parseInt(map.get(EnumC16165c.ERROR_CORRECTION).toString());
            }
            charset2 = charset;
            i4 = i3;
            i5 = 0;
            if (map.containsKey(EnumC16165c.AZTEC_LAYERS)) {
                i5 = Integer.parseInt(map.get(EnumC16165c.AZTEC_LAYERS).toString());
                i4 = i3;
                charset2 = charset;
            }
        }
        if (enumC16139a == EnumC16139a.AZTEC) {
            return m7764a(C16143c.m7758a(str.getBytes(charset2), i4, i5), i, i2);
        }
        throw new IllegalArgumentException("Can only encode AZTEC, but got ".concat(String.valueOf(enumC16139a)));
    }
}
