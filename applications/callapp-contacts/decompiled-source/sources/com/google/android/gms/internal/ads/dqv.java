package com.google.android.gms.internal.ads;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dqv.class */
final class dqv extends dqq {
    private static int a(byte[] bArr, int i, long j, int i2) {
        int b2;
        int b3;
        int b4;
        if (i2 == 0) {
            b2 = dqp.b(i);
            return b2;
        } else if (i2 == 1) {
            b3 = dqp.b(i, dqm.a(bArr, j));
            return b3;
        } else if (i2 == 2) {
            b4 = dqp.b(i, dqm.a(bArr, j), dqm.a(bArr, j + 1));
            return b4;
        } else {
            throw new AssertionError();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v134, types: [long] */
    /* JADX WARN: Type inference failed for: r13v0, types: [long] */
    /* JADX WARN: Type inference failed for: r13v1 */
    /* JADX WARN: Type inference failed for: r13v11 */
    /* JADX WARN: Type inference failed for: r13v2, types: [long] */
    /* JADX WARN: Type inference failed for: r13v4, types: [long] */
    /* JADX WARN: Type inference failed for: r13v5 */
    /* JADX WARN: Type inference failed for: r13v6, types: [long] */
    /* JADX WARN: Type inference failed for: r17v0 */
    /* JADX WARN: Type inference failed for: r17v1, types: [long] */
    /* JADX WARN: Type inference failed for: r17v10 */
    /* JADX WARN: Type inference failed for: r17v12, types: [long] */
    /* JADX WARN: Type inference failed for: r17v22 */
    /* JADX WARN: Type inference failed for: r17v23 */
    /* JADX WARN: Type inference failed for: r17v24 */
    /* JADX WARN: Type inference failed for: r17v25 */
    /* JADX WARN: Type inference failed for: r17v26 */
    /* JADX WARN: Type inference failed for: r17v4, types: [long] */
    /* JADX WARN: Type inference failed for: r20v1 */
    /* JADX WARN: Type inference failed for: r20v2, types: [long] */
    /* JADX WARN: Type inference failed for: r20v4 */
    /* JADX WARN: Unknown variable types count: 7 */
    @Override // com.google.android.gms.internal.ads.dqq
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int a(int r9, byte[] r10, int r11, int r12) {
        /*
            Method dump skipped, instructions count: 723
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.dqv.a(int, byte[], int, int):int");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v41, types: [java.lang.StringBuilder] */
    /* JADX WARN: Type inference failed for: r12v1, types: [long] */
    /* JADX WARN: Type inference failed for: r12v11 */
    /* JADX WARN: Type inference failed for: r12v12 */
    /* JADX WARN: Type inference failed for: r17v0 */
    /* JADX WARN: Type inference failed for: r17v1, types: [long] */
    /* JADX WARN: Type inference failed for: r17v2 */
    /* JADX WARN: Type inference failed for: r17v4 */
    /* JADX WARN: Type inference failed for: r17v6 */
    /* JADX WARN: Type inference failed for: r17v7 */
    /* JADX WARN: Type inference failed for: r17v8 */
    /* JADX WARN: Type inference failed for: r19v0 */
    /* JADX WARN: Type inference failed for: r19v1, types: [long] */
    /* JADX WARN: Type inference failed for: r19v5 */
    /* JADX WARN: Unknown variable types count: 4 */
    @Override // com.google.android.gms.internal.ads.dqq
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int a(java.lang.CharSequence r8, byte[] r9, int r10, int r11) {
        /*
            Method dump skipped, instructions count: 678
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.dqv.a(java.lang.CharSequence, byte[], int, int):int");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.ads.dqq
    public final String b(byte[] bArr, int i, int i2) throws zzenn {
        if ((i | i2 | ((bArr.length - i) - i2)) >= 0) {
            int i3 = i + i2;
            char[] cArr = new char[i2];
            int i4 = 0;
            while (i < i3) {
                byte a2 = dqm.a(bArr, i);
                if (!(a2 >= 0)) {
                    break;
                }
                i++;
                dqr.a(a2, cArr, i4);
                i4++;
            }
            int i5 = i;
            int i6 = i4;
            while (i5 < i3) {
                int i7 = i5 + 1;
                byte a3 = dqm.a(bArr, i5);
                if (a3 >= 0) {
                    i6++;
                    dqr.a(a3, cArr, i6);
                    i5 = i7;
                    while (i5 < i3) {
                        byte a4 = dqm.a(bArr, i5);
                        if (a4 >= 0) {
                            i5++;
                            dqr.a(a4, cArr, i6);
                            i6++;
                        }
                    }
                } else if (dqr.a(a3)) {
                    if (i7 < i3) {
                        dqr.a(a3, dqm.a(bArr, i7), cArr, i6);
                        i5 = i7 + 1;
                        i6++;
                    } else {
                        throw zzenn.i();
                    }
                } else if (dqr.b(a3)) {
                    if (i7 < i3 - 1) {
                        int i8 = i7 + 1;
                        dqr.a(a3, dqm.a(bArr, i7), dqm.a(bArr, i8), cArr, i6);
                        i5 = i8 + 1;
                        i6++;
                    } else {
                        throw zzenn.i();
                    }
                } else if (i7 < i3 - 2) {
                    int i9 = i7 + 1;
                    int i10 = i9 + 1;
                    dqr.a(a3, dqm.a(bArr, i7), dqm.a(bArr, i9), dqm.a(bArr, i10), cArr, i6);
                    i5 = i10 + 1;
                    i6 = i6 + 1 + 1;
                } else {
                    throw zzenn.i();
                }
            }
            return new String(cArr, 0, i6);
        }
        throw new ArrayIndexOutOfBoundsException(String.format("buffer length=%d, index=%d, size=%d", Integer.valueOf(bArr.length), Integer.valueOf(i), Integer.valueOf(i2)));
    }
}
