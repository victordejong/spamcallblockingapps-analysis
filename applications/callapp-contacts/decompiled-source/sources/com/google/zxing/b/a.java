package com.google.zxing.b;

import com.google.zxing.b.a.i;
import com.google.zxing.b.a.j;
import com.google.zxing.b.a.k;
import com.google.zxing.b.a.l;
import com.google.zxing.c;
import com.google.zxing.common.b;
import com.google.zxing.e;
import java.util.Map;
/* loaded from: classes4-dex2jar.jar:com/google/zxing/b/a.class */
public final class a implements e {
    private static b a(com.google.zxing.b.a.e eVar, k kVar, int i, int i2) {
        b bVar;
        int b2 = kVar.b();
        int c2 = kVar.c();
        com.google.zxing.e.b.b bVar2 = new com.google.zxing.e.b.b(kVar.d(), kVar.e());
        int i3 = 0;
        for (int i4 = 0; i4 < c2; i4++) {
            int i5 = i3;
            if (i4 % kVar.e == 0) {
                int i6 = 0;
                for (int i7 = 0; i7 < kVar.d(); i7++) {
                    bVar2.a(i6, i3, i7 % 2 == 0);
                    i6++;
                }
                i5 = i3 + 1;
            }
            int i8 = 0;
            for (int i9 = 0; i9 < b2; i9++) {
                int i10 = i8;
                if (i9 % kVar.f32936d == 0) {
                    bVar2.a(i8, i5, true);
                    i10 = i8 + 1;
                }
                bVar2.a(i10, i5, eVar.f32922b[(eVar.f32921a * i4) + i9] == 1);
                int i11 = i10 + 1;
                i8 = i11;
                if (i9 % kVar.f32936d == kVar.f32936d - 1) {
                    bVar2.a(i11, i5, i4 % 2 == 0);
                    i8 = i11 + 1;
                }
            }
            int i12 = i5 + 1;
            i3 = i12;
            if (i4 % kVar.e == kVar.e - 1) {
                int i13 = 0;
                for (int i14 = 0; i14 < kVar.d(); i14++) {
                    bVar2.a(i13, i12, true);
                    i13++;
                }
                i3 = i12 + 1;
            }
        }
        int i15 = bVar2.f33024b;
        int i16 = bVar2.f33025c;
        int max = Math.max(i, i15);
        int max2 = Math.max(i2, i16);
        int min = Math.min(max / i15, max2 / i16);
        int i17 = (max - (i15 * min)) / 2;
        int i18 = (max2 - (i16 * min)) / 2;
        if (i2 < i16 || i < i15) {
            bVar = new b(i15, i16);
            i17 = 0;
            i18 = 0;
        } else {
            bVar = new b(i, i2);
        }
        bVar.a();
        int i19 = 0;
        while (i19 < i16) {
            int i20 = 0;
            while (i20 < i15) {
                if (bVar2.a(i20, i19) == 1) {
                    bVar.a(i17, i18, min, min);
                }
                i20++;
                i17 += min;
            }
            i19++;
            i18 += min;
        }
        return bVar;
    }

    @Override // com.google.zxing.e
    public final b a(String str, com.google.zxing.a aVar, int i, int i2, Map<c, ?> map) {
        com.google.zxing.b bVar;
        if (str.isEmpty()) {
            throw new IllegalArgumentException("Found empty contents");
        } else if (aVar != com.google.zxing.a.DATA_MATRIX) {
            throw new IllegalArgumentException("Can only encode DATA_MATRIX, but got ".concat(String.valueOf(aVar)));
        } else if (i < 0 || i2 < 0) {
            throw new IllegalArgumentException("Requested dimensions can't be negative: " + i + 'x' + i2);
        } else {
            l lVar = l.FORCE_NONE;
            com.google.zxing.b bVar2 = null;
            if (map != null) {
                l lVar2 = (l) map.get(c.DATA_MATRIX_SHAPE);
                if (lVar2 != null) {
                    lVar = lVar2;
                }
                bVar2 = (com.google.zxing.b) map.get(c.MIN_SIZE);
                if (bVar2 == null) {
                    bVar2 = null;
                }
                bVar = (com.google.zxing.b) map.get(c.MAX_SIZE);
                if (bVar == null) {
                    bVar = null;
                }
            } else {
                bVar = null;
            }
            String a2 = j.a(str, lVar, bVar2, bVar);
            k a3 = k.a(a2.length(), lVar, bVar2, bVar);
            com.google.zxing.b.a.e eVar = new com.google.zxing.b.a.e(i.a(a2, a3), a3.b(), a3.c());
            eVar.a();
            return a(eVar, a3, i, i2);
        }
    }
}
