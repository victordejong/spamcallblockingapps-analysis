package p081h.p203i.p204a.p224e.p285m.p287b;

import android.content.ServiceConnection;
import android.net.Uri;
import android.os.Bundle;
import kotlinx.coroutines.DebugKt;
import p081h.p203i.p204a.p224e.p235d.p248r.C7064a;
import p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8700p2;
/* renamed from: h.i.a.e.m.b.i0 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/m/b/i0.class */
public final class RunnableC8992i0 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ AbstractC8700p2 f20427a;

    /* renamed from: b */
    public final /* synthetic */ ServiceConnection f20428b;

    /* renamed from: c */
    public final /* synthetic */ ServiceConnectionC8986h0 f20429c;

    public RunnableC8992i0(ServiceConnectionC8986h0 h0Var, AbstractC8700p2 p2Var, ServiceConnection serviceConnection) {
        this.f20429c = h0Var;
        this.f20427a = p2Var;
        this.f20428b = serviceConnection;
    }

    @Override // java.lang.Runnable
    public final void run() {
        String str;
        ServiceConnectionC8986h0 h0Var = this.f20429c;
        C8980g0 g0Var = h0Var.f20410b;
        str = h0Var.f20409a;
        AbstractC8700p2 p2Var = this.f20427a;
        ServiceConnection serviceConnection = this.f20428b;
        Bundle a = g0Var.m16602a(str, p2Var);
        g0Var.f20398a.mo16214a().mo16328d();
        if (a != null) {
            long j = a.getLong("install_begin_timestamp_seconds", 0L) * 1000;
            if (j == 0) {
                g0Var.f20398a.mo16178c().m16375s().m16338a("Service response is missing Install Referrer install timestamp");
            } else {
                String string = a.getString("install_referrer");
                if (string == null || string.isEmpty()) {
                    g0Var.f20398a.mo16178c().m16375s().m16338a("No referrer defined in install referrer response");
                } else {
                    g0Var.f20398a.mo16178c().m16389A().m16337a("InstallReferrer API result", string);
                    C8959c4 s = g0Var.f20398a.m16274s();
                    String valueOf = String.valueOf(string);
                    Bundle a2 = s.m16737a(Uri.parse(valueOf.length() != 0 ? "?".concat(valueOf) : new String("?")));
                    if (a2 == null) {
                        g0Var.f20398a.mo16178c().m16375s().m16338a("No campaign params defined in install referrer result");
                    } else {
                        String string2 = a2.getString("medium");
                        if (string2 != null && !"(not set)".equalsIgnoreCase(string2) && !"organic".equalsIgnoreCase(string2)) {
                            long j2 = a.getLong("referrer_click_timestamp_seconds", 0L) * 1000;
                            if (j2 == 0) {
                                g0Var.f20398a.mo16178c().m16375s().m16338a("Install Referrer is missing click timestamp for ad campaign");
                            } else {
                                a2.putLong("click_timestamp", j2);
                            }
                        }
                        if (j == g0Var.f20398a.m16273t().f20206k.m16696a()) {
                            g0Var.f20398a.mo16187b();
                            g0Var.f20398a.mo16178c().m16389A().m16338a("Campaign has already been logged");
                        } else {
                            g0Var.f20398a.m16273t().f20206k.m16695a(j);
                            g0Var.f20398a.mo16187b();
                            g0Var.f20398a.mo16178c().m16389A().m16337a("Logging Install Referrer campaign from sdk with ", "referrer API");
                            a2.putString("_cis", "referrer API");
                            g0Var.f20398a.m16282k().m16236b(DebugKt.DEBUG_PROPERTY_VALUE_AUTO, "_cmp", a2);
                        }
                    }
                }
            }
        }
        if (serviceConnection != null) {
            C7064a.m21184a().m21182a(g0Var.f20398a.getContext(), serviceConnection);
        }
    }
}
