package com.google.common.b;
/* loaded from: classes4-dex2jar.jar:com/google/common/b/d.class */
public final class d {
    private d() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v16 */
    /* JADX WARN: Type inference failed for: r0v17, types: [long] */
    /* JADX WARN: Type inference failed for: r0v26 */
    /* JADX WARN: Type inference failed for: r0v9, types: [long] */
    /* JADX WARN: Unknown variable types count: 2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String a(long r7) {
        /*
            r0 = 1
            java.lang.String r1 = "radix (%s) must be between Character.MIN_RADIX and Character.MAX_RADIX"
            r2 = 10
            com.google.common.base.m.a(r0, r1, r2)
            r0 = r7
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            r9 = r0
            r0 = r9
            if (r0 != 0) goto L_0x0013
            java.lang.String r0 = "0"
            return r0
        L_0x0013:
            r0 = r9
            if (r0 <= 0) goto L_0x001e
            r0 = r7
            r1 = 10
            java.lang.String r0 = java.lang.Long.toString(r0, r1)
            return r0
        L_0x001e:
            r0 = 64
            char[] r0 = new char[r0]
            r10 = r0
            r0 = r7
            r1 = 1
            long r0 = r0 >>> r1
            r1 = 5
            long r0 = r0 / r1
            r11 = r0
            r0 = r7
            r1 = r11
            r2 = 10
            long r1 = r1 * r2
            long r0 = r0 - r1
            int r0 = (int) r0
            r1 = 10
            char r0 = java.lang.Character.forDigit(r0, r1)
            r13 = r0
            r0 = 63
            r9 = r0
            r0 = r10
            r1 = 63
            r2 = r13
            char r2 = (char) r2
            r0[r1] = r2
            r0 = r11
            r7 = r0
        L_0x0049:
            r0 = r7
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 <= 0) goto L_0x0069
            int r9 = r9 + (-1)
            r0 = r10
            r1 = r9
            r2 = r7
            r3 = 10
            long r2 = r2 % r3
            int r2 = (int) r2
            r3 = 10
            char r2 = java.lang.Character.forDigit(r2, r3)
            r0[r1] = r2
            r0 = r7
            r1 = 10
            long r0 = r0 / r1
            r7 = r0
            goto L_0x0049
        L_0x0069:
            java.lang.String r0 = new java.lang.String
            r1 = r0
            r2 = r10
            r3 = r9
            r4 = 64
            r5 = r9
            int r4 = r4 - r5
            r1.<init>(r2, r3, r4)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.common.b.d.a(long):java.lang.String");
    }
}
