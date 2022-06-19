package com.google.android.gms.measurement.internal;

import com.google.android.gms.common.p080g.C1561b;
import com.google.android.gms.common.p080g.C1562c;
/* renamed from: com.google.android.gms.measurement.internal.h4 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/h4.class */
public final class C2267h4 {

    /* renamed from: a */
    final s4 f10218a;

    C2267h4(s4 s4Var) {
        this.f10218a = s4Var;
    }

    /* renamed from: a */
    final boolean m3900a() {
        boolean z = false;
        try {
            C1561b m8427a = C1562c.m8427a(this.f10218a.b());
            if (m8427a == null) {
                this.f10218a.t().w().m3876a("Failed to get PackageManager for Install Referrer Play Store compatibility check");
                return false;
            }
            if (m8427a.m8430f("com.android.vending", 128).versionCode >= 80837300) {
                z = true;
            }
            return z;
        } catch (Exception e) {
            this.f10218a.t().w().m3875b("Failed to retrieve Play Store version for Install Referrer", e);
            return false;
        }
    }
}
