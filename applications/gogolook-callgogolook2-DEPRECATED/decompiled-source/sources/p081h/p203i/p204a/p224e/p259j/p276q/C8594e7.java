package p081h.p203i.p204a.p224e.p259j.p276q;
/* renamed from: h.i.a.e.j.q.e7 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/q/e7.class */
public final class C8594e7 extends AbstractC8562b7 {
    /* renamed from: a */
    public static int m17677a(byte[] bArr, int i, long j, int i2) {
        int a;
        int a2;
        int a3;
        if (i2 == 0) {
            a = C8798z6.m16934a(i);
            return a;
        } else if (i2 == 1) {
            a2 = C8798z6.m16933a(i, C8776x6.m17049a(bArr, j));
            return a2;
        } else if (i2 == 2) {
            a3 = C8798z6.m16932a(i, C8776x6.m17049a(bArr, j), C8776x6.m17049a(bArr, j + 1));
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
    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8562b7
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int mo17680a(int r9, byte[] r10, int r11, int r12) {
        /*
            Method dump skipped, instructions count: 427
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p081h.p203i.p204a.p224e.p259j.p276q.C8594e7.mo17680a(int, byte[], int, int):int");
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
    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8562b7
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int mo17678a(java.lang.CharSequence r8, byte[] r9, int r10, int r11) {
        /*
            Method dump skipped, instructions count: 678
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p081h.p203i.p204a.p224e.p259j.p276q.C8594e7.mo17678a(java.lang.CharSequence, byte[], int, int):int");
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
    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8562b7
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void mo17679a(java.lang.CharSequence r8, java.nio.ByteBuffer r9) {
        /*
            Method dump skipped, instructions count: 691
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p081h.p203i.p204a.p224e.p259j.p276q.C8594e7.mo17679a(java.lang.CharSequence, java.nio.ByteBuffer):void");
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8562b7
    /* renamed from: b */
    public final String mo17676b(byte[] bArr, int i, int i2) throws C8647j4 {
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
                byte a4 = C8776x6.m17049a(bArr, i);
                a3 = C8553a7.m17841a(a4);
                if (!a3) {
                    break;
                }
                i++;
                C8553a7.m17837a(a4, cArr, i4);
                i4++;
            }
            int i5 = i;
            int i6 = i4;
            while (i5 < i3) {
                int i7 = i5 + 1;
                byte a5 = C8776x6.m17049a(bArr, i5);
                a = C8553a7.m17841a(a5);
                if (a) {
                    i6++;
                    C8553a7.m17837a(a5, cArr, i6);
                    i5 = i7;
                    while (i5 < i3) {
                        byte a6 = C8776x6.m17049a(bArr, i5);
                        a2 = C8553a7.m17841a(a6);
                        if (a2) {
                            i5++;
                            C8553a7.m17837a(a6, cArr, i6);
                            i6++;
                        }
                    }
                } else {
                    b = C8553a7.m17836b(a5);
                    if (!b) {
                        c = C8553a7.m17831c(a5);
                        if (c) {
                            if (i7 < i3 - 1) {
                                int i8 = i7 + 1;
                                C8553a7.m17839a(a5, C8776x6.m17049a(bArr, i7), C8776x6.m17049a(bArr, i8), cArr, i6);
                                i5 = i8 + 1;
                                i6++;
                            } else {
                                throw C8647j4.m17436h();
                            }
                        } else if (i7 < i3 - 2) {
                            int i9 = i7 + 1;
                            int i10 = i9 + 1;
                            C8553a7.m17840a(a5, C8776x6.m17049a(bArr, i7), C8776x6.m17049a(bArr, i9), C8776x6.m17049a(bArr, i10), cArr, i6);
                            i5 = i10 + 1;
                            i6 = i6 + 1 + 1;
                        } else {
                            throw C8647j4.m17436h();
                        }
                    } else if (i7 < i3) {
                        C8553a7.m17838a(a5, C8776x6.m17049a(bArr, i7), cArr, i6);
                        i5 = i7 + 1;
                        i6++;
                    } else {
                        throw C8647j4.m17436h();
                    }
                }
            }
            return new String(cArr, 0, i6);
        }
        throw new ArrayIndexOutOfBoundsException(String.format("buffer length=%d, index=%d, size=%d", Integer.valueOf(bArr.length), Integer.valueOf(i), Integer.valueOf(i2)));
    }
}
