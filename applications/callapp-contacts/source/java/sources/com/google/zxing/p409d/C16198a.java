package com.google.zxing.p409d;

import com.google.zxing.AbstractC16207e;
import com.google.zxing.EnumC16139a;
import com.google.zxing.EnumC16165c;
import com.google.zxing.WriterException;
import com.google.zxing.common.C16191b;
import com.google.zxing.p409d.p410a.C16202d;
import com.google.zxing.p409d.p410a.C16203e;
import com.google.zxing.p409d.p410a.EnumC16201c;
import java.nio.charset.Charset;
import java.util.Map;
/* renamed from: com.google.zxing.d.a */
/* loaded from: classes4-dex2jar.jar:com/google/zxing/d/a.class */
public final class C16198a implements AbstractC16207e {
    /* renamed from: a */
    private static C16191b m7665a(byte[][] bArr, int i) {
        int i2 = i * 2;
        C16191b c16191b = new C16191b(bArr[0].length + i2, bArr.length + i2);
        c16191b.m7679a();
        int i3 = (c16191b.f57158b - i) - 1;
        int i4 = 0;
        while (i4 < bArr.length) {
            byte[] bArr2 = bArr[i4];
            for (int i5 = 0; i5 < bArr[0].length; i5++) {
                if (bArr2[i5] == 1) {
                    c16191b.m7676b(i5 + i, i3);
                }
            }
            i4++;
            i3--;
        }
        return c16191b;
    }

    /* renamed from: a */
    private static byte[][] m7666a(byte[][] bArr) {
        byte[][] bArr2 = new byte[bArr[0].length][bArr.length];
        for (int i = 0; i < bArr.length; i++) {
            int length = bArr.length;
            for (int i2 = 0; i2 < bArr[0].length; i2++) {
                bArr2[i2][(length - i) - 1] = bArr[i][i2];
            }
        }
        return bArr2;
    }

    @Override // com.google.zxing.AbstractC16207e
    /* renamed from: a */
    public final C16191b mo7642a(String str, EnumC16139a enumC16139a, int i, int i2, Map<EnumC16165c, ?> map) throws WriterException {
        boolean z;
        if (enumC16139a == EnumC16139a.PDF_417) {
            C16203e c16203e = new C16203e();
            int i3 = 30;
            int i4 = 2;
            int i5 = 30;
            int i6 = 2;
            if (map != null) {
                if (map.containsKey(EnumC16165c.PDF417_COMPACT)) {
                    c16203e.f57193b = Boolean.valueOf(map.get(EnumC16165c.PDF417_COMPACT).toString()).booleanValue();
                }
                if (map.containsKey(EnumC16165c.PDF417_COMPACTION)) {
                    c16203e.f57194c = EnumC16201c.valueOf(map.get(EnumC16165c.PDF417_COMPACTION).toString());
                }
                if (map.containsKey(EnumC16165c.PDF417_DIMENSIONS)) {
                    C16202d c16202d = (C16202d) map.get(EnumC16165c.PDF417_DIMENSIONS);
                    int i7 = c16202d.f57188b;
                    int i8 = c16202d.f57187a;
                    int i9 = c16202d.f57190d;
                    int i10 = c16202d.f57189c;
                    c16203e.f57197f = i7;
                    c16203e.f57196e = i8;
                    c16203e.f57198g = i9;
                    c16203e.f57199h = i10;
                }
                if (map.containsKey(EnumC16165c.MARGIN)) {
                    i3 = Integer.parseInt(map.get(EnumC16165c.MARGIN).toString());
                }
                if (map.containsKey(EnumC16165c.ERROR_CORRECTION)) {
                    i4 = Integer.parseInt(map.get(EnumC16165c.ERROR_CORRECTION).toString());
                }
                i5 = i3;
                i6 = i4;
                if (map.containsKey(EnumC16165c.CHARACTER_SET)) {
                    c16203e.f57195d = Charset.forName(map.get(EnumC16165c.CHARACTER_SET).toString());
                    i6 = i4;
                    i5 = i3;
                }
            }
            c16203e.m7658a(str, i6);
            byte[][] m7663a = c16203e.f57192a.m7663a(1, 4);
            if ((i2 > i) != (m7663a[0].length < m7663a.length)) {
                m7663a = m7666a(m7663a);
                z = true;
            } else {
                z = false;
            }
            int length = i / m7663a[0].length;
            int length2 = i2 / m7663a.length;
            if (length >= length2) {
                length = length2;
            }
            if (length <= 1) {
                return m7665a(m7663a, i5);
            }
            byte[][] m7663a2 = c16203e.f57192a.m7663a(length, length << 2);
            byte[][] bArr = m7663a2;
            if (z) {
                bArr = m7666a(m7663a2);
            }
            return m7665a(bArr, i5);
        }
        throw new IllegalArgumentException("Can only encode PDF_417, but got ".concat(String.valueOf(enumC16139a)));
    }
}
