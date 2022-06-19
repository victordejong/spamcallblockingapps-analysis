package com.google.zxing.p175d;

import com.google.zxing.AbstractC5133e;
import com.google.zxing.EnumC5069a;
import com.google.zxing.EnumC5095c;
import com.google.zxing.common.C5117b;
import com.google.zxing.p175d.p176a.C5128d;
import com.google.zxing.p175d.p176a.C5129e;
import com.google.zxing.p175d.p176a.EnumC5127c;
import java.nio.charset.Charset;
import java.util.Map;
/* renamed from: com.google.zxing.d.a */
/* loaded from: classes-dex2jar.jar:com/google/zxing/d/a.class */
public final class C5124a implements AbstractC5133e {
    /* renamed from: a */
    private static C5117b m1435a(C5129e c5129e, String str, int i, int i2, int i3, int i4) {
        boolean z;
        C5117b m1433a;
        c5129e.m1415a(str, i);
        byte[][] m1431a = c5129e.m1422a().m1431a(1, 4);
        if ((i3 > i2) != (m1431a[0].length < m1431a.length)) {
            m1431a = m1434a(m1431a);
            z = true;
        } else {
            z = false;
        }
        int length = i2 / m1431a[0].length;
        int length2 = i3 / m1431a.length;
        if (length >= length2) {
            length = length2;
        }
        if (length > 1) {
            byte[][] m1431a2 = c5129e.m1422a().m1431a(length, length << 2);
            if (z) {
                m1431a2 = m1434a(m1431a2);
            }
            m1433a = m1433a(m1431a2, i4);
        } else {
            m1433a = m1433a(m1431a, i4);
        }
        return m1433a;
    }

    /* renamed from: a */
    private static C5117b m1433a(byte[][] bArr, int i) {
        C5117b c5117b = new C5117b(bArr[0].length + (i * 2), bArr.length + (i * 2));
        c5117b.m1464a();
        int m1457c = (c5117b.m1457c() - i) - 1;
        int i2 = 0;
        while (i2 < bArr.length) {
            byte[] bArr2 = bArr[i2];
            for (int i3 = 0; i3 < bArr[0].length; i3++) {
                if (bArr2[i3] == 1) {
                    c5117b.m1458b(i3 + i, m1457c);
                }
            }
            i2++;
            m1457c--;
        }
        return c5117b;
    }

    /* renamed from: a */
    private static byte[][] m1434a(byte[][] bArr) {
        byte[][] bArr2 = new byte[bArr[0].length][bArr.length];
        for (int i = 0; i < bArr.length; i++) {
            int length = bArr.length;
            for (int i2 = 0; i2 < bArr[0].length; i2++) {
                bArr2[i2][(length - i) - 1] = bArr[i][i2];
            }
        }
        return bArr2;
    }

    @Override // com.google.zxing.AbstractC5133e
    /* renamed from: a */
    public C5117b mo1394a(String str, EnumC5069a enumC5069a, int i, int i2, Map<EnumC5095c, ?> map) {
        int i3;
        if (enumC5069a != EnumC5069a.PDF_417) {
            throw new IllegalArgumentException("Can only encode PDF_417, but got ".concat(String.valueOf(enumC5069a)));
        }
        C5129e c5129e = new C5129e();
        int i4 = 2;
        if (map != null) {
            if (map.containsKey(EnumC5095c.PDF417_COMPACT)) {
                c5129e.m1413a(Boolean.valueOf(map.get(EnumC5095c.PDF417_COMPACT).toString()).booleanValue());
            }
            if (map.containsKey(EnumC5095c.PDF417_COMPACTION)) {
                c5129e.m1417a(EnumC5127c.valueOf(map.get(EnumC5095c.PDF417_COMPACTION).toString()));
            }
            if (map.containsKey(EnumC5095c.PDF417_DIMENSIONS)) {
                C5128d c5128d = (C5128d) map.get(EnumC5095c.PDF417_DIMENSIONS);
                c5129e.m1419a(c5128d.m1425b(), c5128d.m1426a(), c5128d.m1423d(), c5128d.m1424c());
            }
            i3 = map.containsKey(EnumC5095c.MARGIN) ? Integer.parseInt(map.get(EnumC5095c.MARGIN).toString()) : 30;
            if (map.containsKey(EnumC5095c.ERROR_CORRECTION)) {
                i4 = Integer.parseInt(map.get(EnumC5095c.ERROR_CORRECTION).toString());
            }
            if (map.containsKey(EnumC5095c.CHARACTER_SET)) {
                c5129e.m1414a(Charset.forName(map.get(EnumC5095c.CHARACTER_SET).toString()));
            }
        } else {
            i3 = 30;
        }
        return m1435a(c5129e, str, i4, i, i2, i3);
    }
}
