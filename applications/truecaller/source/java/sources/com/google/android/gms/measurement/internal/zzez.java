package com.google.android.gms.measurement.internal;

import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.common.wrappers.PackageManagerWrapper;
import com.google.android.gms.common.wrappers.Wrappers;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/measurement/internal/zzez.class */
public final class zzez {

    /* renamed from: a */
    public final zzfr f6395a;

    public zzez(zzkp zzkpVar) {
        this.f6395a = zzkpVar.l;
    }

    @VisibleForTesting
    /* renamed from: a */
    public final boolean m38575a() {
        boolean z = false;
        try {
            PackageManagerWrapper m38764a = Wrappers.m38764a(this.f6395a.a);
            if (m38764a == null) {
                this.f6395a.zzay().n.m38590a("Failed to get PackageManager for Install Referrer Play Store compatibility check");
                return false;
            }
            if (m38764a.f6151a.getPackageManager().getPackageInfo("com.android.vending", 128).versionCode >= 80837300) {
                z = true;
            }
            return z;
        } catch (Exception e) {
            this.f6395a.zzay().n.m38589b("Failed to retrieve Play Store version for Install Referrer", e);
            return false;
        }
    }
}
