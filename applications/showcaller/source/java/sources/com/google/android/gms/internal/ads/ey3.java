package com.google.android.gms.internal.ads;

import android.util.Log;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/ey3.class */
final class ey3 {
    /* renamed from: a */
    public static cy3 m15332a(vq3 vq3Var) {
        dy3 dy3Var;
        byte[] bArr;
        C6694la c6694la = new C6694la(16);
        if (dy3.m15651a(vq3Var, c6694la).f21932a != 1380533830) {
            return null;
        }
        byte[] m13634q = c6694la.m13634q();
        pq3 pq3Var = (pq3) vq3Var;
        pq3Var.mo9882l(m13634q, 0, 4, false);
        c6694la.m13635p(0);
        int m13655D = c6694la.m13655D();
        if (m13655D != 1463899717) {
            StringBuilder sb = new StringBuilder(36);
            sb.append("Unsupported RIFF format: ");
            sb.append(m13655D);
            Log.e("WavHeaderReader", sb.toString());
            return null;
        }
        dy3 m15651a = dy3.m15651a(vq3Var, c6694la);
        while (true) {
            dy3Var = m15651a;
            if (dy3Var.f21932a == 1718449184) {
                break;
            }
            pq3Var.m12195q((int) dy3Var.f21933b, false);
            m15651a = dy3.m15651a(vq3Var, c6694la);
        }
        C7173y8.m8895d(dy3Var.f21933b >= 16);
        pq3Var.mo9882l(c6694la.m13634q(), 0, 16, false);
        c6694la.m13635p(0);
        int m13627x = c6694la.m13627x();
        int m13627x2 = c6694la.m13627x();
        int m13648c = c6694la.m13648c();
        int m13648c2 = c6694la.m13648c();
        int m13627x3 = c6694la.m13627x();
        int m13627x4 = c6694la.m13627x();
        int i = ((int) dy3Var.f21933b) - 16;
        if (i > 0) {
            bArr = new byte[i];
            pq3Var.mo9882l(bArr, 0, i, false);
        } else {
            bArr = C7101wa.f31480f;
        }
        return new cy3(m13627x, m13627x2, m13648c, m13648c2, m13627x3, m13627x4, bArr);
    }
}
