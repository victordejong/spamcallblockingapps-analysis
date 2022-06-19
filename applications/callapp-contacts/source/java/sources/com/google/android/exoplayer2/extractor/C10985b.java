package com.google.android.exoplayer2.extractor;

import com.google.android.exoplayer2.util.C11617n;
import com.google.android.exoplayer2.util.C11628u;
/* renamed from: com.google.android.exoplayer2.extractor.b */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/b.class */
public final class C10985b {
    private C10985b() {
    }

    /* renamed from: a */
    private static int m21767a(C11628u c11628u) {
        int i = 0;
        while (c11628u.m19812a() != 0) {
            int m19804c = c11628u.m19804c();
            int i2 = i + m19804c;
            i = i2;
            if (m19804c != 255) {
                return i2;
            }
        }
        return -1;
    }

    /* renamed from: a */
    public static void m21768a(long j, C11628u c11628u, AbstractC11150x[] abstractC11150xArr) {
        int i;
        while (c11628u.m19812a() > 1) {
            int m21767a = m21767a(c11628u);
            int m21767a2 = m21767a(c11628u);
            int i2 = c11628u.f38734b + m21767a2;
            if (m21767a2 == -1 || m21767a2 > c11628u.m19812a()) {
                C11617n.m19863a("CeaUtil", "Skipping remainder of malformed SEI NAL unit.");
                i = c11628u.f38735c;
            } else {
                i = i2;
                if (m21767a == 4) {
                    i = i2;
                    if (m21767a2 >= 8) {
                        int m19804c = c11628u.m19804c();
                        int m19802d = c11628u.m19802d();
                        int m19792j = m19802d == 49 ? c11628u.m19792j() : 0;
                        int m19804c2 = c11628u.m19804c();
                        if (m19802d == 47) {
                            c11628u.m19799e(1);
                        }
                        boolean z = m19804c == 181 && (m19802d == 49 || m19802d == 47) && m19804c2 == 3;
                        boolean z2 = z;
                        if (m19802d == 49) {
                            z2 = z & (m19792j == 1195456820);
                        }
                        i = i2;
                        if (z2) {
                            m21766b(j, c11628u, abstractC11150xArr);
                            i = i2;
                        }
                    }
                }
            }
            c11628u.m19801d(i);
        }
    }

    /* renamed from: b */
    public static void m21766b(long j, C11628u c11628u, AbstractC11150x[] abstractC11150xArr) {
        int m19804c = c11628u.m19804c();
        if (!((m19804c & 64) != 0)) {
            return;
        }
        c11628u.m19799e(1);
        int i = (m19804c & 31) * 3;
        int i2 = c11628u.f38734b;
        for (AbstractC11150x abstractC11150x : abstractC11150xArr) {
            c11628u.m19801d(i2);
            abstractC11150x.mo20819b(c11628u, i);
            abstractC11150x.mo20835a(j, 1, i, 0, null);
        }
    }
}
