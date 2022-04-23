package p131c.p161d.p170b.p224d.p260i.p261a;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.measurement.internal.zzkl;
/* renamed from: c.d.b.d.i.a.i3 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/i/a/i3.class */
public class C4719i3 extends BroadcastReceiver {

    /* renamed from: a */
    public final zzkl f17166a;

    /* renamed from: b */
    public boolean f17167b;

    /* renamed from: c */
    public boolean f17168c;

    public C4719i3(zzkl zzklVar) {
        Preconditions.m17288a(zzklVar);
        this.f17166a = zzklVar;
    }

    /* renamed from: a */
    public final void m24940a() {
        this.f17166a.m8787r();
        this.f17166a.mo8795j().mo9085c();
        if (!this.f17167b) {
            this.f17166a.mo8846B().registerReceiver(this, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
            this.f17168c = this.f17166a.m8796i().m9134r();
            this.f17166a.mo8789p().m9144y().m9142a("Registering connectivity change receiver. Network connected", Boolean.valueOf(this.f17168c));
            this.f17167b = true;
        }
    }

    /* renamed from: b */
    public final void m24938b() {
        this.f17166a.m8787r();
        this.f17166a.mo8795j().mo9085c();
        this.f17166a.mo8795j().mo9085c();
        if (this.f17167b) {
            this.f17166a.mo8789p().m9144y().m9143a("Unregistering connectivity change receiver");
            this.f17167b = false;
            this.f17168c = false;
            try {
                this.f17166a.mo8846B().unregisterReceiver(this);
            } catch (IllegalArgumentException e) {
                this.f17166a.mo8789p().m9152q().m9142a("Failed to unregister the network broadcast receiver", e);
            }
        }
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        this.f17166a.m8787r();
        String action = intent.getAction();
        this.f17166a.mo8789p().m9144y().m9142a("NetworkBroadcastReceiver received action", action);
        if ("android.net.conn.CONNECTIVITY_CHANGE".equals(action)) {
            boolean r = this.f17166a.m8796i().m9134r();
            if (this.f17168c != r) {
                this.f17168c = r;
                this.f17166a.mo8795j().m9093a(new RunnableC4746l3(this, r));
                return;
            }
            return;
        }
        this.f17166a.mo8789p().m9149t().m9142a("NetworkBroadcastReceiver received unknown action", action);
    }
}
