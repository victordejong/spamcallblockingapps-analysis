package p131c.p161d.p170b.p224d.p252g.p253a;

import com.google.android.gms.internal.ads.zzekj;
/* renamed from: c.d.b.d.g.a.ja0 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/ja0.class */
public final class ja0 extends fa0 {
    /* renamed from: a */
    public static int m26783a(byte[] bArr, int i, long j, int i2) {
        int a;
        int a2;
        int a3;
        if (i2 == 0) {
            a = ea0.m27047a(i);
            return a;
        } else if (i2 == 1) {
            a2 = ea0.m27046a(i, ba0.m27165a(bArr, j));
            return a2;
        } else if (i2 == 2) {
            a3 = ea0.m27045a(i, ba0.m27165a(bArr, j), ba0.m27165a(bArr, j + 1));
            return a3;
        } else {
            throw new AssertionError();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v135, types: [long] */
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
    @Override // p131c.p161d.p170b.p224d.p252g.p253a.fa0
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int mo26785a(int r9, byte[] r10, int r11, int r12) {
        /*
            Method dump skipped, instructions count: 731
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p131c.p161d.p170b.p224d.p252g.p253a.ja0.mo26785a(int, byte[], int, int):int");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v42, types: [java.lang.StringBuilder] */
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
    @Override // p131c.p161d.p170b.p224d.p252g.p253a.fa0
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int mo26784a(java.lang.CharSequence r8, byte[] r9, int r10, int r11) {
        /*
            Method dump skipped, instructions count: 686
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p131c.p161d.p170b.p224d.p252g.p253a.ja0.mo26784a(java.lang.CharSequence, byte[], int, int):int");
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p253a.fa0
    /* renamed from: b */
    public final String mo26782b(byte[] bArr, int i, int i2) throws zzekj {
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
                byte a4 = ba0.m27165a(bArr, i);
                a3 = ga0.m26984a(a4);
                if (!a3) {
                    break;
                }
                i++;
                ga0.m26980a(a4, cArr, i4);
                i4++;
            }
            int i5 = i;
            int i6 = i4;
            while (i5 < i3) {
                int i7 = i5 + 1;
                byte a5 = ba0.m27165a(bArr, i5);
                a = ga0.m26984a(a5);
                if (a) {
                    i6++;
                    ga0.m26980a(a5, cArr, i6);
                    i5 = i7;
                    while (i5 < i3) {
                        byte a6 = ba0.m27165a(bArr, i5);
                        a2 = ga0.m26984a(a6);
                        if (a2) {
                            i5++;
                            ga0.m26980a(a6, cArr, i6);
                            i6++;
                        }
                    }
                } else {
                    b = ga0.m26979b(a5);
                    if (!b) {
                        c = ga0.m26974c(a5);
                        if (c) {
                            if (i7 < i3 - 1) {
                                int i8 = i7 + 1;
                                ga0.m26982a(a5, ba0.m27165a(bArr, i7), ba0.m27165a(bArr, i8), cArr, i6);
                                i5 = i8 + 1;
                                i6++;
                            } else {
                                throw zzekj.zzbhf();
                            }
                        } else if (i7 < i3 - 2) {
                            int i9 = i7 + 1;
                            int i10 = i9 + 1;
                            ga0.m26983a(a5, ba0.m27165a(bArr, i7), ba0.m27165a(bArr, i9), ba0.m27165a(bArr, i10), cArr, i6);
                            i5 = i10 + 1;
                            i6 = i6 + 1 + 1;
                        } else {
                            throw zzekj.zzbhf();
                        }
                    } else if (i7 < i3) {
                        ga0.m26981a(a5, ba0.m27165a(bArr, i7), cArr, i6);
                        i5 = i7 + 1;
                        i6++;
                    } else {
                        throw zzekj.zzbhf();
                    }
                }
            }
            return new String(cArr, 0, i6);
        }
        throw new ArrayIndexOutOfBoundsException(String.format("buffer length=%d, index=%d, size=%d", Integer.valueOf(bArr.length), Integer.valueOf(i), Integer.valueOf(i2)));
    }
}
