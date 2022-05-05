package p081h.p093b.p094a.p095a;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import p081h.p203i.p204a.p224e.p259j.p278s.C8805a;
/* renamed from: h.b.a.a.b0 */
/* loaded from: classes-dex2jar.jar:h/b/a/a/b0.class */
public final class C5536b0 extends BroadcastReceiver {

    /* renamed from: a */
    public final AbstractC5550h f13830a;

    /* renamed from: b */
    public boolean f13831b;

    /* renamed from: c */
    public final /* synthetic */ C5533a0 f13832c;

    public C5536b0(C5533a0 a0Var, AbstractC5550h hVar) {
        this.f13832c = a0Var;
        this.f13830a = hVar;
    }

    /* renamed from: a */
    public static /* synthetic */ AbstractC5550h m25192a(C5536b0 b0Var) {
        return b0Var.f13830a;
    }

    /* renamed from: a */
    public final void m25194a(Context context) {
        C5536b0 b0Var;
        if (this.f13831b) {
            b0Var = this.f13832c.f13804b;
            context.unregisterReceiver(b0Var);
            this.f13831b = false;
            return;
        }
        C8805a.m16910b("BillingBroadcastManager", "Receiver is not registered.");
    }

    /* renamed from: a */
    public final void m25193a(Context context, IntentFilter intentFilter) {
        C5536b0 b0Var;
        if (!this.f13831b) {
            b0Var = this.f13832c.f13804b;
            context.registerReceiver(b0Var, intentFilter);
            this.f13831b = true;
        }
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        this.f13830a.mo3573a(C8805a.m16912b(intent, "BillingBroadcastManager"), C8805a.m16917a(intent.getExtras()));
    }
}
