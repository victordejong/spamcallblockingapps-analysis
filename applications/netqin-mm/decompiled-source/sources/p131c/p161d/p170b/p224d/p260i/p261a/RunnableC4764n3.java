package p131c.p161d.p170b.p224d.p260i.p261a;

import android.content.ServiceConnection;
import android.net.Uri;
import android.os.Bundle;
import com.google.android.gms.common.stats.ConnectionTracker;
import com.google.android.gms.internal.measurement.zzd;
import com.google.android.gms.internal.measurement.zzmy;
import com.google.android.gms.measurement.internal.zzas;
import com.google.android.gms.measurement.internal.zzfk;
import com.google.android.gms.measurement.internal.zzfl;
import com.google.android.gms.measurement.internal.zzkv;
/* renamed from: c.d.b.d.i.a.n3 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/i/a/n3.class */
public final class RunnableC4764n3 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ zzd f17279a;

    /* renamed from: b */
    public final /* synthetic */ ServiceConnection f17280b;

    /* renamed from: c */
    public final /* synthetic */ zzfk f17281c;

    public RunnableC4764n3(zzfk zzfkVar, zzd zzdVar, ServiceConnection serviceConnection) {
        this.f17281c = zzfkVar;
        this.f17279a = zzdVar;
        this.f17280b = serviceConnection;
    }

    @Override // java.lang.Runnable
    public final void run() {
        String str;
        zzfk zzfkVar = this.f17281c;
        zzfl zzflVar = zzfkVar.f29979b;
        str = zzfkVar.f29978a;
        zzd zzdVar = this.f17279a;
        ServiceConnection serviceConnection = this.f17280b;
        Bundle a = zzflVar.m9117a(str, zzdVar);
        zzflVar.f29980a.mo8795j().mo9085c();
        if (a != null) {
            long j = a.getLong("install_begin_timestamp_seconds", 0L) * 1000;
            if (j == 0) {
                zzflVar.f29980a.mo8789p().m9149t().m9143a("Service response is missing Install Referrer install timestamp");
            } else {
                String string = a.getString("install_referrer");
                if (string == null || string.isEmpty()) {
                    zzflVar.f29980a.mo8789p().m9152q().m9143a("No referrer defined in Install Referrer response");
                } else {
                    zzflVar.f29980a.mo8789p().m9144y().m9142a("InstallReferrer API result", string);
                    zzkv s = zzflVar.f29980a.m9044s();
                    String valueOf = String.valueOf(string);
                    Bundle a2 = s.m8737a(Uri.parse(valueOf.length() != 0 ? "?".concat(valueOf) : new String("?")));
                    if (a2 == null) {
                        zzflVar.f29980a.mo8789p().m9152q().m9143a("No campaign params defined in Install Referrer result");
                    } else {
                        String string2 = a2.getString("medium");
                        if (string2 != null && !"(not set)".equalsIgnoreCase(string2) && !"organic".equalsIgnoreCase(string2)) {
                            long j2 = a.getLong("referrer_click_timestamp_seconds", 0L) * 1000;
                            if (j2 == 0) {
                                zzflVar.f29980a.mo8789p().m9152q().m9143a("Install Referrer is missing click timestamp for ad campaign");
                            } else {
                                a2.putLong("click_timestamp", j2);
                            }
                        }
                        if (j == zzflVar.f29980a.m9050l().f17217k.m9131a()) {
                            zzflVar.f29980a.mo8789p().m9144y().m9143a("Install Referrer campaign has already been logged");
                        } else if (!zzmy.m9506a() || !zzflVar.f29980a.m9062b().m9354a(zzas.f29896t0) || zzflVar.f29980a.m9058c()) {
                            zzflVar.f29980a.m9050l().f17217k.m9130a(j);
                            zzflVar.f29980a.mo8789p().m9144y().m9142a("Logging Install Referrer campaign from sdk with ", "referrer API");
                            a2.putString("_cis", "referrer API");
                            zzflVar.f29980a.m9045r().m8974a("auto", "_cmp", a2);
                        }
                    }
                }
            }
        }
        if (serviceConnection != null) {
            ConnectionTracker.m17130a().m17128a(zzflVar.f29980a.mo8846B(), serviceConnection);
        }
    }
}
