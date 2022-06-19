package com.google.android.gms.measurement.internal;

import android.content.ServiceConnection;
import android.net.Uri;
import android.os.Bundle;
import com.google.android.gms.common.stats.C2694a;
import com.google.android.gms.internal.measurement.AbstractC3831bt;
import com.google.android.gms.internal.measurement.C4047jf;
/* renamed from: com.google.android.gms.measurement.internal.ew */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/ew.class */
final class RunnableC4288ew implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ AbstractC3831bt f18815a;

    /* renamed from: b */
    private final /* synthetic */ ServiceConnection f18816b;

    /* renamed from: c */
    private final /* synthetic */ ServiceConnectionC4285et f18817c;

    public RunnableC4288ew(ServiceConnectionC4285et serviceConnectionC4285et, AbstractC3831bt abstractC3831bt, ServiceConnection serviceConnection) {
        this.f18817c = serviceConnectionC4285et;
        this.f18815a = abstractC3831bt;
        this.f18816b = serviceConnection;
    }

    @Override // java.lang.Runnable
    public final void run() {
        String str;
        C4286eu c4286eu = this.f18817c.f18811a;
        str = this.f18817c.f18812b;
        AbstractC3831bt abstractC3831bt = this.f18815a;
        ServiceConnection serviceConnection = this.f18816b;
        Bundle m4610a = c4286eu.m4610a(str, abstractC3831bt);
        c4286eu.f18813a.mo4031u().mo4037o();
        if (m4610a != null) {
            long j = m4610a.getLong("install_begin_timestamp_seconds", 0L) * 1000;
            if (j == 0) {
                c4286eu.f18813a.mo4030v().m4655x_().m4654a("Service response is missing Install Referrer install timestamp");
            } else {
                String string = m4610a.getString("install_referrer");
                if (string == null || string.isEmpty()) {
                    c4286eu.f18813a.mo4030v().m4655x_().m4654a("No referrer defined in Install Referrer response");
                } else {
                    c4286eu.f18813a.mo4030v().m4657j().m4653a("InstallReferrer API result", string);
                    C4424jw m4547i = c4286eu.f18813a.m4547i();
                    String valueOf = String.valueOf(string);
                    Bundle m4139a = m4547i.m4139a(Uri.parse(valueOf.length() != 0 ? "?".concat(valueOf) : new String("?")));
                    if (m4139a == null) {
                        c4286eu.f18813a.mo4030v().m4655x_().m4654a("No campaign params defined in Install Referrer result");
                    } else {
                        String string2 = m4139a.getString("medium");
                        if (string2 != null && !"(not set)".equalsIgnoreCase(string2) && !"organic".equalsIgnoreCase(string2)) {
                            long j2 = m4610a.getLong("referrer_click_timestamp_seconds", 0L) * 1000;
                            if (j2 == 0) {
                                c4286eu.f18813a.mo4030v().m4655x_().m4654a("Install Referrer is missing click timestamp for ad campaign");
                            } else {
                                m4139a.putLong("click_timestamp", j2);
                            }
                        }
                        if (j == c4286eu.f18813a.m4553c().f18767i.m4624a()) {
                            c4286eu.f18813a.mo4026y();
                            c4286eu.f18813a.mo4030v().m4657j().m4654a("Install Referrer campaign has already been logged");
                        } else if (!C4047jf.m5050b() || !c4286eu.f18813a.m4556b().m4804a(C4452t.f19419aB) || c4286eu.f18813a.m4574B()) {
                            c4286eu.f18813a.m4553c().f18767i.m4623a(j);
                            c4286eu.f18813a.mo4026y();
                            c4286eu.f18813a.mo4030v().m4657j().m4653a("Logging Install Referrer campaign from sdk with ", "referrer API");
                            m4139a.putString("_cis", "referrer API");
                            c4286eu.f18813a.m4548h().m4405a("auto", "_cmp", m4139a);
                        }
                    }
                }
            }
        }
        if (serviceConnection != null) {
            C2694a.m13893a().m13891a(c4286eu.f18813a.mo4034r(), serviceConnection);
        }
    }
}
