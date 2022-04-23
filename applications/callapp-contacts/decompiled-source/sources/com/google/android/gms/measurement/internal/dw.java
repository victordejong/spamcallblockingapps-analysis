package com.google.android.gms.measurement.internal;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import com.google.android.gms.common.internal.o;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/dw.class */
public final class dw extends BroadcastReceiver {

    /* renamed from: a  reason: collision with root package name */
    static final String f29523a = "com.google.android.gms.measurement.internal.dw";

    /* renamed from: b  reason: collision with root package name */
    private final jo f29524b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f29525c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f29526d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public dw(jo joVar) {
        o.a(joVar);
        this.f29524b = joVar;
    }

    public final void a() {
        this.f29524b.i();
        this.f29524b.d().S_();
        if (!this.f29525c) {
            this.f29524b.f.f29583a.registerReceiver(this, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
            this.f29526d = this.f29524b.e().b();
            this.f29524b.c().k.a("Registering connectivity change receiver. Network connected", Boolean.valueOf(this.f29526d));
            this.f29525c = true;
        }
    }

    public final void b() {
        this.f29524b.i();
        this.f29524b.d().S_();
        this.f29524b.d().S_();
        if (this.f29525c) {
            this.f29524b.c().k.a("Unregistering connectivity change receiver");
            this.f29525c = false;
            this.f29526d = false;
            try {
                this.f29524b.f.f29583a.unregisterReceiver(this);
            } catch (IllegalArgumentException e) {
                this.f29524b.c().f29506c.a("Failed to unregister the network broadcast receiver", e);
            }
        }
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        this.f29524b.i();
        String action = intent.getAction();
        this.f29524b.c().k.a("NetworkBroadcastReceiver received action", action);
        if ("android.net.conn.CONNECTIVITY_CHANGE".equals(action)) {
            boolean b2 = this.f29524b.e().b();
            if (this.f29526d != b2) {
                this.f29526d = b2;
                this.f29524b.d().a(new dv(this, b2));
                return;
            }
            return;
        }
        this.f29524b.c().f.a("NetworkBroadcastReceiver received unknown action", action);
    }
}
