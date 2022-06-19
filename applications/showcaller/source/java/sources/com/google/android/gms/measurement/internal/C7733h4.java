package com.google.android.gms.measurement.internal;

import com.google.android.gms.common.p272k.C6197b;
import com.google.android.gms.common.p272k.C6198c;
/* renamed from: com.google.android.gms.measurement.internal.h4 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/h4.class */
public final class C7733h4 {

    /* renamed from: a */
    final C7858s4 f35302a;

    public C7733h4(C7858s4 c7858s4) {
        this.f35302a = c7858s4;
    }

    /* renamed from: a */
    public final boolean m6421a() {
        boolean z = false;
        try {
            C6197b m16885a = C6198c.m16885a(this.f35302a.mo6030a());
            if (m16885a == null) {
                this.f35302a.mo6047C().m6187u().m6216a("Failed to get PackageManager for Install Referrer Play Store compatibility check");
                return false;
            }
            if (m16885a.m16888f("com.android.vending", 128).versionCode >= 80837300) {
                z = true;
            }
            return z;
        } catch (Exception e) {
            this.f35302a.mo6047C().m6187u().m6215b("Failed to retrieve Play Store version for Install Referrer", e);
            return false;
        }
    }
}
