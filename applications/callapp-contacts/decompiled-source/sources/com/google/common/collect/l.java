package com.google.common.collect;
/* loaded from: classes4-dex2jar.jar:com/google/common/collect/l.class */
final class l {
    private l() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int a(int i, int i2, int i3) {
        return (i & (i3 ^ (-1))) | (i2 & i3);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int a(Object obj, int i) {
        return obj instanceof byte[] ? ((byte[]) obj)[i] & 255 : obj instanceof short[] ? ((short[]) obj)[i] & 65535 : ((int[]) obj)[i];
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x0057, code lost:
        r0 = r0 & r8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0060, code lost:
        if (r17 != (-1)) goto L_0x006e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0063, code lost:
        a(r9, r0, r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x006e, code lost:
        r10[r17] = a(r10[r17], r0, r8);
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0080, code lost:
        return r15;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int a(java.lang.Object r6, java.lang.Object r7, int r8, java.lang.Object r9, int[] r10, java.lang.Object[] r11, java.lang.Object[] r12) {
        /*
            r0 = r6
            int r0 = com.google.common.collect.s.a(r0)
            r13 = r0
            r0 = r13
            r1 = r8
            r0 = r0 & r1
            r14 = r0
            r0 = r9
            r1 = r14
            int r0 = a(r0, r1)
            r15 = r0
            r0 = r15
            if (r0 != 0) goto L_0x001b
            r0 = -1
            return r0
        L_0x001b:
            r0 = r8
            r1 = -1
            r0 = r0 ^ r1
            r16 = r0
            r0 = -1
            r17 = r0
        L_0x0023:
            int r15 = r15 + (-1)
            r0 = r10
            r1 = r15
            r0 = r0[r1]
            r18 = r0
            r0 = r18
            r1 = r16
            r0 = r0 & r1
            r1 = r13
            r2 = r16
            r1 = r1 & r2
            if (r0 != r1) goto L_0x0081
            r0 = r6
            r1 = r11
            r2 = r15
            r1 = r1[r2]
            boolean r0 = com.google.common.base.j.a(r0, r1)
            if (r0 == 0) goto L_0x0081
            r0 = r12
            if (r0 == 0) goto L_0x0057
            r0 = r7
            r1 = r12
            r2 = r15
            r1 = r1[r2]
            boolean r0 = com.google.common.base.j.a(r0, r1)
            if (r0 == 0) goto L_0x0081
        L_0x0057:
            r0 = r18
            r1 = r8
            r0 = r0 & r1
            r18 = r0
            r0 = r17
            r1 = -1
            if (r0 != r1) goto L_0x006e
            r0 = r9
            r1 = r14
            r2 = r18
            a(r0, r1, r2)
            goto L_0x007e
        L_0x006e:
            r0 = r10
            r1 = r17
            r2 = r10
            r3 = r17
            r2 = r2[r3]
            r3 = r18
            r4 = r8
            int r2 = a(r2, r3, r4)
            r0[r1] = r2
        L_0x007e:
            r0 = r15
            return r0
        L_0x0081:
            r0 = r18
            r1 = r8
            r0 = r0 & r1
            r18 = r0
            r0 = r18
            if (r0 != 0) goto L_0x008e
            r0 = -1
            return r0
        L_0x008e:
            r0 = r15
            r17 = r0
            r0 = r18
            r15 = r0
            goto L_0x0023
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.common.collect.l.a(java.lang.Object, java.lang.Object, int, java.lang.Object, int[], java.lang.Object[], java.lang.Object[]):int");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Object a(int i) {
        if (i >= 2 && i <= 1073741824 && Integer.highestOneBit(i) == i) {
            return i <= 256 ? new byte[i] : i <= 65536 ? new short[i] : new int[i];
        }
        StringBuilder sb = new StringBuilder(52);
        sb.append("must be power of 2 between 2^1 and 2^30: ");
        sb.append(i);
        throw new IllegalArgumentException(sb.toString());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(Object obj, int i, int i2) {
        if (obj instanceof byte[]) {
            ((byte[]) obj)[i] = (byte) i2;
        } else if (obj instanceof short[]) {
            ((short[]) obj)[i] = (short) i2;
        } else {
            ((int[]) obj)[i] = i2;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int b(int i) {
        return (i < 32 ? 4 : 2) * (i + 1);
    }
}
