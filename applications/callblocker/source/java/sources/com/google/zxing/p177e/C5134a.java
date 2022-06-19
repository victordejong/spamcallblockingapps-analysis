package com.google.zxing.p177e;

import com.google.zxing.AbstractC5133e;
import com.google.zxing.EnumC5069a;
import com.google.zxing.EnumC5095c;
import com.google.zxing.common.C5117b;
import com.google.zxing.p177e.p178a.EnumC5135a;
import com.google.zxing.p177e.p179b.C5141b;
import com.google.zxing.p177e.p179b.C5142c;
import com.google.zxing.p177e.p179b.C5146f;
import java.util.Map;
/* renamed from: com.google.zxing.e.a */
/* loaded from: classes-dex2jar.jar:com/google/zxing/e/a.class */
public final class C5134a implements AbstractC5133e {
    /* renamed from: a */
    private static C5117b m1395a(C5146f c5146f, int i, int i2, int i3) {
        C5141b m1320a = c5146f.m1320a();
        if (m1320a == null) {
            throw new IllegalStateException();
        }
        int m1371b = m1320a.m1371b();
        int m1376a = m1320a.m1376a();
        int i4 = (i3 << 1) + m1371b;
        int i5 = (i3 << 1) + m1376a;
        int max = Math.max(i, i4);
        int max2 = Math.max(i2, i5);
        int min = Math.min(max / i4, max2 / i5);
        int i6 = (max - (m1371b * min)) / 2;
        int i7 = (max2 - (m1376a * min)) / 2;
        C5117b c5117b = new C5117b(max, max2);
        for (int i8 = 0; i8 < m1376a; i8++) {
            int i9 = 0;
            int i10 = i6;
            while (true) {
                int i11 = i10;
                if (i9 < m1371b) {
                    if (m1320a.m1374a(i9, i8) == 1) {
                        c5117b.m1462a(i11, i7, min, min);
                    }
                    i9++;
                    i10 = i11 + min;
                }
            }
            i7 += min;
        }
        return c5117b;
    }

    @Override // com.google.zxing.AbstractC5133e
    /* renamed from: a */
    public C5117b mo1394a(String str, EnumC5069a enumC5069a, int i, int i2, Map<EnumC5095c, ?> map) {
        if (str.isEmpty()) {
            throw new IllegalArgumentException("Found empty contents");
        }
        if (enumC5069a != EnumC5069a.QR_CODE) {
            throw new IllegalArgumentException("Can only encode QR_CODE, but got ".concat(String.valueOf(enumC5069a)));
        }
        if (i < 0 || i2 < 0) {
            throw new IllegalArgumentException("Requested dimensions are too small: " + i + 'x' + i2);
        }
        EnumC5135a enumC5135a = EnumC5135a.L;
        EnumC5135a enumC5135a2 = enumC5135a;
        int i3 = 4;
        if (map != null) {
            if (map.containsKey(EnumC5095c.ERROR_CORRECTION)) {
                enumC5135a = EnumC5135a.valueOf(map.get(EnumC5095c.ERROR_CORRECTION).toString());
            }
            enumC5135a2 = enumC5135a;
            i3 = 4;
            if (map.containsKey(EnumC5095c.MARGIN)) {
                i3 = Integer.parseInt(map.get(EnumC5095c.MARGIN).toString());
                enumC5135a2 = enumC5135a;
            }
        }
        return m1395a(C5142c.m1352a(str, enumC5135a2, map), i, i2, i3);
    }
}
