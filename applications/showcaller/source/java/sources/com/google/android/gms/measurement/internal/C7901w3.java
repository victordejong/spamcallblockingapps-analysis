package com.google.android.gms.measurement.internal;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import com.google.android.gms.common.internal.C6155o;
/* renamed from: com.google.android.gms.measurement.internal.w3 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/w3.class */
public final class C7901w3 extends BroadcastReceiver {

    /* renamed from: a */
    static final String f35769a = C7901w3.class.getName();

    /* renamed from: b */
    private final C7819o9 f35770b;

    /* renamed from: c */
    private boolean f35771c;

    /* renamed from: d */
    private boolean f35772d;

    public C7901w3(C7819o9 c7819o9) {
        C6155o.m17018j(c7819o9);
        this.f35770b = c7819o9;
    }

    /* renamed from: a */
    public final void m5895a() {
        this.f35770b.m6148e0();
        this.f35770b.mo6029b().mo6113f();
        if (this.f35771c) {
            return;
        }
        this.f35770b.mo6030a().registerReceiver(this, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
        this.f35772d = this.f35770b.m6159V().m6002k();
        this.f35770b.mo6047C().m6187u().m6215b("Registering connectivity change receiver. Network connected", Boolean.valueOf(this.f35772d));
        this.f35771c = true;
    }

    /* renamed from: b */
    public final void m5894b() {
        this.f35770b.m6148e0();
        this.f35770b.mo6029b().mo6113f();
        this.f35770b.mo6029b().mo6113f();
        if (this.f35771c) {
            this.f35770b.mo6047C().m6187u().m6216a("Unregistering connectivity change receiver");
            this.f35771c = false;
            this.f35772d = false;
            try {
                this.f35770b.mo6030a().unregisterReceiver(this);
            } catch (IllegalArgumentException e) {
                this.f35770b.mo6047C().m6195m().m6215b("Failed to unregister the network broadcast receiver", e);
            }
        }
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        this.f35770b.m6148e0();
        String action = intent.getAction();
        this.f35770b.mo6047C().m6187u().m6215b("NetworkBroadcastReceiver received action", action);
        if (!"android.net.conn.CONNECTIVITY_CHANGE".equals(action)) {
            this.f35770b.mo6047C().m6192p().m6215b("NetworkBroadcastReceiver received unknown action", action);
            return;
        }
        boolean m6002k = this.f35770b.m6159V().m6002k();
        if (this.f35772d == m6002k) {
            return;
        }
        this.f35772d = m6002k;
        this.f35770b.mo6029b().m6109p(new RunnableC7890v3(this, m6002k));
    }
}
