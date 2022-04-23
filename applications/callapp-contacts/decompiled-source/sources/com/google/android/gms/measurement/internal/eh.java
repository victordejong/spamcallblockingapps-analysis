package com.google.android.gms.measurement.internal;

import com.google.android.gms.common.d.b;
import com.google.android.gms.common.d.c;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/eh.class */
public final class eh {

    /* renamed from: a  reason: collision with root package name */
    final es f29560a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public eh(es esVar) {
        this.f29560a = esVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean a() {
        boolean z = false;
        try {
            b a2 = c.a(this.f29560a.f29583a);
            if (a2 == null) {
                this.f29560a.c().k.a("Failed to get PackageManager for Install Referrer Play Store compatibility check");
                return false;
            }
            if (a2.b("com.android.vending", 128).versionCode >= 80837300) {
                z = true;
            }
            return z;
        } catch (Exception e) {
            this.f29560a.c().k.a("Failed to retrieve Play Store version for Install Referrer", e);
            return false;
        }
    }
}
