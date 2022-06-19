package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/wu3.class */
final class wu3 {

    /* renamed from: a */
    private static final int[] f31798a = {1769172845, 1769172786, 1769172787, 1769172788, 1769172789, 1769172790, 1769172793, 1635148593, 1752589105, 1751479857, 1635135537, 1836069937, 1836069938, 862401121, 862401122, 862417462, 862417718, 862414134, 862414646, 1295275552, 1295270176, 1714714144, 1801741417, 1295275600, 1903435808, 1297305174, 1684175153, 1769172332, 1885955686};

    /* renamed from: a */
    public static boolean m9440a(vq3 vq3Var) {
        return m9438c(vq3Var, true, false);
    }

    /* renamed from: b */
    public static boolean m9439b(vq3 vq3Var, boolean z) {
        return m9438c(vq3Var, false, false);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [long] */
    /* JADX WARN: Type inference failed for: r0v105, types: [long] */
    /* JADX WARN: Type inference failed for: r0v109, types: [long] */
    /* JADX WARN: Type inference failed for: r0v23, types: [long] */
    /* renamed from: c */
    private static boolean m9438c(vq3 vq3Var, boolean z, boolean z2) {
        boolean z3;
        char c;
        boolean z4;
        boolean z5;
        ?? mo9464n = vq3Var.mo9464n();
        int i = (mo9464n > (-1L) ? 1 : (mo9464n == (-1L) ? 0 : -1));
        char c2 = 4096;
        if (i != 0) {
            c2 = mo9464n > 4096 ? (char) 4096 : mo9464n;
        }
        int i2 = c2;
        C6694la c6694la = new C6694la(64);
        int i3 = 0;
        boolean z6 = false;
        while (i3 < i2) {
            c6694la.m13642i(8);
            if (!vq3Var.mo9882l(c6694la.m13634q(), 0, 8, true)) {
                break;
            }
            ?? m13657B = c6694la.m13657B();
            int m13655D = c6694la.m13655D();
            int i4 = 16;
            if (m13657B == 1) {
                vq3Var.mo9885h(c6694la.m13634q(), 8, 8);
                c6694la.m13637n(16);
                c = c6694la.m13653F();
            } else {
                c = m13657B;
                if (m13657B == 0) {
                    long mo9464n2 = vq3Var.mo9464n();
                    c = m13657B;
                    if (mo9464n2 != -1) {
                        c = (mo9464n2 - vq3Var.mo9466j()) + 8;
                    }
                }
                i4 = 8;
            }
            long j = i4;
            if (c < j) {
                return false;
            }
            int i5 = i3 + i4;
            if (m13655D == 1836019574) {
                int i6 = i2 + c;
                int i7 = i6;
                if (i != 0) {
                    i7 = i6;
                    if (i6 > mo9464n) {
                        i7 = (int) mo9464n;
                    }
                }
                i2 = i7;
                i3 = i5;
            } else if (m13655D == 1836019558 || m13655D == 1836475768) {
                z3 = true;
                break;
            } else if ((i5 + c) - j >= i2) {
                break;
            } else {
                int i8 = (int) (c - j);
                int i9 = i5 + i8;
                if (m13655D != 1718909296) {
                    z4 = z6;
                    if (i8 != 0) {
                        vq3Var.mo9888T(i8);
                        z4 = z6;
                    }
                } else if (i8 < 8) {
                    return false;
                } else {
                    c6694la.m13642i(i8);
                    vq3Var.mo9885h(c6694la.m13634q(), 0, i8);
                    int i10 = 0;
                    while (true) {
                        z5 = z6;
                        if (i10 >= (i8 >> 2)) {
                            break;
                        }
                        if (i10 == 1) {
                            c6694la.m13632s(4);
                        } else {
                            int m13655D2 = c6694la.m13655D();
                            if ((m13655D2 >>> 8) == 3368816) {
                                break;
                            }
                            int i11 = m13655D2;
                            if (m13655D2 == 1751476579) {
                                i11 = 1751476579;
                            }
                            int[] iArr = f31798a;
                            for (int i12 = 0; i12 < 29; i12++) {
                                if (iArr[i12] == i11) {
                                    break;
                                }
                            }
                            continue;
                        }
                        i10++;
                    }
                    z5 = true;
                    if (!z5) {
                        return false;
                    }
                    z4 = z5;
                }
                i3 = i9;
                z6 = z4;
            }
        }
        z3 = false;
        return z6 && z == z3;
    }
}
