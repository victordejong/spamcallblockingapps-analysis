package com.google.android.gms.measurement.internal;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import com.google.android.gms.common.internal.C2662s;
/* renamed from: com.google.android.gms.measurement.internal.ej */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/ej.class */
public class C4275ej extends BroadcastReceiver {

    /* renamed from: a */
    private static final String f18745a = C4275ej.class.getName();

    /* renamed from: b */
    private final C4415jo f18746b;

    /* renamed from: c */
    private boolean f18747c;

    /* renamed from: d */
    private boolean f18748d;

    public C4275ej(C4415jo c4415jo) {
        C2662s.m13981a(c4415jo);
        this.f18746b = c4415jo;
    }

    /* renamed from: a */
    public final void m4645a() {
        this.f18746b.m4196k();
        this.f18746b.mo4031u().mo4037o();
        if (this.f18747c) {
            return;
        }
        this.f18746b.mo4034r().registerReceiver(this, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
        this.f18748d = this.f18746b.m4205d().m4646b();
        this.f18746b.mo4030v().m4657j().m4653a("Registering connectivity change receiver. Network connected", Boolean.valueOf(this.f18748d));
        this.f18747c = true;
    }

    /* renamed from: b */
    public final void m4643b() {
        this.f18746b.m4196k();
        this.f18746b.mo4031u().mo4037o();
        this.f18746b.mo4031u().mo4037o();
        if (!this.f18747c) {
            return;
        }
        this.f18746b.mo4030v().m4657j().m4654a("Unregistering connectivity change receiver");
        this.f18747c = false;
        this.f18748d = false;
        try {
            this.f18746b.mo4034r().unregisterReceiver(this);
        } catch (IllegalArgumentException e) {
            this.f18746b.mo4030v().m4655x_().m4653a("Failed to unregister the network broadcast receiver", e);
        }
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        this.f18746b.m4196k();
        String action = intent.getAction();
        this.f18746b.mo4030v().m4657j().m4653a("NetworkBroadcastReceiver received action", action);
        if (!"android.net.conn.CONNECTIVITY_CHANGE".equals(action)) {
            this.f18746b.mo4030v().m4662e().m4653a("NetworkBroadcastReceiver received unknown action", action);
            return;
        }
        boolean m4646b = this.f18746b.m4205d().m4646b();
        if (this.f18748d == m4646b) {
            return;
        }
        this.f18748d = m4646b;
        this.f18746b.mo4031u().m4587a(new RunnableC4278em(this, m4646b));
    }
}
