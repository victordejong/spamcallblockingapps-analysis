package androidx.media2.exoplayer.external.text.p071a;

import androidx.media2.exoplayer.external.extractor.AbstractC1641q;
import androidx.media2.exoplayer.external.util.C2009j;
import androidx.media2.exoplayer.external.util.C2018p;
/* renamed from: androidx.media2.exoplayer.external.text.a.f */
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/text/a/f.class */
public final class C1869f {
    private C1869f() {
    }

    /* renamed from: a */
    private static int m41978a(C2018p c2018p) {
        int i = 0;
        while (c2018p.m41536b() != 0) {
            int m41534c = c2018p.m41534c();
            int i2 = i + m41534c;
            i = i2;
            if (m41534c != 255) {
                return i2;
            }
        }
        return -1;
    }

    /* renamed from: a */
    public static void m41979a(long j, C2018p c2018p, AbstractC1641q[] abstractC1641qArr) {
        int i;
        while (c2018p.m41536b() > 1) {
            int m41978a = m41978a(c2018p);
            int m41978a2 = m41978a(c2018p);
            int i2 = c2018p.f8132b + m41978a2;
            if (m41978a2 == -1 || m41978a2 > c2018p.m41536b()) {
                C2009j.m41584a("CeaUtil", "Skipping remainder of malformed SEI NAL unit.");
                i = c2018p.f8133c;
            } else {
                i = i2;
                if (m41978a == 4) {
                    i = i2;
                    if (m41978a2 >= 8) {
                        int m41534c = c2018p.m41534c();
                        int m41532d = c2018p.m41532d();
                        int m41524i = m41532d == 49 ? c2018p.m41524i() : 0;
                        int m41534c2 = c2018p.m41534c();
                        if (m41532d == 47) {
                            c2018p.m41531d(1);
                        }
                        boolean z = m41534c == 181 && (m41532d == 49 || m41532d == 47) && m41534c2 == 3;
                        boolean z2 = z;
                        if (m41532d == 49) {
                            z2 = z & (m41524i == 1195456820);
                        }
                        i = i2;
                        if (z2) {
                            m41977b(j, c2018p, abstractC1641qArr);
                            i = i2;
                        }
                    }
                }
            }
            c2018p.m41533c(i);
        }
    }

    /* renamed from: b */
    public static void m41977b(long j, C2018p c2018p, AbstractC1641q[] abstractC1641qArr) {
        int m41534c = c2018p.m41534c();
        if (!((m41534c & 64) != 0)) {
            return;
        }
        c2018p.m41531d(1);
        int i = (m41534c & 31) * 3;
        int i2 = c2018p.f8132b;
        for (AbstractC1641q abstractC1641q : abstractC1641qArr) {
            c2018p.m41533c(i2);
            abstractC1641q.mo42306a(c2018p, i);
            abstractC1641q.mo42313a(j, 1, i, 0, null);
        }
    }
}
