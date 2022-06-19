package com.google.zxing.p172b;

import com.google.zxing.AbstractC5133e;
import com.google.zxing.C5079b;
import com.google.zxing.EnumC5069a;
import com.google.zxing.EnumC5095c;
import com.google.zxing.common.C5117b;
import com.google.zxing.p172b.p173a.C5085e;
import com.google.zxing.p172b.p173a.C5089i;
import com.google.zxing.p172b.p173a.C5090j;
import com.google.zxing.p172b.p173a.C5091k;
import com.google.zxing.p172b.p173a.EnumC5092l;
import com.google.zxing.p177e.p179b.C5141b;
import java.util.Map;
/* renamed from: com.google.zxing.b.a */
/* loaded from: classes-dex2jar.jar:com/google/zxing/b/a.class */
public final class C5080a implements AbstractC5133e {
    /* renamed from: a */
    private static C5117b m1566a(C5085e c5085e, C5091k c5091k, int i, int i2) {
        int i3;
        int i4;
        int m1503b = c5091k.m1503b();
        int m1501c = c5091k.m1501c();
        C5141b c5141b = new C5141b(c5091k.m1500d(), c5091k.m1499e());
        int i5 = 0;
        for (int i6 = 0; i6 < m1501c; i6++) {
            if (i6 % c5091k.f21547c == 0) {
                int i7 = 0;
                for (int i8 = 0; i8 < c5091k.m1500d(); i8++) {
                    c5141b.m1372a(i7, i5, i8 % 2 == 0);
                    i7++;
                }
                i3 = i5 + 1;
            } else {
                i3 = i5;
            }
            int i9 = 0;
            for (int i10 = 0; i10 < m1503b; i10++) {
                int i11 = i9;
                if (i10 % c5091k.f21546b == 0) {
                    c5141b.m1372a(i9, i3, true);
                    i11 = i9 + 1;
                }
                c5141b.m1372a(i11, i3, c5085e.m1555a(i10, i6));
                i9 = i11 + 1;
                if (i10 % c5091k.f21546b == c5091k.f21546b - 1) {
                    c5141b.m1372a(i9, i3, i6 % 2 == 0);
                    i9++;
                }
            }
            int i12 = i3 + 1;
            if (i6 % c5091k.f21547c == c5091k.f21547c - 1) {
                int i13 = 0;
                for (int i14 = 0; i14 < c5091k.m1500d(); i14++) {
                    c5141b.m1372a(i13, i12, true);
                    i13++;
                }
                i4 = i12 + 1;
            } else {
                i4 = i12;
            }
            i5 = i4;
        }
        return m1565a(c5141b, i, i2);
    }

    /* renamed from: a */
    private static C5117b m1565a(C5141b c5141b, int i, int i2) {
        C5117b c5117b;
        int i3;
        int i4;
        int m1371b = c5141b.m1371b();
        int m1376a = c5141b.m1376a();
        int max = Math.max(i, m1371b);
        int max2 = Math.max(i2, m1376a);
        int min = Math.min(max / m1371b, max2 / m1376a);
        int i5 = (max - (m1371b * min)) / 2;
        int i6 = (max2 - (m1376a * min)) / 2;
        if (i2 < m1376a || i < m1371b) {
            c5117b = new C5117b(m1371b, m1376a);
            i3 = 0;
            i4 = 0;
        } else {
            c5117b = new C5117b(i, i2);
            i3 = i6;
            i4 = i5;
        }
        c5117b.m1464a();
        int i7 = i3;
        for (int i8 = 0; i8 < m1376a; i8++) {
            int i9 = i4;
            int i10 = 0;
            while (i10 < m1371b) {
                if (c5141b.m1374a(i10, i8) == 1) {
                    c5117b.m1462a(i9, i7, min, min);
                }
                i10++;
                i9 += min;
            }
            i7 += min;
        }
        return c5117b;
    }

    @Override // com.google.zxing.AbstractC5133e
    /* renamed from: a */
    public C5117b mo1394a(String str, EnumC5069a enumC5069a, int i, int i2, Map<EnumC5095c, ?> map) {
        C5079b c5079b;
        C5079b c5079b2;
        if (str.isEmpty()) {
            throw new IllegalArgumentException("Found empty contents");
        }
        if (enumC5069a != EnumC5069a.DATA_MATRIX) {
            throw new IllegalArgumentException("Can only encode DATA_MATRIX, but got ".concat(String.valueOf(enumC5069a)));
        }
        if (i < 0 || i2 < 0) {
            throw new IllegalArgumentException("Requested dimensions can't be negative: " + i + 'x' + i2);
        }
        EnumC5092l enumC5092l = EnumC5092l.FORCE_NONE;
        if (map != null) {
            EnumC5092l enumC5092l2 = (EnumC5092l) map.get(EnumC5095c.DATA_MATRIX_SHAPE);
            if (enumC5092l2 != null) {
                enumC5092l = enumC5092l2;
            }
            c5079b2 = (C5079b) map.get(EnumC5095c.MIN_SIZE);
            if (c5079b2 == null) {
                c5079b2 = null;
            }
            c5079b = (C5079b) map.get(EnumC5095c.MAX_SIZE);
            if (c5079b == null) {
                c5079b = null;
            }
        } else {
            c5079b = null;
            c5079b2 = null;
        }
        String m1517a = C5090j.m1517a(str, enumC5092l, c5079b2, c5079b);
        C5091k m1504a = C5091k.m1504a(m1517a.length(), enumC5092l, c5079b2, c5079b, true);
        C5085e c5085e = new C5085e(C5089i.m1522a(m1517a, m1504a), m1504a.m1503b(), m1504a.m1501c());
        c5085e.m1557a();
        return m1566a(c5085e, m1504a, i, i2);
    }
}
