package com.google.zxing.p174c;

import com.google.zxing.AbstractC5133e;
import com.google.zxing.EnumC5069a;
import com.google.zxing.EnumC5095c;
import com.google.zxing.common.C5117b;
import java.util.Map;
/* renamed from: com.google.zxing.c.n */
/* loaded from: classes-dex2jar.jar:com/google/zxing/c/n.class */
public abstract class AbstractC5110n implements AbstractC5133e {
    /* renamed from: a */
    public static int m1481a(boolean[] zArr, int i, int[] iArr, boolean z) {
        int i2 = i;
        int i3 = 0;
        for (int i4 : iArr) {
            int i5 = 0;
            while (i5 < i4) {
                zArr[i2] = z;
                i5++;
                i2++;
            }
            i3 += i4;
            z = !z;
        }
        return i3;
    }

    /* renamed from: a */
    private static C5117b m1482a(boolean[] zArr, int i, int i2, int i3) {
        int length = zArr.length;
        int i4 = length + i3;
        int max = Math.max(i, i4);
        int max2 = Math.max(1, i2);
        int i5 = max / i4;
        int i6 = (max - (length * i5)) / 2;
        C5117b c5117b = new C5117b(max, max2);
        int i7 = 0;
        while (i7 < length) {
            if (zArr[i7]) {
                c5117b.m1462a(i6, 0, i5, max2);
            }
            i7++;
            i6 += i5;
        }
        return c5117b;
    }

    /* renamed from: a */
    public int mo1478a() {
        return 10;
    }

    @Override // com.google.zxing.AbstractC5133e
    /* renamed from: a */
    public C5117b mo1394a(String str, EnumC5069a enumC5069a, int i, int i2, Map<EnumC5095c, ?> map) {
        if (str.isEmpty()) {
            throw new IllegalArgumentException("Found empty contents");
        }
        if (i < 0 || i2 < 0) {
            throw new IllegalArgumentException("Negative size is not allowed. Input: " + i + 'x' + i2);
        }
        int mo1478a = mo1478a();
        int i3 = mo1478a;
        if (map != null) {
            i3 = mo1478a;
            if (map.containsKey(EnumC5095c.MARGIN)) {
                i3 = Integer.parseInt(map.get(EnumC5095c.MARGIN).toString());
            }
        }
        return m1482a(mo1476a(str), i, i2, i3);
    }

    /* renamed from: a */
    public abstract boolean[] mo1476a(String str);
}
