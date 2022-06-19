package com.google.zxing.p174c;

import com.google.zxing.EnumC5069a;
import com.google.zxing.EnumC5095c;
import com.google.zxing.common.C5117b;
import java.util.Map;
/* renamed from: com.google.zxing.c.l */
/* loaded from: classes-dex2jar.jar:com/google/zxing/c/l.class */
public final class C5108l extends AbstractC5110n {

    /* renamed from: a */
    private static final int[] f21589a = {1, 1, 1, 1};

    /* renamed from: b */
    private static final int[] f21590b = {3, 1, 1};

    /* renamed from: c */
    private static final int[][] f21591c = {new int[]{1, 1, 3, 3, 1}, new int[]{3, 1, 1, 1, 3}, new int[]{1, 3, 1, 1, 3}, new int[]{3, 3, 1, 1, 1}, new int[]{1, 1, 3, 1, 3}, new int[]{3, 1, 3, 1, 1}, new int[]{1, 3, 3, 1, 1}, new int[]{1, 1, 1, 3, 3}, new int[]{3, 1, 1, 3, 1}, new int[]{1, 3, 1, 3, 1}};

    @Override // com.google.zxing.p174c.AbstractC5110n, com.google.zxing.AbstractC5133e
    /* renamed from: a */
    public C5117b mo1394a(String str, EnumC5069a enumC5069a, int i, int i2, Map<EnumC5095c, ?> map) {
        if (enumC5069a != EnumC5069a.ITF) {
            throw new IllegalArgumentException("Can only encode ITF, but got ".concat(String.valueOf(enumC5069a)));
        }
        return super.mo1394a(str, enumC5069a, i, i2, map);
    }

    @Override // com.google.zxing.p174c.AbstractC5110n
    /* renamed from: a */
    public boolean[] mo1476a(String str) {
        int length = str.length();
        if (length % 2 != 0) {
            throw new IllegalArgumentException("The length of the input should be even");
        }
        if (length > 80) {
            throw new IllegalArgumentException("Requested contents should be less than 80 digits long, but got ".concat(String.valueOf(length)));
        }
        boolean[] zArr = new boolean[(length * 9) + 9];
        int a = m1481a(zArr, 0, f21589a, true);
        for (int i = 0; i < length; i += 2) {
            int digit = Character.digit(str.charAt(i), 10);
            int digit2 = Character.digit(str.charAt(i + 1), 10);
            int[] iArr = new int[10];
            for (int i2 = 0; i2 < 5; i2++) {
                iArr[i2 * 2] = f21591c[digit][i2];
                iArr[(i2 * 2) + 1] = f21591c[digit2][i2];
            }
            a += m1481a(zArr, a, iArr, true);
        }
        m1481a(zArr, a, f21590b, true);
        return zArr;
    }
}
