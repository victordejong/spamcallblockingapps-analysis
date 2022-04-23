package com.google.android.gms.measurement.internal;

import android.content.ServiceConnection;
import android.net.Uri;
import android.os.Bundle;
import com.google.android.gms.common.stats.a;
import com.google.android.gms.internal.measurement.du;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/ef.class */
final class ef implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ du f29555a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ ServiceConnection f29556b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ eg f29557c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ef(eg egVar, du duVar, ServiceConnection serviceConnection) {
        this.f29557c = egVar;
        this.f29555a = duVar;
        this.f29556b = serviceConnection;
    }

    @Override // java.lang.Runnable
    public final void run() {
        String str;
        eg egVar = this.f29557c;
        eh ehVar = egVar.f29558a;
        str = egVar.f29559b;
        du duVar = this.f29555a;
        ServiceConnection serviceConnection = this.f29556b;
        ehVar.f29560a.d().S_();
        Bundle bundle = new Bundle();
        bundle.putString("package_name", str);
        Bundle bundle2 = null;
        try {
            Bundle a2 = duVar.a(bundle);
            if (a2 == null) {
                ehVar.f29560a.c().f29506c.a("Install Referrer Service returned a null response");
            } else {
                bundle2 = a2;
            }
        } catch (Exception e) {
            ehVar.f29560a.c().f29506c.a("Exception occurred while retrieving the Install Referrer", e.getMessage());
        }
        ehVar.f29560a.d().S_();
        if (bundle2 != null) {
            long j = bundle2.getLong("install_begin_timestamp_seconds", 0L) * 1000;
            if (j == 0) {
                ehVar.f29560a.c().f.a("Service response is missing Install Referrer install timestamp");
            } else {
                String string = bundle2.getString("install_referrer");
                if (string == null || string.isEmpty()) {
                    ehVar.f29560a.c().f29506c.a("No referrer defined in Install Referrer response");
                } else {
                    ehVar.f29560a.c().k.a("InstallReferrer API result", string);
                    Bundle a3 = ehVar.f29560a.g().a(Uri.parse(string.length() != 0 ? "?".concat(string) : new String("?")));
                    if (a3 == null) {
                        ehVar.f29560a.c().f29506c.a("No campaign params defined in Install Referrer result");
                    } else {
                        String string2 = a3.getString("medium");
                        if (string2 != null && !"(not set)".equalsIgnoreCase(string2) && !"organic".equalsIgnoreCase(string2)) {
                            long j2 = bundle2.getLong("referrer_click_timestamp_seconds", 0L) * 1000;
                            if (j2 == 0) {
                                ehVar.f29560a.c().f29506c.a("Install Referrer is missing click timestamp for ad campaign");
                            } else {
                                a3.putLong("click_timestamp", j2);
                            }
                        }
                        if (j == ehVar.f29560a.b().e.a()) {
                            ehVar.f29560a.c().k.a("Install Referrer campaign has already been logged");
                        } else if (ehVar.f29560a.r()) {
                            ehVar.f29560a.b().e.a(j);
                            ehVar.f29560a.c().k.a("Logging Install Referrer campaign from sdk with ", "referrer API");
                            a3.putString("_cis", "referrer API");
                            ehVar.f29560a.f().a("auto", "_cmp", a3);
                        }
                    }
                }
            }
        }
        a.a().a(ehVar.f29560a.f29583a, serviceConnection);
    }
}
