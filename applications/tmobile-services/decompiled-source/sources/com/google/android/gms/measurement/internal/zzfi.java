package com.google.android.gms.measurement.internal;

import android.content.ComponentName;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.os.Bundle;
import androidx.annotation.Nullable;
import androidx.annotation.WorkerThread;
import com.google.android.gms.common.stats.ConnectionTracker;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.common.wrappers.PackageManagerWrapper;
import com.google.android.gms.common.wrappers.Wrappers;
import com.google.android.gms.internal.measurement.zzd;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzfi.class */
public final class zzfi {

    /* renamed from: a */
    final zzfv f9228a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzfi(zzfv zzfvVar) {
        this.f9228a = zzfvVar;
    }

    @VisibleForTesting
    /* renamed from: c */
    private final boolean m11429c() {
        boolean z = false;
        try {
            PackageManagerWrapper a = Wrappers.m14278a(this.f9228a.mo11075f());
            if (a == null) {
                this.f9228a.mo11081c().m11552L().m11540a("Failed to get PackageManager for Install Referrer Play Store compatibility check");
                return false;
            }
            if (a.m14283e("com.android.vending", 128).versionCode >= 80837300) {
                z = true;
            }
            return z;
        } catch (Exception e) {
            this.f9228a.mo11081c().m11552L().m11539b("Failed to retrieve Play Store version for Install Referrer", e);
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    @VisibleForTesting
    @WorkerThread
    /* renamed from: a */
    public final Bundle m11431a(String str, zzd zzdVar) {
        this.f9228a.mo11083b().mo11316e();
        if (zzdVar == null) {
            this.f9228a.mo11081c().m11557G().m11540a("Attempting to use Install Referrer Service while it is not initialized");
            return null;
        }
        Bundle bundle = new Bundle();
        bundle.putString("package_name", str);
        try {
            Bundle zza = zzdVar.zza(bundle);
            if (zza != null) {
                return zza;
            }
            this.f9228a.mo11081c().m11560D().m11540a("Install Referrer Service returned a null response");
            return null;
        } catch (Exception e) {
            this.f9228a.mo11081c().m11560D().m11539b("Exception occurred while retrieving the Install Referrer", e.getMessage());
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @WorkerThread
    /* renamed from: b */
    public final void m11430b(String str) {
        if (str == null || str.isEmpty()) {
            this.f9228a.mo11081c().m11556H().m11540a("Install Referrer Reporter was called with invalid app package name");
            return;
        }
        this.f9228a.mo11083b().mo11316e();
        if (!m11429c()) {
            this.f9228a.mo11081c().m11554J().m11540a("Install Referrer Reporter is not available");
            return;
        }
        zzfl zzflVar = new zzfl(this, str);
        this.f9228a.mo11083b().mo11316e();
        Intent intent = new Intent("com.google.android.finsky.BIND_GET_INSTALL_REFERRER_SERVICE");
        intent.setComponent(new ComponentName("com.android.vending", "com.google.android.finsky.externalreferrer.GetInstallReferrerService"));
        PackageManager packageManager = this.f9228a.mo11075f().getPackageManager();
        if (packageManager == null) {
            this.f9228a.mo11081c().m11556H().m11540a("Failed to obtain Package Manager to verify binding conditions for Install Referrer");
            return;
        }
        List<ResolveInfo> queryIntentServices = packageManager.queryIntentServices(intent, 0);
        if (queryIntentServices == null || queryIntentServices.isEmpty()) {
            this.f9228a.mo11081c().m11554J().m11540a("Play Service for fetching Install Referrer is unavailable on device");
            return;
        }
        ServiceInfo serviceInfo = queryIntentServices.get(0).serviceInfo;
        if (serviceInfo != null) {
            String str2 = serviceInfo.packageName;
            if (serviceInfo.name == null || !"com.android.vending".equals(str2) || !m11429c()) {
                this.f9228a.mo11081c().m11557G().m11540a("Play Store version 8.3.73 or higher required for Install Referrer");
                return;
            }
            try {
                this.f9228a.mo11081c().m11552L().m11539b("Install Referrer Service is", ConnectionTracker.m14372b().m14373a(this.f9228a.mo11075f(), new Intent(intent), zzflVar, 1) ? "available" : "not available");
            } catch (Exception e) {
                this.f9228a.mo11081c().m11560D().m11539b("Exception occurred while binding to Install Referrer Service", e.getMessage());
            }
        }
    }
}
