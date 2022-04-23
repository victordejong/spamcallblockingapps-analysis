package com.google.android.gms.measurement.internal;

import android.content.ComponentName;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.os.Bundle;
import com.google.android.gms.common.stats.ConnectionTracker;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.common.wrappers.PackageManagerWrapper;
import com.google.android.gms.common.wrappers.Wrappers;
import com.google.android.gms.internal.measurement.zzd;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzfl.class */
public final class zzfl {

    /* renamed from: a */
    public final zzfu f29980a;

    public zzfl(zzfu zzfuVar) {
        this.f29980a = zzfuVar;
    }

    @VisibleForTesting
    /* renamed from: a */
    public final Bundle m9117a(String str, zzd zzdVar) {
        this.f29980a.mo8795j().mo9085c();
        if (zzdVar == null) {
            this.f29980a.mo8789p().m9149t().m9143a("Attempting to use Install Referrer Service while it is not initialized");
            return null;
        }
        Bundle bundle = new Bundle();
        bundle.putString("package_name", str);
        try {
            Bundle d = zzdVar.mo9806d(bundle);
            if (d != null) {
                return d;
            }
            this.f29980a.mo8789p().m9152q().m9143a("Install Referrer Service returned a null response");
            return null;
        } catch (Exception e) {
            this.f29980a.mo8789p().m9152q().m9142a("Exception occurred while retrieving the Install Referrer", e.getMessage());
            return null;
        }
    }

    /* renamed from: a */
    public final void m9118a(String str) {
        if (str == null || str.isEmpty()) {
            this.f29980a.mo8789p().m9148u().m9143a("Install Referrer Reporter was called with invalid app package name");
            return;
        }
        this.f29980a.mo8795j().mo9085c();
        if (!m9119a()) {
            this.f29980a.mo8789p().m9146w().m9143a("Install Referrer Reporter is not available");
            return;
        }
        zzfk zzfkVar = new zzfk(this, str);
        this.f29980a.mo8795j().mo9085c();
        Intent intent = new Intent("com.google.android.finsky.BIND_GET_INSTALL_REFERRER_SERVICE");
        intent.setComponent(new ComponentName("com.android.vending", "com.google.android.finsky.externalreferrer.GetInstallReferrerService"));
        PackageManager packageManager = this.f29980a.mo8846B().getPackageManager();
        if (packageManager == null) {
            this.f29980a.mo8789p().m9148u().m9143a("Failed to obtain Package Manager to verify binding conditions for Install Referrer");
            return;
        }
        List<ResolveInfo> queryIntentServices = packageManager.queryIntentServices(intent, 0);
        if (queryIntentServices == null || queryIntentServices.isEmpty()) {
            this.f29980a.mo8789p().m9146w().m9143a("Play Service for fetching Install Referrer is unavailable on device");
            return;
        }
        ServiceInfo serviceInfo = queryIntentServices.get(0).serviceInfo;
        if (serviceInfo != null) {
            String str2 = serviceInfo.packageName;
            if (serviceInfo.name == null || !"com.android.vending".equals(str2) || !m9119a()) {
                this.f29980a.mo8789p().m9149t().m9143a("Play Store version 8.3.73 or higher required for Install Referrer");
                return;
            }
            try {
                this.f29980a.mo8789p().m9144y().m9142a("Install Referrer Service is", ConnectionTracker.m17130a().m17129a(this.f29980a.mo8846B(), new Intent(intent), zzfkVar, 1) ? "available" : "not available");
            } catch (Exception e) {
                this.f29980a.mo8789p().m9152q().m9142a("Exception occurred while binding to Install Referrer Service", e.getMessage());
            }
        }
    }

    @VisibleForTesting
    /* renamed from: a */
    public final boolean m9119a() {
        boolean z = false;
        try {
            PackageManagerWrapper b = Wrappers.m17026b(this.f29980a.mo8846B());
            if (b == null) {
                this.f29980a.mo8789p().m9144y().m9143a("Failed to get PackageManager for Install Referrer Play Store compatibility check");
                return false;
            }
            if (b.m17028b("com.android.vending", 128).versionCode >= 80837300) {
                z = true;
            }
            return z;
        } catch (Exception e) {
            this.f29980a.mo8789p().m9144y().m9142a("Failed to retrieve Play Store version for Install Referrer", e);
            return false;
        }
    }
}
