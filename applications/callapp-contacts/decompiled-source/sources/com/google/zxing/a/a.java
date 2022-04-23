package com.google.zxing.a;

import com.google.zxing.c;
import com.google.zxing.common.b;
import com.google.zxing.e;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.Map;
/* loaded from: classes4-dex2jar.jar:com/google/zxing/a/a.class */
public final class a implements e {
    private static b a(com.google.zxing.a.a.a aVar, int i, int i2) {
        b bVar = aVar.e;
        if (bVar != null) {
            int i3 = bVar.f32980a;
            int i4 = bVar.f32981b;
            int max = Math.max(i, i3);
            int max2 = Math.max(i2, i4);
            int min = Math.min(max / i3, max2 / i4);
            int i5 = (max - (i3 * min)) / 2;
            int i6 = (max2 - (i4 * min)) / 2;
            b bVar2 = new b(max, max2);
            int i7 = 0;
            while (i7 < i4) {
                int i8 = 0;
                while (i8 < i3) {
                    if (bVar.a(i8, i7)) {
                        bVar2.a(i5, i6, min, min);
                    }
                    i8++;
                    i5 += min;
                }
                i7++;
                i6 += min;
            }
            return bVar2;
        }
        throw new IllegalStateException();
    }

    @Override // com.google.zxing.e
    public final b a(String str, com.google.zxing.a aVar, int i, int i2, Map<c, ?> map) {
        Charset charset = StandardCharsets.ISO_8859_1;
        int i3 = 33;
        Charset charset2 = charset;
        int i4 = 33;
        int i5 = 0;
        if (map != null) {
            if (map.containsKey(c.CHARACTER_SET)) {
                charset = Charset.forName(map.get(c.CHARACTER_SET).toString());
            }
            if (map.containsKey(c.ERROR_CORRECTION)) {
                i3 = Integer.parseInt(map.get(c.ERROR_CORRECTION).toString());
            }
            charset2 = charset;
            i4 = i3;
            i5 = 0;
            if (map.containsKey(c.AZTEC_LAYERS)) {
                i5 = Integer.parseInt(map.get(c.AZTEC_LAYERS).toString());
                i4 = i3;
                charset2 = charset;
            }
        }
        if (aVar == com.google.zxing.a.AZTEC) {
            return a(com.google.zxing.a.a.c.a(str.getBytes(charset2), i4, i5), i, i2);
        }
        throw new IllegalArgumentException("Can only encode AZTEC, but got ".concat(String.valueOf(aVar)));
    }
}
