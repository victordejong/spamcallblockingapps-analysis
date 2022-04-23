package p131c.p132a.p133a.p134a;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import com.google.android.gms.internal.play_billing.zza;
/* renamed from: c.a.a.a.g0 */
/* loaded from: classes-dex2jar.jar:c/a/a/a/g0.class */
public final class C1996g0 extends BroadcastReceiver {

    /* renamed from: a */
    public final AbstractC2002j f7844a;

    /* renamed from: b */
    public boolean f7845b;

    /* renamed from: c */
    public final /* synthetic */ C1998h0 f7846c;

    public /* synthetic */ C1996g0(C1998h0 h0Var, AbstractC2002j jVar, C1993f0 f0Var) {
        this.f7846c = h0Var;
        this.f7844a = jVar;
    }

    /* renamed from: a */
    public static /* synthetic */ AbstractC2002j m31284a(C1996g0 g0Var) {
        return g0Var.f7844a;
    }

    /* renamed from: a */
    public final void m31286a(Context context) {
        C1996g0 g0Var;
        if (this.f7845b) {
            g0Var = this.f7846c.f7848b;
            context.unregisterReceiver(g0Var);
            this.f7845b = false;
            return;
        }
        zza.m9442b("BillingBroadcastManager", "Receiver is not registered.");
    }

    /* renamed from: a */
    public final void m31285a(Context context, IntentFilter intentFilter) {
        C1996g0 g0Var;
        if (!this.f7845b) {
            g0Var = this.f7846c.f7848b;
            context.registerReceiver(g0Var, intentFilter);
            this.f7845b = true;
        }
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        this.f7844a.mo19816a(zza.m9450a(intent, "BillingBroadcastManager"), zza.m9449a(intent.getExtras()));
    }
}
