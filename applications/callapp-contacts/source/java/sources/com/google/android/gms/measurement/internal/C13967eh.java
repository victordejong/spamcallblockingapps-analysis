package com.google.android.gms.measurement.internal;

import com.google.android.gms.common.p352d.C11945b;
import com.google.android.gms.common.p352d.C11946c;
/* renamed from: com.google.android.gms.measurement.internal.eh */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/eh.class */
public final class C13967eh {

    /* renamed from: a */
    final C13979es f51482a;

    public C13967eh(C13979es c13979es) {
        this.f51482a = c13979es;
    }

    /* renamed from: a */
    public final boolean m12034a() {
        boolean z = false;
        try {
            C11945b m19258a = C11946c.m19258a(this.f51482a.f51523a);
            if (m19258a == null) {
                this.f51482a.mo11661c().f51403k.m12092a("Failed to get PackageManager for Install Referrer Play Store compatibility check");
                return false;
            }
            if (m19258a.m19259b("com.android.vending", 128).versionCode >= 80837300) {
                z = true;
            }
            return z;
        } catch (Exception e) {
            this.f51482a.mo11661c().f51403k.m12091a("Failed to retrieve Play Store version for Install Referrer", e);
            return false;
        }
    }
}
