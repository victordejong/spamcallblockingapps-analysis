package com.google.zxing.p406b;

import com.google.zxing.AbstractC16207e;
import com.google.zxing.C16149b;
import com.google.zxing.EnumC16139a;
import com.google.zxing.EnumC16165c;
import com.google.zxing.common.C16191b;
import com.google.zxing.p406b.p407a.C16155e;
import com.google.zxing.p406b.p407a.C16159i;
import com.google.zxing.p406b.p407a.C16160j;
import com.google.zxing.p406b.p407a.C16161k;
import com.google.zxing.p406b.p407a.EnumC16162l;
import com.google.zxing.p411e.p413b.C16215b;
import java.util.Map;
/* renamed from: com.google.zxing.b.a */
/* loaded from: classes4-dex2jar.jar:com/google/zxing/b/a.class */
public final class C16150a implements AbstractC16207e {
    /* renamed from: a */
    private static C16191b m7744a(C16155e c16155e, C16161k c16161k, int i, int i2) {
        int i3;
        int i4;
        C16191b c16191b;
        int m7712b = c16161k.m7712b();
        int m7711c = c16161k.m7711c();
        C16215b c16215b = new C16215b(c16161k.m7710d(), c16161k.m7709e());
        int i5 = 0;
        for (int i6 = 0; i6 < m7711c; i6++) {
            int i7 = i5;
            if (i6 % c16161k.f57097e == 0) {
                int i8 = 0;
                for (int i9 = 0; i9 < c16161k.m7710d(); i9++) {
                    c16215b.m7634a(i8, i5, i9 % 2 == 0);
                    i8++;
                }
                i7 = i5 + 1;
            }
            int i10 = 0;
            for (int i11 = 0; i11 < m7712b; i11++) {
                int i12 = i10;
                if (i11 % c16161k.f57096d == 0) {
                    c16215b.m7634a(i10, i7, true);
                    i12 = i10 + 1;
                }
                c16215b.m7634a(i12, i7, c16155e.f57076b[(c16155e.f57075a * i6) + i11] == 1);
                int i13 = i12 + 1;
                i10 = i13;
                if (i11 % c16161k.f57096d == c16161k.f57096d - 1) {
                    c16215b.m7634a(i13, i7, i6 % 2 == 0);
                    i10 = i13 + 1;
                }
            }
            int i14 = i7 + 1;
            i5 = i14;
            if (i6 % c16161k.f57097e == c16161k.f57097e - 1) {
                int i15 = 0;
                for (int i16 = 0; i16 < c16161k.m7710d(); i16++) {
                    c16215b.m7634a(i15, i14, true);
                    i15++;
                }
                i5 = i14 + 1;
            }
        }
        int i17 = c16215b.f57224b;
        int i18 = c16215b.f57225c;
        int max = Math.max(i, i17);
        int max2 = Math.max(i2, i18);
        int min = Math.min(max / i17, max2 / i18);
        int i19 = (max - (i17 * min)) / 2;
        int i20 = (max2 - (i18 * min)) / 2;
        if (i2 < i18 || i < i17) {
            c16191b = new C16191b(i17, i18);
            i4 = 0;
            i3 = 0;
        } else {
            c16191b = new C16191b(i, i2);
            i4 = i19;
            i3 = i20;
        }
        c16191b.m7679a();
        int i21 = 0;
        while (i21 < i18) {
            int i22 = i4;
            int i23 = 0;
            while (i23 < i17) {
                if (c16215b.m7636a(i23, i21) == 1) {
                    c16191b.m7677a(i22, i3, min, min);
                }
                i23++;
                i22 += min;
            }
            i21++;
            i3 += min;
        }
        return c16191b;
    }

    @Override // com.google.zxing.AbstractC16207e
    /* renamed from: a */
    public final C16191b mo7642a(String str, EnumC16139a enumC16139a, int i, int i2, Map<EnumC16165c, ?> map) {
        C16149b c16149b;
        if (!str.isEmpty()) {
            if (enumC16139a != EnumC16139a.DATA_MATRIX) {
                throw new IllegalArgumentException("Can only encode DATA_MATRIX, but got ".concat(String.valueOf(enumC16139a)));
            }
            if (i < 0 || i2 < 0) {
                throw new IllegalArgumentException("Requested dimensions can't be negative: " + i + 'x' + i2);
            }
            EnumC16162l enumC16162l = EnumC16162l.FORCE_NONE;
            C16149b c16149b2 = null;
            if (map != null) {
                EnumC16162l enumC16162l2 = (EnumC16162l) map.get(EnumC16165c.DATA_MATRIX_SHAPE);
                if (enumC16162l2 != null) {
                    enumC16162l = enumC16162l2;
                }
                c16149b2 = (C16149b) map.get(EnumC16165c.MIN_SIZE);
                if (c16149b2 == null) {
                    c16149b2 = null;
                }
                c16149b = (C16149b) map.get(EnumC16165c.MAX_SIZE);
                if (c16149b == null) {
                    c16149b = null;
                }
            } else {
                c16149b = null;
            }
            String m7722a = C16160j.m7722a(str, enumC16162l, c16149b2, c16149b);
            C16161k m7713a = C16161k.m7713a(m7722a.length(), enumC16162l, c16149b2, c16149b);
            C16155e c16155e = new C16155e(C16159i.m7725a(m7722a, m7713a), m7713a.m7712b(), m7713a.m7711c());
            c16155e.m7741a();
            return m7744a(c16155e, m7713a, i, i2);
        }
        throw new IllegalArgumentException("Found empty contents");
    }
}
