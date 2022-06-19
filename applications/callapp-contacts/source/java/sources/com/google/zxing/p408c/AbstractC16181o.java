package com.google.zxing.p408c;

import com.google.zxing.AbstractC16207e;
import com.google.zxing.EnumC16139a;
import com.google.zxing.EnumC16165c;
import com.google.zxing.WriterException;
import com.google.zxing.common.C16191b;
import java.util.Map;
/* renamed from: com.google.zxing.c.o */
/* loaded from: classes4-dex2jar.jar:com/google/zxing/c/o.class */
public abstract class AbstractC16181o implements AbstractC16207e {
    /* renamed from: a */
    public static int m7693a(boolean[] zArr, int i, int[] iArr, boolean z) {
        int i2 = 0;
        int i3 = i;
        for (int i4 : iArr) {
            int i5 = 0;
            while (i5 < i4) {
                zArr[i3] = z;
                i5++;
                i3++;
            }
            i2 += i4;
            z = !z;
        }
        return i2;
    }

    /* renamed from: a */
    private static C16191b m7694a(boolean[] zArr, int i, int i2, int i3) {
        int length = zArr.length;
        int i4 = i3 + length;
        int max = Math.max(i, i4);
        int max2 = Math.max(1, i2);
        int i5 = max / i4;
        int i6 = (max - (length * i5)) / 2;
        C16191b c16191b = new C16191b(max, max2);
        int i7 = 0;
        while (i7 < length) {
            if (zArr[i7]) {
                c16191b.m7677a(i6, 0, i5, max2);
            }
            i7++;
            i6 += i5;
        }
        return c16191b;
    }

    /* renamed from: a */
    public int mo7690a() {
        return 10;
    }

    @Override // com.google.zxing.AbstractC16207e
    /* renamed from: a */
    public C16191b mo7642a(String str, EnumC16139a enumC16139a, int i, int i2, Map<EnumC16165c, ?> map) throws WriterException {
        if (!str.isEmpty()) {
            if (i < 0 || i2 < 0) {
                throw new IllegalArgumentException("Negative size is not allowed. Input: " + i + 'x' + i2);
            }
            int mo7690a = mo7690a();
            int i3 = mo7690a;
            if (map != null) {
                i3 = mo7690a;
                if (map.containsKey(EnumC16165c.MARGIN)) {
                    i3 = Integer.parseInt(map.get(EnumC16165c.MARGIN).toString());
                }
            }
            return m7694a(mo7688a(str), i, i2, i3);
        }
        throw new IllegalArgumentException("Found empty contents");
    }

    /* renamed from: a */
    public abstract boolean[] mo7688a(String str);
}
