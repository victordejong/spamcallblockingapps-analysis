package com.google.zxing.d;

import com.google.zxing.WriterException;
import com.google.zxing.c;
import com.google.zxing.common.b;
import com.google.zxing.d.a.d;
import com.google.zxing.e;
import java.nio.charset.Charset;
import java.util.Map;
/* loaded from: classes4-dex2jar.jar:com/google/zxing/d/a.class */
public final class a implements e {
    private static b a(byte[][] bArr, int i) {
        int i2 = i * 2;
        b bVar = new b(bArr[0].length + i2, bArr.length + i2);
        bVar.a();
        int i3 = (bVar.f32981b - i) - 1;
        int i4 = 0;
        while (i4 < bArr.length) {
            byte[] bArr2 = bArr[i4];
            for (int i5 = 0; i5 < bArr[0].length; i5++) {
                if (bArr2[i5] == 1) {
                    bVar.b(i5 + i, i3);
                }
            }
            i4++;
            i3--;
        }
        return bVar;
    }

    private static byte[][] a(byte[][] bArr) {
        byte[][] bArr2 = new byte[bArr[0].length][bArr.length];
        for (int i = 0; i < bArr.length; i++) {
            int length = bArr.length;
            for (int i2 = 0; i2 < bArr[0].length; i2++) {
                bArr2[i2][(length - i) - 1] = bArr[i][i2];
            }
        }
        return bArr2;
    }

    @Override // com.google.zxing.e
    public final b a(String str, com.google.zxing.a aVar, int i, int i2, Map<c, ?> map) throws WriterException {
        boolean z;
        if (aVar == com.google.zxing.a.PDF_417) {
            com.google.zxing.d.a.e eVar = new com.google.zxing.d.a.e();
            int i3 = 30;
            int i4 = 2;
            int i5 = 30;
            int i6 = 2;
            if (map != null) {
                if (map.containsKey(c.PDF417_COMPACT)) {
                    eVar.f33004b = Boolean.valueOf(map.get(c.PDF417_COMPACT).toString()).booleanValue();
                }
                if (map.containsKey(c.PDF417_COMPACTION)) {
                    eVar.f33005c = com.google.zxing.d.a.c.valueOf(map.get(c.PDF417_COMPACTION).toString());
                }
                if (map.containsKey(c.PDF417_DIMENSIONS)) {
                    d dVar = (d) map.get(c.PDF417_DIMENSIONS);
                    int i7 = dVar.f33000b;
                    int i8 = dVar.f32999a;
                    int i9 = dVar.f33002d;
                    int i10 = dVar.f33001c;
                    eVar.f = i7;
                    eVar.e = i8;
                    eVar.g = i9;
                    eVar.h = i10;
                }
                if (map.containsKey(c.MARGIN)) {
                    i3 = Integer.parseInt(map.get(c.MARGIN).toString());
                }
                if (map.containsKey(c.ERROR_CORRECTION)) {
                    i4 = Integer.parseInt(map.get(c.ERROR_CORRECTION).toString());
                }
                i5 = i3;
                i6 = i4;
                if (map.containsKey(c.CHARACTER_SET)) {
                    eVar.f33006d = Charset.forName(map.get(c.CHARACTER_SET).toString());
                    i6 = i4;
                    i5 = i3;
                }
            }
            eVar.a(str, i6);
            byte[][] a2 = eVar.f33003a.a(1, 4);
            if ((i2 > i) != (a2[0].length < a2.length)) {
                a2 = a(a2);
                z = true;
            } else {
                z = false;
            }
            int length = i / a2[0].length;
            int length2 = i2 / a2.length;
            if (length >= length2) {
                length = length2;
            }
            if (length <= 1) {
                return a(a2, i5);
            }
            byte[][] a3 = eVar.f33003a.a(length, length << 2);
            byte[][] bArr = a3;
            if (z) {
                bArr = a(a3);
            }
            return a(bArr, i5);
        }
        throw new IllegalArgumentException("Can only encode PDF_417, but got ".concat(String.valueOf(aVar)));
    }
}
