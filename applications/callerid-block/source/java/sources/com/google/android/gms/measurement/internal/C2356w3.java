package com.google.android.gms.measurement.internal;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import com.google.android.gms.common.internal.C1581h;
/* renamed from: com.google.android.gms.measurement.internal.w3 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/w3.class */
final class C2356w3 extends BroadcastReceiver {

    /* renamed from: a */
    private final o9 f10453a;

    /* renamed from: b */
    private boolean f10454b;

    /* renamed from: c */
    private boolean f10455c;

    C2356w3(o9 o9Var) {
        C1581h.m8347h(o9Var);
        this.f10453a = o9Var;
    }

    /* renamed from: a */
    public final void m3827a() {
        this.f10453a.c0();
        this.f10453a.c().f();
        if (this.f10454b) {
            return;
        }
        this.f10453a.b().registerReceiver(this, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
        this.f10455c = this.f10453a.U().k();
        this.f10453a.t().w().m3875b("Registering connectivity change receiver. Network connected", Boolean.valueOf(this.f10455c));
        this.f10454b = true;
    }

    /* renamed from: b */
    public final void m3826b() {
        this.f10453a.c0();
        this.f10453a.c().f();
        this.f10453a.c().f();
        if (this.f10454b) {
            this.f10453a.t().w().m3876a("Unregistering connectivity change receiver");
            this.f10454b = false;
            this.f10455c = false;
            try {
                this.f10453a.b().unregisterReceiver(this);
            } catch (IllegalArgumentException e) {
                this.f10453a.t().m().m3875b("Failed to unregister the network broadcast receiver", e);
            }
        }
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        this.f10453a.c0();
        String action = intent.getAction();
        this.f10453a.t().w().m3875b("NetworkBroadcastReceiver received action", action);
        if (!"android.net.conn.CONNECTIVITY_CHANGE".equals(action)) {
            this.f10453a.t().p().m3875b("NetworkBroadcastReceiver received unknown action", action);
            return;
        }
        boolean k = this.f10453a.U().k();
        if (this.f10455c == k) {
            return;
        }
        this.f10455c = k;
        this.f10453a.c().p(new RunnableC2351v3(this, k));
    }
}
