package com.google.android.gms.measurement.internal;

import android.content.ServiceConnection;
import android.net.Uri;
import android.os.Bundle;
import com.google.android.gms.common.stats.C1599a;
import com.google.android.gms.internal.measurement.AbstractC2139k3;
/* renamed from: com.google.android.gms.measurement.internal.f4 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/f4.class */
final class RunnableC2252f4 implements Runnable {

    /* renamed from: b */
    final /* synthetic */ AbstractC2139k3 f10180b;

    /* renamed from: c */
    final /* synthetic */ ServiceConnection f10181c;

    /* renamed from: d */
    final /* synthetic */ ServiceConnectionC2260g4 f10182d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC2252f4(ServiceConnectionC2260g4 g4Var, AbstractC2139k3 k3Var, ServiceConnection serviceConnection) {
        this.f10182d = g4Var;
        this.f10180b = k3Var;
        this.f10181c = serviceConnection;
    }

    @Override // java.lang.Runnable
    public final void run() {
        String str;
        C2294m3 m;
        String str2;
        ServiceConnectionC2260g4 g4Var = this.f10182d;
        C2267h4 h4Var = g4Var.f10207b;
        str = g4Var.f10206a;
        AbstractC2139k3 k3Var = this.f10180b;
        ServiceConnection serviceConnection = this.f10181c;
        h4Var.f10218a.c().f();
        Bundle bundle = new Bundle();
        bundle.putString("package_name", str);
        Bundle bundle2 = null;
        try {
            Bundle Y4 = k3Var.m4273Y4(bundle);
            if (Y4 == null) {
                h4Var.f10218a.t().m().m3876a("Install Referrer Service returned a null response");
            } else {
                bundle2 = Y4;
            }
        } catch (Exception e) {
            h4Var.f10218a.t().m().m3875b("Exception occurred while retrieving the Install Referrer", e.getMessage());
        }
        h4Var.f10218a.c().f();
        if (bundle2 != null) {
            long j = bundle2.getLong("install_begin_timestamp_seconds", 0L) * 1000;
            if (j == 0) {
                m = h4Var.f10218a.t().p();
                str2 = "Service response is missing Install Referrer install timestamp";
            } else {
                String string = bundle2.getString("install_referrer");
                if (string == null || string.isEmpty()) {
                    m = h4Var.f10218a.t().m();
                    str2 = "No referrer defined in Install Referrer response";
                } else {
                    h4Var.f10218a.t().w().m3875b("InstallReferrer API result", string);
                    Bundle k0 = h4Var.f10218a.G().k0(Uri.parse(string.length() != 0 ? "?".concat(string) : new String("?")));
                    if (k0 == null) {
                        m = h4Var.f10218a.t().m();
                        str2 = "No campaign params defined in Install Referrer result";
                    } else {
                        String string2 = k0.getString("medium");
                        if (string2 != null && !"(not set)".equalsIgnoreCase(string2) && !"organic".equalsIgnoreCase(string2)) {
                            long j2 = bundle2.getLong("referrer_click_timestamp_seconds", 0L) * 1000;
                            if (j2 == 0) {
                                m = h4Var.f10218a.t().m();
                                str2 = "Install Referrer is missing click timestamp for ad campaign";
                            } else {
                                k0.putLong("click_timestamp", j2);
                            }
                        }
                        if (j == h4Var.f10218a.A().f.m4026a()) {
                            m = h4Var.f10218a.t().w();
                            str2 = "Install Referrer campaign has already been logged";
                        } else if (h4Var.f10218a.i()) {
                            h4Var.f10218a.A().f.m4025b(j);
                            h4Var.f10218a.t().w().m3875b("Logging Install Referrer campaign from sdk with ", "referrer API");
                            k0.putString("_cis", "referrer API");
                            h4Var.f10218a.F().X("auto", "_cmp", k0);
                        }
                    }
                }
            }
            m.m3876a(str2);
        }
        C1599a.m8265b().m8264c(h4Var.f10218a.b(), serviceConnection);
    }
}
