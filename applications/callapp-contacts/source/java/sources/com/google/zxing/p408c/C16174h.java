package com.google.zxing.p408c;

import com.google.zxing.EnumC16139a;
import com.google.zxing.EnumC16165c;
import com.google.zxing.WriterException;
import com.google.zxing.common.C16191b;
import java.util.Map;
/* renamed from: com.google.zxing.c.h */
/* loaded from: classes4-dex2jar.jar:com/google/zxing/c/h.class */
public final class C16174h extends AbstractC16181o {
    /* renamed from: a */
    private static int m7696a(String str, int i) {
        int i2 = 0;
        int i3 = 1;
        for (int length = str.length() - 1; length >= 0; length--) {
            i2 += "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%abcd*".indexOf(str.charAt(length)) * i3;
            int i4 = i3 + 1;
            i3 = i4;
            if (i4 > i) {
                i3 = 1;
            }
        }
        return i2 % 47;
    }

    /* renamed from: a */
    private static int m7695a(boolean[] zArr, int i, int[] iArr) {
        int i2 = 0;
        while (i2 < 9) {
            zArr[i] = iArr[i2] != 0;
            i2++;
            i++;
        }
        return 9;
    }

    /* renamed from: a */
    private static void m7697a(int i, int[] iArr) {
        for (int i2 = 0; i2 < 9; i2++) {
            int i3 = 1;
            if (((1 << (8 - i2)) & i) == 0) {
                i3 = 0;
            }
            iArr[i2] = i3;
        }
    }

    @Override // com.google.zxing.p408c.AbstractC16181o, com.google.zxing.AbstractC16207e
    /* renamed from: a */
    public final C16191b mo7642a(String str, EnumC16139a enumC16139a, int i, int i2, Map<EnumC16165c, ?> map) throws WriterException {
        if (enumC16139a == EnumC16139a.CODE_93) {
            return super.mo7642a(str, enumC16139a, i, i2, map);
        }
        throw new IllegalArgumentException("Can only encode CODE_93, but got ".concat(String.valueOf(enumC16139a)));
    }

    @Override // com.google.zxing.p408c.AbstractC16181o
    /* renamed from: a */
    public final boolean[] mo7688a(String str) {
        int m7696a;
        int length = str.length();
        if (length <= 80) {
            int[] iArr = new int[9];
            int length2 = str.length();
            m7697a(C16173g.f57123a[47], iArr);
            boolean[] zArr = new boolean[((length2 + 2 + 2) * 9) + 1];
            int m7695a = m7695a(zArr, 0, iArr);
            for (int i = 0; i < length; i++) {
                m7697a(C16173g.f57123a["0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%abcd*".indexOf(str.charAt(i))], iArr);
                m7695a += m7695a(zArr, m7695a, iArr);
            }
            m7697a(C16173g.f57123a[m7696a(str, 20)], iArr);
            int m7695a2 = m7695a + m7695a(zArr, m7695a, iArr);
            m7697a(C16173g.f57123a[m7696a(str + "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%abcd*".charAt(m7696a), 15)], iArr);
            int m7695a3 = m7695a2 + m7695a(zArr, m7695a2, iArr);
            m7697a(C16173g.f57123a[47], iArr);
            zArr[m7695a3 + m7695a(zArr, m7695a3, iArr)] = true;
            return zArr;
        }
        throw new IllegalArgumentException("Requested contents should be less than 80 digits long, but got ".concat(String.valueOf(length)));
    }
}
