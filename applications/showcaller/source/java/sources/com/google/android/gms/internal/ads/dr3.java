package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/dr3.class */
public final class dr3 {
    /* renamed from: a */
    public static boolean m15708a(C6694la c6694la, ir3 ir3Var, int i, cr3 cr3Var) {
        int m15706c;
        int m13636o = c6694la.m13636o();
        long m13657B = c6694la.m13657B();
        long j = m13657B >>> 16;
        if (j != i) {
            return false;
        }
        boolean z = (j & 1) == 1;
        int i2 = (int) ((m13657B >> 12) & 15);
        int i3 = (int) ((m13657B >> 8) & 15);
        int i4 = (int) (15 & (m13657B >> 4));
        int i5 = (int) ((m13657B >> 1) & 7);
        if (i4 <= 7) {
            if (i4 != ir3Var.f24416g - 1) {
                return false;
            }
        } else if (i4 > 10 || ir3Var.f24416g != 2) {
            return false;
        }
        if (!(i5 == 0 || i5 == ir3Var.f24418i) || (m13657B & 1) == 1 || !m15705d(c6694la, ir3Var, z, cr3Var) || (m15706c = m15706c(c6694la, i2)) == -1 || m15706c > ir3Var.f24411b) {
            return false;
        }
        int i6 = ir3Var.f24414e;
        if (i3 != 0) {
            if (i3 <= 11) {
                if (i3 != ir3Var.f24415f) {
                    return false;
                }
            } else if (i3 == 12) {
                if (c6694la.m13629v() * 1000 != i6) {
                    return false;
                }
            } else if (i3 > 14) {
                return false;
            } else {
                int m13628w = c6694la.m13628w();
                int i7 = m13628w;
                if (i3 == 14) {
                    i7 = m13628w * 10;
                }
                if (i7 != i6) {
                    return false;
                }
            }
        }
        return c6694la.m13629v() == C7101wa.m9674w(c6694la.m13634q(), m13636o, c6694la.m13636o() - 1, 0);
    }

    /* renamed from: b */
    public static long m15707b(vq3 vq3Var, ir3 ir3Var) {
        vq3Var.mo9884i();
        pq3 pq3Var = (pq3) vq3Var;
        boolean z = true;
        pq3Var.m12195q(1, false);
        byte[] bArr = new byte[1];
        pq3Var.mo9882l(bArr, 0, 1, false);
        int i = bArr[0] & 1;
        pq3Var.m12195q(2, false);
        int i2 = 1 != i ? 6 : 7;
        C6694la c6694la = new C6694la(i2);
        c6694la.m13637n(yq3.m8720b(vq3Var, c6694la.m13634q(), 0, i2));
        vq3Var.mo9884i();
        cr3 cr3Var = new cr3();
        if (1 != i) {
            z = false;
        }
        if (m15705d(c6694la, ir3Var, z, cr3Var)) {
            return cr3Var.f21364a;
        }
        throw zzaha.zzb(null, null);
    }

    /* renamed from: c */
    public static int m15706c(C6694la c6694la, int i) {
        switch (i) {
            case 1:
                return 192;
            case 2:
            case 3:
            case 4:
            case 5:
                return 576 << (i - 2);
            case 6:
                return c6694la.m13629v() + 1;
            case 7:
                return c6694la.m13628w() + 1;
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

    /* JADX WARN: Type inference failed for: r0v2, types: [long] */
    /* JADX WARN: Type inference failed for: r0v7, types: [long] */
    /* renamed from: d */
    private static boolean m15705d(C6694la c6694la, ir3 ir3Var, boolean z, cr3 cr3Var) {
        try {
            char m13643h = c6694la.m13643h();
            if (!z) {
                m13643h *= ir3Var.f24411b;
            }
            cr3Var.f21364a = m13643h;
            return true;
        } catch (NumberFormatException e) {
            return false;
        }
    }
}
