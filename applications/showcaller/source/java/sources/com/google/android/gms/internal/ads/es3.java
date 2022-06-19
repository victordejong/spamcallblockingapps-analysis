package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/es3.class */
public final class es3 {
    /* renamed from: a */
    public static int m15389a(int i) {
        int i2 = 0;
        while (i > 0) {
            i2++;
            i >>>= 1;
        }
        return i2;
    }

    /* renamed from: b */
    public static as3 m15388b(C6694la c6694la, boolean z, boolean z2) {
        if (z) {
            m15387c(3, c6694la, false);
        }
        String m13646e = c6694la.m13646e((int) c6694la.m13656C(), lu2.f26280c);
        long m13656C = c6694la.m13656C();
        String[] strArr = new String[(int) m13656C];
        int length = m13646e.length() + 15;
        for (int i = 0; i < m13656C; i++) {
            String m13646e2 = c6694la.m13646e((int) c6694la.m13656C(), lu2.f26280c);
            strArr[i] = m13646e2;
            length = length + 4 + m13646e2.length();
        }
        if (!z2 || (c6694la.m13629v() & 1) != 0) {
            return new as3(m13646e, strArr, length + 1);
        }
        throw zzaha.zzb("framing bit expected to be set", null);
    }

    /* renamed from: c */
    public static boolean m15387c(int i, C6694la c6694la, boolean z) {
        if (c6694la.m13639l() < 7) {
            if (z) {
                return false;
            }
            int m13639l = c6694la.m13639l();
            StringBuilder sb = new StringBuilder(29);
            sb.append("too short header: ");
            sb.append(m13639l);
            throw zzaha.zzb(sb.toString(), null);
        } else if (c6694la.m13629v() != i) {
            if (z) {
                return false;
            }
            String valueOf = String.valueOf(Integer.toHexString(i));
            throw zzaha.zzb(valueOf.length() != 0 ? "expected header type ".concat(valueOf) : new String("expected header type "), null);
        } else if (c6694la.m13629v() == 118 && c6694la.m13629v() == 111 && c6694la.m13629v() == 114 && c6694la.m13629v() == 98 && c6694la.m13629v() == 105 && c6694la.m13629v() == 115) {
            return true;
        } else {
            if (!z) {
                throw zzaha.zzb("expected characters 'vorbis'", null);
            }
            return false;
        }
    }
}
