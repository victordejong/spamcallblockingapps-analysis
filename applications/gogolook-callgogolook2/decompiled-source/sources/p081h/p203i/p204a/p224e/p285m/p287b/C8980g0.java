package p081h.p203i.p204a.p224e.p285m.p287b;

import android.content.ComponentName;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.os.Bundle;
import androidx.annotation.Nullable;
import androidx.annotation.WorkerThread;
import java.util.List;
import p081h.p203i.p204a.p224e.p235d.p248r.C7064a;
import p081h.p203i.p204a.p224e.p235d.p251t.C7096b;
import p081h.p203i.p204a.p224e.p235d.p251t.C7097c;
import p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8700p2;
/* renamed from: h.i.a.e.m.b.g0 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/m/b/g0.class */
public final class C8980g0 {

    /* renamed from: a */
    public final C9052s0 f20398a;

    public C8980g0(C9052s0 s0Var) {
        this.f20398a = s0Var;
    }

    @Nullable
    @WorkerThread
    /* renamed from: a */
    public final Bundle m16602a(String str, AbstractC8700p2 p2Var) {
        this.f20398a.mo16214a().mo16328d();
        if (p2Var == null) {
            this.f20398a.mo16178c().m16372v().m16338a("Attempting to use Install Referrer Service while it is not initialized");
            return null;
        }
        Bundle bundle = new Bundle();
        bundle.putString("package_name", str);
        try {
            Bundle i = p2Var.mo17237i(bundle);
            if (i != null) {
                return i;
            }
            this.f20398a.mo16178c().m16375s().m16338a("Install Referrer Service returned a null response");
            return null;
        } catch (Exception e) {
            this.f20398a.mo16178c().m16375s().m16337a("Exception occurred while retrieving the Install Referrer", e.getMessage());
            return null;
        }
    }

    @WorkerThread
    /* renamed from: a */
    public final void m16603a(String str) {
        if (str == null || str.isEmpty()) {
            this.f20398a.mo16178c().m16369y().m16338a("Install Referrer Reporter was called with invalid app package name");
            return;
        }
        this.f20398a.mo16214a().mo16328d();
        if (!m16604a()) {
            this.f20398a.mo16178c().m16369y().m16338a("Install Referrer Reporter is not available");
            return;
        }
        this.f20398a.mo16178c().m16369y().m16338a("Install Referrer Reporter is initializing");
        ServiceConnectionC8986h0 h0Var = new ServiceConnectionC8986h0(this, str);
        this.f20398a.mo16214a().mo16328d();
        Intent intent = new Intent("com.google.android.finsky.BIND_GET_INSTALL_REFERRER_SERVICE");
        intent.setComponent(new ComponentName("com.android.vending", "com.google.android.finsky.externalreferrer.GetInstallReferrerService"));
        PackageManager packageManager = this.f20398a.getContext().getPackageManager();
        if (packageManager == null) {
            this.f20398a.mo16178c().m16372v().m16338a("Failed to obtain Package Manager to verify binding conditions");
            return;
        }
        List<ResolveInfo> queryIntentServices = packageManager.queryIntentServices(intent, 0);
        if (queryIntentServices == null || queryIntentServices.isEmpty()) {
            this.f20398a.mo16178c().m16369y().m16338a("Play Service for fetching Install Referrer is unavailable on device");
            return;
        }
        ResolveInfo resolveInfo = queryIntentServices.get(0);
        ServiceInfo serviceInfo = resolveInfo.serviceInfo;
        if (serviceInfo != null) {
            String str2 = serviceInfo.packageName;
            if (resolveInfo.serviceInfo.name == null || !"com.android.vending".equals(str2) || !m16604a()) {
                this.f20398a.mo16178c().m16369y().m16338a("Play Store missing or incompatible. Version 8.3.73 or later required");
                return;
            }
            try {
                this.f20398a.mo16178c().m16369y().m16337a("Install Referrer Service is", C7064a.m21184a().m21183a(this.f20398a.getContext(), new Intent(intent), h0Var, 1) ? "available" : "not available");
            } catch (Exception e) {
                this.f20398a.mo16178c().m16375s().m16337a("Exception occurred while binding to Install Referrer Service", e.getMessage());
            }
        }
    }

    /* renamed from: a */
    public final boolean m16604a() {
        boolean z = false;
        try {
            C7096b b = C7097c.m21085b(this.f20398a.getContext());
            if (b == null) {
                this.f20398a.mo16178c().m16369y().m16338a("Failed to retrieve Package Manager to check Play Store compatibility");
                return false;
            }
            if (b.m21087b("com.android.vending", 128).versionCode >= 80837300) {
                z = true;
            }
            return z;
        } catch (Exception e) {
            this.f20398a.mo16178c().m16369y().m16337a("Failed to retrieve Play Store version", e);
            return false;
        }
    }
}
