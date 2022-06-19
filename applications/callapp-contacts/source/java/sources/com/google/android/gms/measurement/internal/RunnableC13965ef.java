package com.google.android.gms.measurement.internal;

import android.content.ServiceConnection;
import android.net.Uri;
import android.os.Bundle;
import com.google.android.gms.common.stats.C12088a;
import com.google.android.gms.internal.measurement.AbstractC13454du;
/* renamed from: com.google.android.gms.measurement.internal.ef */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/ef.class */
final class RunnableC13965ef implements Runnable {

    /* renamed from: a */
    final /* synthetic */ AbstractC13454du f51477a;

    /* renamed from: b */
    final /* synthetic */ ServiceConnection f51478b;

    /* renamed from: c */
    final /* synthetic */ ServiceConnectionC13966eg f51479c;

    public RunnableC13965ef(ServiceConnectionC13966eg serviceConnectionC13966eg, AbstractC13454du abstractC13454du, ServiceConnection serviceConnection) {
        this.f51479c = serviceConnectionC13966eg;
        this.f51477a = abstractC13454du;
        this.f51478b = serviceConnection;
    }

    @Override // java.lang.Runnable
    public final void run() {
        String str;
        ServiceConnectionC13966eg serviceConnectionC13966eg = this.f51479c;
        C13967eh c13967eh = serviceConnectionC13966eg.f51480a;
        str = serviceConnectionC13966eg.f51481b;
        AbstractC13454du abstractC13454du = this.f51477a;
        ServiceConnection serviceConnection = this.f51478b;
        c13967eh.f51482a.mo11658d().mo11884S_();
        Bundle bundle = new Bundle();
        bundle.putString("package_name", str);
        Bundle bundle2 = null;
        try {
            Bundle mo12910a = abstractC13454du.mo12910a(bundle);
            if (mo12910a == null) {
                c13967eh.f51482a.mo11661c().f51395c.m12092a("Install Referrer Service returned a null response");
            } else {
                bundle2 = mo12910a;
            }
        } catch (Exception e) {
            c13967eh.f51482a.mo11661c().f51395c.m12091a("Exception occurred while retrieving the Install Referrer", e.getMessage());
        }
        c13967eh.f51482a.mo11658d().mo11884S_();
        if (bundle2 != null) {
            long j = bundle2.getLong("install_begin_timestamp_seconds", 0L) * 1000;
            if (j == 0) {
                c13967eh.f51482a.mo11661c().f51398f.m12092a("Service response is missing Install Referrer install timestamp");
            } else {
                String string = bundle2.getString("install_referrer");
                if (string == null || string.isEmpty()) {
                    c13967eh.f51482a.mo11661c().f51395c.m12092a("No referrer defined in Install Referrer response");
                } else {
                    c13967eh.f51482a.mo11661c().f51403k.m12091a("InstallReferrer API result", string);
                    Bundle m11607a = c13967eh.f51482a.m11988g().m11607a(Uri.parse(string.length() != 0 ? "?".concat(string) : new String("?")));
                    if (m11607a == null) {
                        c13967eh.f51482a.mo11661c().f51395c.m12092a("No campaign params defined in Install Referrer result");
                    } else {
                        String string2 = m11607a.getString("medium");
                        if (string2 != null && !"(not set)".equalsIgnoreCase(string2) && !"organic".equalsIgnoreCase(string2)) {
                            long j2 = bundle2.getLong("referrer_click_timestamp_seconds", 0L) * 1000;
                            if (j2 == 0) {
                                c13967eh.f51482a.mo11661c().f51395c.m12092a("Install Referrer is missing click timestamp for ad campaign");
                            } else {
                                m11607a.putLong("click_timestamp", j2);
                            }
                        }
                        if (j == c13967eh.f51482a.m11991b().f51459e.m12053a()) {
                            c13967eh.f51482a.mo11661c().f51403k.m12092a("Install Referrer campaign has already been logged");
                        } else if (c13967eh.f51482a.m11979r()) {
                            c13967eh.f51482a.m11991b().f51459e.m12052a(j);
                            c13967eh.f51482a.mo11661c().f51403k.m12091a("Logging Install Referrer campaign from sdk with ", "referrer API");
                            m11607a.putString("_cis", "referrer API");
                            c13967eh.f51482a.m11989f().m11856a("auto", "_cmp", m11607a);
                        }
                    }
                }
            }
        }
        C12088a.m19072a().m19070a(c13967eh.f51482a.f51523a, serviceConnection);
    }
}
