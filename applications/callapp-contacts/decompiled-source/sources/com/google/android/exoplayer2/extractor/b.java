package com.google.android.exoplayer2.extractor;

import com.google.android.exoplayer2.util.n;
import com.google.android.exoplayer2.util.u;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/b.class */
public final class b {
    private b() {
    }

    private static int a(u uVar) {
        int i = 0;
        while (uVar.a() != 0) {
            int c2 = uVar.c();
            int i2 = i + c2;
            i = i2;
            if (c2 != 255) {
                return i2;
            }
        }
        return -1;
    }

    public static void a(long j, u uVar, x[] xVarArr) {
        int i;
        while (true) {
            boolean z = true;
            if (uVar.a() > 1) {
                int a2 = a(uVar);
                int a3 = a(uVar);
                int i2 = uVar.f22336b + a3;
                if (a3 == -1 || a3 > uVar.a()) {
                    n.a("CeaUtil", "Skipping remainder of malformed SEI NAL unit.");
                    i = uVar.f22337c;
                } else {
                    i = i2;
                    if (a2 == 4) {
                        i = i2;
                        if (a3 >= 8) {
                            int c2 = uVar.c();
                            int d2 = uVar.d();
                            int j2 = d2 == 49 ? uVar.j() : 0;
                            int c3 = uVar.c();
                            if (d2 == 47) {
                                uVar.e(1);
                            }
                            boolean z2 = c2 == 181 && (d2 == 49 || d2 == 47) && c3 == 3;
                            boolean z3 = z2;
                            if (d2 == 49) {
                                if (j2 != 1195456820) {
                                    z = false;
                                }
                                z3 = z2 & z;
                            }
                            i = i2;
                            if (z3) {
                                b(j, uVar, xVarArr);
                                i = i2;
                            }
                        }
                    }
                }
                uVar.d(i);
            } else {
                return;
            }
        }
    }

    public static void b(long j, u uVar, x[] xVarArr) {
        int c2 = uVar.c();
        if ((c2 & 64) != 0) {
            uVar.e(1);
            int i = (c2 & 31) * 3;
            int i2 = uVar.f22336b;
            for (x xVar : xVarArr) {
                uVar.d(i2);
                xVar.b(uVar, i);
                xVar.a(j, 1, i, 0, null);
            }
        }
    }
}
