package androidx.media2.exoplayer.external.text.a;

import androidx.media2.exoplayer.external.extractor.q;
import androidx.media2.exoplayer.external.util.j;
import androidx.media2.exoplayer.external.util.p;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/text/a/f.class */
public final class f {
    private f() {
    }

    private static int a(p pVar) {
        int i = 0;
        while (pVar.b() != 0) {
            int c2 = pVar.c();
            int i2 = i + c2;
            i = i2;
            if (c2 != 255) {
                return i2;
            }
        }
        return -1;
    }

    public static void a(long j, p pVar, q[] qVarArr) {
        int i;
        while (true) {
            boolean z = true;
            if (pVar.b() > 1) {
                int a2 = a(pVar);
                int a3 = a(pVar);
                int i2 = pVar.f4167b + a3;
                if (a3 == -1 || a3 > pVar.b()) {
                    j.a("CeaUtil", "Skipping remainder of malformed SEI NAL unit.");
                    i = pVar.f4168c;
                } else {
                    i = i2;
                    if (a2 == 4) {
                        i = i2;
                        if (a3 >= 8) {
                            int c2 = pVar.c();
                            int d2 = pVar.d();
                            int i3 = d2 == 49 ? pVar.i() : 0;
                            int c3 = pVar.c();
                            if (d2 == 47) {
                                pVar.d(1);
                            }
                            boolean z2 = c2 == 181 && (d2 == 49 || d2 == 47) && c3 == 3;
                            boolean z3 = z2;
                            if (d2 == 49) {
                                if (i3 != 1195456820) {
                                    z = false;
                                }
                                z3 = z2 & z;
                            }
                            i = i2;
                            if (z3) {
                                b(j, pVar, qVarArr);
                                i = i2;
                            }
                        }
                    }
                }
                pVar.c(i);
            } else {
                return;
            }
        }
    }

    public static void b(long j, p pVar, q[] qVarArr) {
        int c2 = pVar.c();
        if ((c2 & 64) != 0) {
            pVar.d(1);
            int i = (c2 & 31) * 3;
            int i2 = pVar.f4167b;
            for (q qVar : qVarArr) {
                pVar.c(i2);
                qVar.a(pVar, i);
                qVar.a(j, 1, i, 0, null);
            }
        }
    }
}
