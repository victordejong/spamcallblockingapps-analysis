package com.google.android.gms.internal.ads;

import android.util.Log;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/mq3.class */
public final class mq3 {
    /* renamed from: a */
    public static void m13105a(long j, C6694la c6694la, yr3[] yr3VarArr) {
        int i;
        int i2;
        while (c6694la.m13639l() > 1) {
            int m13103c = m13103c(c6694la);
            int m13103c2 = m13103c(c6694la);
            int m13636o = c6694la.m13636o() + m13103c2;
            if (m13103c2 == -1 || m13103c2 > c6694la.m13639l()) {
                Log.w("CeaUtil", "Skipping remainder of malformed SEI NAL unit.");
                i = c6694la.m13638m();
            } else {
                i = m13636o;
                if (m13103c == 4) {
                    i = m13636o;
                    if (m13103c2 >= 8) {
                        int m13629v = c6694la.m13629v();
                        int m13628w = c6694la.m13628w();
                        if (m13628w == 49) {
                            i2 = c6694la.m13655D();
                            m13628w = 49;
                        } else {
                            i2 = 0;
                        }
                        int m13629v2 = c6694la.m13629v();
                        int i3 = m13628w;
                        if (m13628w == 47) {
                            c6694la.m13632s(1);
                            i3 = 47;
                        }
                        boolean z = m13629v == 181 && (i3 == 49 || i3 == 47) && m13629v2 == 3;
                        boolean z2 = z;
                        if (i3 == 49) {
                            z2 = z & (i2 == 1195456820);
                        }
                        i = m13636o;
                        if (z2) {
                            m13104b(j, c6694la, yr3VarArr);
                            i = m13636o;
                        }
                    }
                }
            }
            c6694la.m13635p(i);
        }
    }

    /* renamed from: b */
    public static void m13104b(long j, C6694la c6694la, yr3[] yr3VarArr) {
        int m13629v = c6694la.m13629v();
        if ((m13629v & 64) != 0) {
            c6694la.m13632s(1);
            int i = (m13629v & 31) * 3;
            int m13636o = c6694la.m13636o();
            for (yr3 yr3Var : yr3VarArr) {
                c6694la.m13635p(m13636o);
                yr3Var.mo8706b(c6694la, i);
                if (j != -9223372036854775807L) {
                    yr3Var.mo8705c(j, 1, i, 0, null);
                }
            }
        }
    }

    /* renamed from: c */
    private static int m13103c(C6694la c6694la) {
        int i = 0;
        while (c6694la.m13639l() != 0) {
            int m13629v = c6694la.m13629v();
            int i2 = i + m13629v;
            i = i2;
            if (m13629v != 255) {
                return i2;
            }
        }
        return -1;
    }
}
