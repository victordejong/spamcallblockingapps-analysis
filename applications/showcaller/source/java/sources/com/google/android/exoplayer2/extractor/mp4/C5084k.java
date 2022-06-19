package com.google.android.exoplayer2.extractor.mp4;

import com.google.android.exoplayer2.p243c1.AbstractC4979i;
import com.google.android.exoplayer2.util.C5536v;
/* renamed from: com.google.android.exoplayer2.extractor.mp4.k */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/extractor/mp4/k.class */
final class C5084k {

    /* renamed from: a */
    private static final int[] f15883a = {1769172845, 1769172786, 1769172787, 1769172788, 1769172789, 1769172790, 1635148593, 1752589105, 1751479857, 1635135537, 1836069937, 1836069938, 862401121, 862401122, 862417462, 862417718, 862414134, 862414646, 1295275552, 1295270176, 1714714144, 1801741417, 1295275600, 1903435808, 1297305174, 1684175153};

    /* renamed from: a */
    private static boolean m20598a(int i) {
        if ((i >>> 8) == 3368816) {
            return true;
        }
        for (int i2 : f15883a) {
            if (i2 == i) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: b */
    public static boolean m20597b(AbstractC4979i abstractC4979i) {
        return m20596c(abstractC4979i, true);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [long] */
    /* JADX WARN: Type inference failed for: r0v101, types: [long] */
    /* JADX WARN: Type inference failed for: r0v22, types: [long] */
    /* JADX WARN: Type inference failed for: r0v97, types: [long] */
    /* renamed from: c */
    private static boolean m20596c(AbstractC4979i abstractC4979i, boolean z) {
        boolean z2;
        char c;
        boolean z3;
        boolean z4;
        ?? length = abstractC4979i.getLength();
        int i = (length > (-1L) ? 1 : (length == (-1L) ? 0 : -1));
        char c2 = 4096;
        if (i != 0) {
            c2 = length > 4096 ? (char) 4096 : length;
        }
        int i2 = c2;
        C5536v c5536v = new C5536v(64);
        int i3 = 0;
        boolean z5 = false;
        while (i3 < i2) {
            c5536v.m18684I(8);
            abstractC4979i.mo21000j(c5536v.f17941a, 0, 8);
            ?? m18691B = c5536v.m18691B();
            int m18668k = c5536v.m18668k();
            int i4 = 16;
            if (m18691B == 1) {
                abstractC4979i.mo21000j(c5536v.f17941a, 8, 8);
                c5536v.m18681L(16);
                c = c5536v.m18660s();
            } else {
                c = m18691B;
                if (m18691B == 0) {
                    long length2 = abstractC4979i.getLength();
                    c = m18691B;
                    if (length2 != -1) {
                        c = (length2 - abstractC4979i.mo21007c()) + 8;
                    }
                }
                i4 = 8;
            }
            long j = i4;
            if (c < j) {
                return false;
            }
            int i5 = i3 + i4;
            if (m18668k == 1836019574) {
                int i6 = i2 + c;
                int i7 = i6;
                if (i != 0) {
                    i7 = i6;
                    if (i6 > length) {
                        i7 = (int) length;
                    }
                }
                i2 = i7;
                i3 = i5;
            } else if (m18668k == 1836019558 || m18668k == 1836475768) {
                z2 = true;
                break;
            } else if ((i5 + c) - j >= i2) {
                break;
            } else {
                int i8 = (int) (c - j);
                int i9 = i5 + i8;
                if (m18668k != 1718909296) {
                    z3 = z5;
                    if (i8 != 0) {
                        abstractC4979i.mo21006d(i8);
                        z3 = z5;
                    }
                } else if (i8 < 8) {
                    return false;
                } else {
                    c5536v.m18684I(i8);
                    abstractC4979i.mo21000j(c5536v.f17941a, 0, i8);
                    int i10 = i8 / 4;
                    int i11 = 0;
                    while (true) {
                        z4 = z5;
                        if (i11 >= i10) {
                            break;
                        }
                        if (i11 == 1) {
                            c5536v.m18679N(4);
                        } else if (m20598a(c5536v.m18668k())) {
                            z4 = true;
                            break;
                        }
                        i11++;
                    }
                    if (!z4) {
                        return false;
                    }
                    z3 = z4;
                }
                i3 = i9;
                z5 = z3;
            }
        }
        z2 = false;
        return z5 && z == z2;
    }

    /* renamed from: d */
    public static boolean m20595d(AbstractC4979i abstractC4979i) {
        return m20596c(abstractC4979i, false);
    }
}
