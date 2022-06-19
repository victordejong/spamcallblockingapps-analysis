package com.google.common.p386b;

import com.google.common.base.C15391m;
/* renamed from: com.google.common.b.d */
/* loaded from: classes4-dex2jar.jar:com/google/common/b/d.class */
public final class C15364d {
    private C15364d() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v26 */
    /* JADX WARN: Type inference failed for: r0v9, types: [long] */
    /* renamed from: a */
    public static String m8976a(long j) {
        ?? r0;
        C15391m.m8940a(true, "radix (%s) must be between Character.MIN_RADIX and Character.MAX_RADIX", 10);
        int i = (j > 0L ? 1 : (j == 0L ? 0 : -1));
        if (i == 0) {
            return "0";
        }
        if (i > 0) {
            return Long.toString(j, 10);
        }
        char[] cArr = new char[64];
        int i2 = 63;
        cArr[63] = Character.forDigit((int) (j - (r0 * 10)), 10);
        char c = (j >>> 1) / 5;
        while (true) {
            char c2 = c;
            if (c2 <= 0) {
                return new String(cArr, i2, 64 - i2);
            }
            i2--;
            cArr[i2] = Character.forDigit((int) (c2 % '\n'), 10);
            c = c2 / '\n';
        }
    }
}
