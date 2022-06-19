package com.google.android.gms.measurement.internal;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import com.google.android.gms.common.internal.C12045o;
/* renamed from: com.google.android.gms.measurement.internal.dw */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/dw.class */
public final class C13955dw extends BroadcastReceiver {

    /* renamed from: a */
    static final String f51424a = "com.google.android.gms.measurement.internal.dw";

    /* renamed from: b */
    private final C14110jo f51425b;

    /* renamed from: c */
    private boolean f51426c;

    /* renamed from: d */
    private boolean f51427d;

    public C13955dw(C14110jo c14110jo) {
        C12045o.m19162a(c14110jo);
        this.f51425b = c14110jo;
    }

    /* renamed from: a */
    public final void m12080a() {
        this.f51425b.m11651i();
        this.f51425b.mo11658d().mo11884S_();
        if (this.f51426c) {
            return;
        }
        this.f51425b.f51969f.f51523a.registerReceiver(this, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
        this.f51427d = this.f51425b.m11656e().m12081b();
        this.f51425b.mo11661c().f51403k.m12091a("Registering connectivity change receiver. Network connected", Boolean.valueOf(this.f51427d));
        this.f51426c = true;
    }

    /* renamed from: b */
    public final void m12078b() {
        this.f51425b.m11651i();
        this.f51425b.mo11658d().mo11884S_();
        this.f51425b.mo11658d().mo11884S_();
        if (this.f51426c) {
            this.f51425b.mo11661c().f51403k.m12092a("Unregistering connectivity change receiver");
            this.f51426c = false;
            this.f51427d = false;
            try {
                this.f51425b.f51969f.f51523a.unregisterReceiver(this);
            } catch (IllegalArgumentException e) {
                this.f51425b.mo11661c().f51395c.m12091a("Failed to unregister the network broadcast receiver", e);
            }
        }
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        this.f51425b.m11651i();
        String action = intent.getAction();
        this.f51425b.mo11661c().f51403k.m12091a("NetworkBroadcastReceiver received action", action);
        if (!"android.net.conn.CONNECTIVITY_CHANGE".equals(action)) {
            this.f51425b.mo11661c().f51398f.m12091a("NetworkBroadcastReceiver received unknown action", action);
            return;
        }
        boolean m12081b = this.f51425b.m11656e().m12081b();
        if (this.f51427d == m12081b) {
            return;
        }
        this.f51427d = m12081b;
        this.f51425b.mo11658d().m12011a(new RunnableC13954dv(this, m12081b));
    }
}
