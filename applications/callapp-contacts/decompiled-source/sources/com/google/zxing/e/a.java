package com.google.zxing.e;

import com.google.zxing.WriterException;
import com.google.zxing.c;
import com.google.zxing.common.b;
import com.google.zxing.e;
import com.google.zxing.e.b.f;
import java.util.Map;
/* loaded from: classes4-dex2jar.jar:com/google/zxing/e/a.class */
public final class a implements e {
    private static b a(f fVar, int i, int i2, int i3) {
        com.google.zxing.e.b.b bVar = fVar.e;
        if (bVar != null) {
            int i4 = bVar.f33024b;
            int i5 = bVar.f33025c;
            int i6 = i3 << 1;
            int i7 = i4 + i6;
            int i8 = i6 + i5;
            int max = Math.max(i, i7);
            int max2 = Math.max(i2, i8);
            int min = Math.min(max / i7, max2 / i8);
            int i9 = (max - (i4 * min)) / 2;
            int i10 = (max2 - (i5 * min)) / 2;
            b bVar2 = new b(max, max2);
            int i11 = 0;
            while (i11 < i5) {
                int i12 = 0;
                while (i12 < i4) {
                    if (bVar.a(i12, i11) == 1) {
                        bVar2.a(i9, i10, min, min);
                    }
                    i12++;
                    i9 += min;
                }
                i11++;
                i10 += min;
            }
            return bVar2;
        }
        throw new IllegalStateException();
    }

    @Override // com.google.zxing.e
    public final b a(String str, com.google.zxing.a aVar, int i, int i2, Map<c, ?> map) throws WriterException {
        if (str.isEmpty()) {
            throw new IllegalArgumentException("Found empty contents");
        } else if (aVar != com.google.zxing.a.QR_CODE) {
            throw new IllegalArgumentException("Can only encode QR_CODE, but got ".concat(String.valueOf(aVar)));
        } else if (i < 0 || i2 < 0) {
            throw new IllegalArgumentException("Requested dimensions are too small: " + i + 'x' + i2);
        } else {
            com.google.zxing.e.a.a aVar2 = com.google.zxing.e.a.a.L;
            int i3 = 4;
            com.google.zxing.e.a.a aVar3 = aVar2;
            if (map != null) {
                if (map.containsKey(c.ERROR_CORRECTION)) {
                    aVar2 = com.google.zxing.e.a.a.valueOf(map.get(c.ERROR_CORRECTION).toString());
                }
                i3 = 4;
                aVar3 = aVar2;
                if (map.containsKey(c.MARGIN)) {
                    i3 = Integer.parseInt(map.get(c.MARGIN).toString());
                    aVar3 = aVar2;
                }
            }
            return a(com.google.zxing.e.b.c.a(str, aVar3, map), i, i2, i3);
        }
    }
}
