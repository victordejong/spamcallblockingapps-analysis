package com.google.android.gms.measurement.internal;

import android.content.ComponentName;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.os.Bundle;
import com.google.android.gms.common.p132c.C2585b;
import com.google.android.gms.common.p132c.C2586c;
import com.google.android.gms.common.stats.C2694a;
import com.google.android.gms.internal.measurement.AbstractC3831bt;
import java.util.List;
/* renamed from: com.google.android.gms.measurement.internal.eu */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/eu.class */
public final class C4286eu {

    /* renamed from: a */
    final C4296fd f18813a;

    public C4286eu(C4296fd c4296fd) {
        this.f18813a = c4296fd;
    }

    /* renamed from: a */
    private final boolean m4612a() {
        boolean z = false;
        try {
            C2585b m14193a = C2586c.m14193a(this.f18813a.mo4034r());
            if (m14193a == null) {
                this.f18813a.mo4030v().m4657j().m4654a("Failed to get PackageManager for Install Referrer Play Store compatibility check");
            } else if (m14193a.m14194b("com.android.vending", 128).versionCode >= 80837300) {
                z = true;
            }
        } catch (Exception e) {
            this.f18813a.mo4030v().m4657j().m4653a("Failed to retrieve Play Store version for Install Referrer", e);
        }
        return z;
    }

    /* renamed from: a */
    public final Bundle m4610a(String str, AbstractC3831bt abstractC3831bt) {
        Bundle bundle;
        this.f18813a.mo4031u().mo4037o();
        if (abstractC3831bt == null) {
            this.f18813a.mo4030v().m4662e().m4654a("Attempting to use Install Referrer Service while it is not initialized");
            bundle = null;
        } else {
            Bundle bundle2 = new Bundle();
            bundle2.putString("package_name", str);
            try {
                bundle = abstractC3831bt.mo5678a(bundle2);
                if (bundle == null) {
                    this.f18813a.mo4030v().m4655x_().m4654a("Install Referrer Service returned a null response");
                    bundle = null;
                }
            } catch (Exception e) {
                this.f18813a.mo4030v().m4655x_().m4653a("Exception occurred while retrieving the Install Referrer", e.getMessage());
                bundle = null;
            }
        }
        return bundle;
    }

    /* renamed from: a */
    public final void m4611a(String str) {
        if (str == null || str.isEmpty()) {
            this.f18813a.mo4030v().m4661f().m4654a("Install Referrer Reporter was called with invalid app package name");
            return;
        }
        this.f18813a.mo4031u().mo4037o();
        if (!m4612a()) {
            this.f18813a.mo4030v().m4659h().m4654a("Install Referrer Reporter is not available");
            return;
        }
        ServiceConnectionC4285et serviceConnectionC4285et = new ServiceConnectionC4285et(this, str);
        this.f18813a.mo4031u().mo4037o();
        Intent intent = new Intent("com.google.android.finsky.BIND_GET_INSTALL_REFERRER_SERVICE");
        intent.setComponent(new ComponentName("com.android.vending", "com.google.android.finsky.externalreferrer.GetInstallReferrerService"));
        PackageManager packageManager = this.f18813a.mo4034r().getPackageManager();
        if (packageManager == null) {
            this.f18813a.mo4030v().m4661f().m4654a("Failed to obtain Package Manager to verify binding conditions for Install Referrer");
            return;
        }
        List<ResolveInfo> queryIntentServices = packageManager.queryIntentServices(intent, 0);
        if (queryIntentServices == null || queryIntentServices.isEmpty()) {
            this.f18813a.mo4030v().m4659h().m4654a("Play Service for fetching Install Referrer is unavailable on device");
            return;
        }
        ResolveInfo resolveInfo = queryIntentServices.get(0);
        if (resolveInfo.serviceInfo == null) {
            return;
        }
        String str2 = resolveInfo.serviceInfo.packageName;
        if (resolveInfo.serviceInfo.name == null || !"com.android.vending".equals(str2) || !m4612a()) {
            this.f18813a.mo4030v().m4662e().m4654a("Play Store version 8.3.73 or higher required for Install Referrer");
            return;
        }
        try {
            this.f18813a.mo4030v().m4657j().m4653a("Install Referrer Service is", C2694a.m13893a().m13892a(this.f18813a.mo4034r(), new Intent(intent), serviceConnectionC4285et, 1) ? "available" : "not available");
        } catch (Exception e) {
            this.f18813a.mo4030v().m4655x_().m4653a("Exception occurred while binding to Install Referrer Service", e.getMessage());
        }
    }
}
