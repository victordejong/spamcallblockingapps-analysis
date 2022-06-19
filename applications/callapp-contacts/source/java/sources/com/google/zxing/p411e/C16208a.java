package com.google.zxing.p411e;

import com.google.zxing.AbstractC16207e;
import com.google.zxing.EnumC16139a;
import com.google.zxing.EnumC16165c;
import com.google.zxing.WriterException;
import com.google.zxing.common.C16191b;
import com.google.zxing.p411e.p412a.EnumC16209a;
import com.google.zxing.p411e.p413b.C16215b;
import com.google.zxing.p411e.p413b.C16216c;
import com.google.zxing.p411e.p413b.C16220f;
import java.util.Map;
/* renamed from: com.google.zxing.e.a */
/* loaded from: classes4-dex2jar.jar:com/google/zxing/e/a.class */
public final class C16208a implements AbstractC16207e {
    /* renamed from: a */
    private static C16191b m7643a(C16220f c16220f, int i, int i2, int i3) {
        C16215b c16215b = c16220f.f57236e;
        if (c16215b != null) {
            int i4 = c16215b.f57224b;
            int i5 = c16215b.f57225c;
            int i6 = i3 << 1;
            int i7 = i4 + i6;
            int i8 = i6 + i5;
            int max = Math.max(i, i7);
            int max2 = Math.max(i2, i8);
            int min = Math.min(max / i7, max2 / i8);
            int i9 = (max - (i4 * min)) / 2;
            int i10 = (max2 - (i5 * min)) / 2;
            C16191b c16191b = new C16191b(max, max2);
            int i11 = 0;
            while (i11 < i5) {
                int i12 = i9;
                int i13 = 0;
                while (i13 < i4) {
                    if (c16215b.m7636a(i13, i11) == 1) {
                        c16191b.m7677a(i12, i10, min, min);
                    }
                    i13++;
                    i12 += min;
                }
                i11++;
                i10 += min;
            }
            return c16191b;
        }
        throw new IllegalStateException();
    }

    @Override // com.google.zxing.AbstractC16207e
    /* renamed from: a */
    public final C16191b mo7642a(String str, EnumC16139a enumC16139a, int i, int i2, Map<EnumC16165c, ?> map) throws WriterException {
        if (!str.isEmpty()) {
            if (enumC16139a != EnumC16139a.QR_CODE) {
                throw new IllegalArgumentException("Can only encode QR_CODE, but got ".concat(String.valueOf(enumC16139a)));
            }
            if (i < 0 || i2 < 0) {
                throw new IllegalArgumentException("Requested dimensions are too small: " + i + 'x' + i2);
            }
            EnumC16209a enumC16209a = EnumC16209a.L;
            int i3 = 4;
            EnumC16209a enumC16209a2 = enumC16209a;
            if (map != null) {
                if (map.containsKey(EnumC16165c.ERROR_CORRECTION)) {
                    enumC16209a = EnumC16209a.valueOf(map.get(EnumC16165c.ERROR_CORRECTION).toString());
                }
                i3 = 4;
                enumC16209a2 = enumC16209a;
                if (map.containsKey(EnumC16165c.MARGIN)) {
                    i3 = Integer.parseInt(map.get(EnumC16165c.MARGIN).toString());
                    enumC16209a2 = enumC16209a;
                }
            }
            return m7643a(C16216c.m7624a(str, enumC16209a2, map), i, i2, i3);
        }
        throw new IllegalArgumentException("Found empty contents");
    }
}
