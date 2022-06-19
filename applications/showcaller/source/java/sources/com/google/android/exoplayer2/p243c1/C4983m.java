package com.google.android.exoplayer2.p243c1;

import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.util.C5515h0;
import com.google.android.exoplayer2.util.C5522l;
import com.google.android.exoplayer2.util.C5536v;
/* renamed from: com.google.android.exoplayer2.c1.m */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/c1/m.class */
public final class C4983m {

    /* renamed from: com.google.android.exoplayer2.c1.m$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/c1/m$a.class */
    public static final class C4984a {

        /* renamed from: a */
        public long f15495a;
    }

    /* renamed from: a */
    private static boolean m20997a(C5536v c5536v, C5522l c5522l, int i) {
        int m20988j = m20988j(c5536v, i);
        return m20988j != -1 && m20988j <= c5522l.f17896b;
    }

    /* renamed from: b */
    private static boolean m20996b(C5536v c5536v, int i) {
        boolean z = true;
        if (c5536v.m18653z() != C5515h0.m18811r(c5536v.f17941a, i, c5536v.m18676c() - 1, 0)) {
            z = false;
        }
        return z;
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [long] */
    /* JADX WARN: Type inference failed for: r0v7, types: [long] */
    /* renamed from: c */
    private static boolean m20995c(C5536v c5536v, C5522l c5522l, boolean z, C4984a c4984a) {
        try {
            char m18686G = c5536v.m18686G();
            if (!z) {
                m18686G *= c5522l.f17896b;
            }
            c4984a.f15495a = m18686G;
            return true;
        } catch (NumberFormatException e) {
            return false;
        }
    }

    /* renamed from: d */
    public static boolean m20994d(C5536v c5536v, C5522l c5522l, int i, C4984a c4984a) {
        int m18676c = c5536v.m18676c();
        long m18691B = c5536v.m18691B();
        long j = m18691B >>> 16;
        if (j != i) {
            return false;
        }
        boolean z = (j & 1) == 1;
        int i2 = (int) ((m18691B >> 12) & 15);
        int i3 = (int) ((m18691B >> 8) & 15);
        int i4 = (int) (15 & (m18691B >> 4));
        int i5 = (int) ((m18691B >> 1) & 7);
        boolean z2 = (m18691B & 1) == 1;
        boolean z3 = false;
        if (m20991g(i4, c5522l)) {
            z3 = false;
            if (m20992f(i5, c5522l)) {
                z3 = false;
                if (!z2) {
                    z3 = false;
                    if (m20995c(c5536v, c5522l, z, c4984a)) {
                        z3 = false;
                        if (m20997a(c5536v, c5522l, i2)) {
                            z3 = false;
                            if (m20993e(c5536v, c5522l, i3)) {
                                z3 = false;
                                if (m20996b(c5536v, m18676c)) {
                                    z3 = true;
                                }
                            }
                        }
                    }
                }
            }
        }
        return z3;
    }

    /* renamed from: e */
    private static boolean m20993e(C5536v c5536v, C5522l c5522l, int i) {
        int i2 = c5522l.f17899e;
        boolean z = true;
        if (i == 0) {
            return true;
        }
        if (i <= 11) {
            if (i != c5522l.f17900f) {
                z = false;
            }
            return z;
        } else if (i == 12) {
            return c5536v.m18653z() * 1000 == i2;
        } else if (i > 14) {
            return false;
        } else {
            int m18687F = c5536v.m18687F();
            int i3 = m18687F;
            if (i == 14) {
                i3 = m18687F * 10;
            }
            return i3 == i2;
        }
    }

    /* renamed from: f */
    private static boolean m20992f(int i, C5522l c5522l) {
        boolean z = true;
        if (i == 0) {
            return true;
        }
        if (i != c5522l.f17903i) {
            z = false;
        }
        return z;
    }

    /* renamed from: g */
    private static boolean m20991g(int i, C5522l c5522l) {
        boolean z = false;
        if (i <= 7) {
            if (i == c5522l.f17901g - 1) {
                z = true;
            }
            return z;
        }
        boolean z2 = false;
        if (i <= 10) {
            z2 = false;
            if (c5522l.f17901g == 2) {
                z2 = true;
            }
        }
        return z2;
    }

    /* renamed from: h */
    public static boolean m20990h(AbstractC4979i abstractC4979i, C5522l c5522l, int i, C4984a c4984a) {
        long mo21007c = abstractC4979i.mo21007c();
        byte[] bArr = new byte[2];
        abstractC4979i.mo21000j(bArr, 0, 2);
        if ((((bArr[0] & 255) << 8) | (bArr[1] & 255)) != i) {
            abstractC4979i.mo21003g();
            abstractC4979i.mo21006d((int) (mo21007c - abstractC4979i.mo20999k()));
            return false;
        }
        C5536v c5536v = new C5536v(16);
        System.arraycopy(bArr, 0, c5536v.f17941a, 0, 2);
        c5536v.m18681L(C4981k.m20998a(abstractC4979i, c5536v.f17941a, 2, 14));
        abstractC4979i.mo21003g();
        abstractC4979i.mo21006d((int) (mo21007c - abstractC4979i.mo20999k()));
        return m20994d(c5536v, c5522l, i, c4984a);
    }

    /* renamed from: i */
    public static long m20989i(AbstractC4979i abstractC4979i, C5522l c5522l) {
        abstractC4979i.mo21003g();
        boolean z = true;
        abstractC4979i.mo21006d(1);
        byte[] bArr = new byte[1];
        abstractC4979i.mo21000j(bArr, 0, 1);
        if ((bArr[0] & 1) != 1) {
            z = false;
        }
        abstractC4979i.mo21006d(2);
        int i = z ? 7 : 6;
        C5536v c5536v = new C5536v(i);
        c5536v.m18681L(C4981k.m20998a(abstractC4979i, c5536v.f17941a, 0, i));
        abstractC4979i.mo21003g();
        C4984a c4984a = new C4984a();
        if (m20995c(c5536v, c5522l, z, c4984a)) {
            return c4984a.f15495a;
        }
        throw new ParserException();
    }

    /* renamed from: j */
    public static int m20988j(C5536v c5536v, int i) {
        switch (i) {
            case 1:
                return 192;
            case 2:
            case 3:
            case 4:
            case 5:
                return 576 << (i - 2);
            case 6:
                return c5536v.m18653z() + 1;
            case 7:
                return c5536v.m18687F() + 1;
            case 8:
            case 9:
            case 10:
            case 11:
            case 12:
            case 13:
            case 14:
            case 15:
                return 256 << (i - 8);
            default:
                return -1;
        }
    }
}
