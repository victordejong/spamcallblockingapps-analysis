package com.google.android.exoplayer2.text.p252l;

import com.google.android.exoplayer2.p243c1.AbstractC4996v;
import com.google.android.exoplayer2.util.C5526o;
import com.google.android.exoplayer2.util.C5536v;
/* renamed from: com.google.android.exoplayer2.text.l.g */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/text/l/g.class */
public final class C5341g {
    /* renamed from: a */
    public static void m19575a(long j, C5536v c5536v, AbstractC4996v[] abstractC4996vArr) {
        int i;
        while (c5536v.m18678a() > 1) {
            int m19573c = m19573c(c5536v);
            int m19573c2 = m19573c(c5536v);
            int m18676c = c5536v.m18676c() + m19573c2;
            if (m19573c2 == -1 || m19573c2 > c5536v.m18678a()) {
                C5526o.m18742f("CeaUtil", "Skipping remainder of malformed SEI NAL unit.");
                i = c5536v.m18675d();
            } else {
                i = m18676c;
                if (m19573c == 4) {
                    i = m18676c;
                    if (m19573c2 >= 8) {
                        int m18653z = c5536v.m18653z();
                        int m18687F = c5536v.m18687F();
                        int m18668k = m18687F == 49 ? c5536v.m18668k() : 0;
                        int m18653z2 = c5536v.m18653z();
                        if (m18687F == 47) {
                            c5536v.m18679N(1);
                        }
                        boolean z = m18653z == 181 && (m18687F == 49 || m18687F == 47) && m18653z2 == 3;
                        boolean z2 = z;
                        if (m18687F == 49) {
                            z2 = z & (m18668k == 1195456820);
                        }
                        i = m18676c;
                        if (z2) {
                            m19574b(j, c5536v, abstractC4996vArr);
                            i = m18676c;
                        }
                    }
                }
            }
            c5536v.m18680M(i);
        }
    }

    /* renamed from: b */
    public static void m19574b(long j, C5536v c5536v, AbstractC4996v[] abstractC4996vArr) {
        int m18653z = c5536v.m18653z();
        if (!((m18653z & 64) != 0)) {
            return;
        }
        c5536v.m18679N(1);
        int i = (m18653z & 31) * 3;
        int m18676c = c5536v.m18676c();
        for (AbstractC4996v abstractC4996v : abstractC4996vArr) {
            c5536v.m18680M(m18676c);
            abstractC4996v.mo19985b(c5536v, i);
            abstractC4996v.mo19984c(j, 1, i, 0, null);
        }
    }

    /* renamed from: c */
    private static int m19573c(C5536v c5536v) {
        int i = 0;
        while (c5536v.m18678a() != 0) {
            int m18653z = c5536v.m18653z();
            int i2 = i + m18653z;
            i = i2;
            if (m18653z != 255) {
                return i2;
            }
        }
        return -1;
    }
}
