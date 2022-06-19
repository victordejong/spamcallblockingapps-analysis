package p193e.p1577m.p1578a.p1642f.p1667l.p1668a;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.google.android.gms.measurement.internal.zzen;
import com.google.android.gms.measurement.internal.zzkp;
/* renamed from: e.m.a.f.l.a.t */
/* loaded from: classes3-dex2jar.jar:e/m/a/f/l/a/t.class */
public final class C25110t extends BroadcastReceiver {

    /* renamed from: a */
    public final zzkp f70285a;

    /* renamed from: b */
    public boolean f70286b;

    /* renamed from: c */
    public boolean f70287c;

    public C25110t(zzkp zzkpVar) {
        this.f70285a = zzkpVar;
    }

    /* renamed from: a */
    public final void m4162a() {
        this.f70285a.c();
        this.f70285a.a().d();
        this.f70285a.a().d();
        if (this.f70286b) {
            this.f70285a.zzay().n.m38590a("Unregistering connectivity change receiver");
            this.f70286b = false;
            this.f70287c = false;
            try {
                this.f70285a.l.a.unregisterReceiver(this);
            } catch (IllegalArgumentException e) {
                this.f70285a.zzay().f.m38589b("Failed to unregister the network broadcast receiver", e);
            }
        }
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        this.f70285a.c();
        String action = intent.getAction();
        this.f70285a.zzay().n.m38589b("NetworkBroadcastReceiver received action", action);
        if (!"android.net.conn.CONNECTIVITY_CHANGE".equals(action)) {
            this.f70285a.zzay().i.m38589b("NetworkBroadcastReceiver received unknown action", action);
            return;
        }
        zzen zzenVar = this.f70285a.b;
        zzkp.E(zzenVar);
        boolean h = zzenVar.h();
        if (this.f70287c == h) {
            return;
        }
        this.f70287c = h;
        this.f70285a.a().n(new RunnableC25106s(this, h));
    }
}
