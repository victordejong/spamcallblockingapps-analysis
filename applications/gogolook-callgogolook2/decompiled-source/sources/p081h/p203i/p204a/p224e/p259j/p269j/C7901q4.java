package p081h.p203i.p204a.p224e.p259j.p269j;
/* renamed from: h.i.a.e.j.j.q4 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/j/q4.class */
public final class C7901q4 extends AbstractC7877n4 {
    /* renamed from: a */
    public static int m19081a(byte[] bArr, int i, long j, int i2) {
        int a;
        int a2;
        int a3;
        if (i2 == 0) {
            a = C7858l4.m19259a(i);
            return a;
        } else if (i2 == 1) {
            a2 = C7858l4.m19258a(i, C7838j4.m19322a(bArr, j));
            return a2;
        } else if (i2 == 2) {
            a3 = C7858l4.m19257a(i, C7838j4.m19322a(bArr, j), C7838j4.m19322a(bArr, j + 1));
            return a3;
        } else {
            throw new AssertionError();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v5, types: [long] */
    /* JADX WARN: Type inference failed for: r0v82, types: [long] */
    /* JADX WARN: Type inference failed for: r15v10 */
    /* JADX WARN: Type inference failed for: r15v11, types: [long] */
    /* JADX WARN: Type inference failed for: r15v17 */
    /* JADX WARN: Type inference failed for: r15v18 */
    /* JADX WARN: Type inference failed for: r15v2, types: [long] */
    /* JADX WARN: Type inference failed for: r15v9 */
    /* JADX WARN: Unknown variable types count: 4 */
    @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7877n4
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int mo19084a(int r9, byte[] r10, int r11, int r12) {
        /*
            Method dump skipped, instructions count: 427
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p081h.p203i.p204a.p224e.p259j.p269j.C7901q4.mo19084a(int, byte[], int, int):int");
    }

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
    @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7877n4
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int mo19082a(java.lang.CharSequence r8, byte[] r9, int r10, int r11) {
        /*
            Method dump skipped, instructions count: 678
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p081h.p203i.p204a.p224e.p259j.p269j.C7901q4.mo19082a(java.lang.CharSequence, byte[], int, int):int");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v103, types: [long] */
    /* JADX WARN: Type inference failed for: r0v84, types: [long] */
    /* JADX WARN: Type inference failed for: r0v95, types: [long] */
    /* JADX WARN: Type inference failed for: r12v1, types: [long] */
    /* JADX WARN: Type inference failed for: r12v8 */
    /* JADX WARN: Type inference failed for: r12v9 */
    /* JADX WARN: Type inference failed for: r21v3 */
    /* JADX WARN: Unknown variable types count: 4 */
    @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7877n4
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void mo19083a(java.lang.CharSequence r8, java.nio.ByteBuffer r9) {
        /*
            Method dump skipped, instructions count: 691
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p081h.p203i.p204a.p224e.p259j.p269j.C7901q4.mo19083a(java.lang.CharSequence, java.nio.ByteBuffer):void");
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7877n4
    /* renamed from: b */
    public final String mo19080b(byte[] bArr, int i, int i2) throws C7924t1 {
        boolean a;
        boolean a2;
        boolean b;
        boolean c;
        boolean a3;
        if ((i | i2 | ((bArr.length - i) - i2)) >= 0) {
            int i3 = i + i2;
            char[] cArr = new char[i2];
            int i4 = 0;
            while (i < i3) {
                byte a4 = C7838j4.m19322a(bArr, i);
                a3 = C7865m4.m19187a(a4);
                if (!a3) {
                    break;
                }
                i++;
                C7865m4.m19183a(a4, cArr, i4);
                i4++;
            }
            int i5 = i;
            int i6 = i4;
            while (i5 < i3) {
                int i7 = i5 + 1;
                byte a5 = C7838j4.m19322a(bArr, i5);
                a = C7865m4.m19187a(a5);
                if (a) {
                    i6++;
                    C7865m4.m19183a(a5, cArr, i6);
                    i5 = i7;
                    while (i5 < i3) {
                        byte a6 = C7838j4.m19322a(bArr, i5);
                        a2 = C7865m4.m19187a(a6);
                        if (a2) {
                            i5++;
                            C7865m4.m19183a(a6, cArr, i6);
                            i6++;
                        }
                    }
                } else {
                    b = C7865m4.m19182b(a5);
                    if (!b) {
                        c = C7865m4.m19177c(a5);
                        if (c) {
                            if (i7 < i3 - 1) {
                                int i8 = i7 + 1;
                                C7865m4.m19185a(a5, C7838j4.m19322a(bArr, i7), C7838j4.m19322a(bArr, i8), cArr, i6);
                                i5 = i8 + 1;
                                i6++;
                            } else {
                                throw C7924t1.m18885h();
                            }
                        } else if (i7 < i3 - 2) {
                            int i9 = i7 + 1;
                            int i10 = i9 + 1;
                            C7865m4.m19186a(a5, C7838j4.m19322a(bArr, i7), C7838j4.m19322a(bArr, i9), C7838j4.m19322a(bArr, i10), cArr, i6);
                            i5 = i10 + 1;
                            i6 = i6 + 1 + 1;
                        } else {
                            throw C7924t1.m18885h();
                        }
                    } else if (i7 < i3) {
                        C7865m4.m19184a(a5, C7838j4.m19322a(bArr, i7), cArr, i6);
                        i5 = i7 + 1;
                        i6++;
                    } else {
                        throw C7924t1.m18885h();
                    }
                }
            }
            return new String(cArr, 0, i6);
        }
        throw new ArrayIndexOutOfBoundsException(String.format("buffer length=%d, index=%d, size=%d", Integer.valueOf(bArr.length), Integer.valueOf(i), Integer.valueOf(i2)));
    }
}
