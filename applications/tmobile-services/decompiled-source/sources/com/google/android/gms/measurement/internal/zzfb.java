package com.google.android.gms.measurement.internal;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import androidx.annotation.MainThread;
import androidx.annotation.WorkerThread;
import com.google.android.gms.common.internal.Preconditions;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzfb.class */
public class zzfb extends BroadcastReceiver {

    /* renamed from: a */
    private final zzki f9177a;

    /* renamed from: b */
    private boolean f9178b;

    /* renamed from: c */
    private boolean f9179c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzfb(zzki zzkiVar) {
        Preconditions.m14523k(zzkiVar);
        this.f9177a = zzkiVar;
    }

    @WorkerThread
    /* renamed from: b */
    public final void m11464b() {
        this.f9177a.m11070h0();
        this.f9177a.mo11083b().mo11316e();
        if (!this.f9178b) {
            this.f9177a.mo11075f().registerReceiver(this, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
            this.f9179c = this.f9177a.m11087Y().m11533w();
            this.f9177a.mo11081c().m11552L().m11539b("Registering connectivity change receiver. Network connected", Boolean.valueOf(this.f9179c));
            this.f9178b = true;
        }
    }

    @WorkerThread
    /* renamed from: c */
    public final void m11463c() {
        this.f9177a.m11070h0();
        this.f9177a.mo11083b().mo11316e();
        this.f9177a.mo11083b().mo11316e();
        if (this.f9178b) {
            this.f9177a.mo11081c().m11552L().m11540a("Unregistering connectivity change receiver");
            this.f9178b = false;
            this.f9179c = false;
            try {
                this.f9177a.mo11075f().unregisterReceiver(this);
            } catch (IllegalArgumentException e) {
                this.f9177a.mo11081c().m11560D().m11539b("Failed to unregister the network broadcast receiver", e);
            }
        }
    }

    @Override // android.content.BroadcastReceiver
    @MainThread
    public void onReceive(Context context, Intent intent) {
        this.f9177a.m11070h0();
        String action = intent.getAction();
        this.f9177a.mo11081c().m11552L().m11539b("NetworkBroadcastReceiver received action", action);
        if ("android.net.conn.CONNECTIVITY_CHANGE".equals(action)) {
            boolean w = this.f9177a.m11087Y().m11533w();
            if (this.f9179c != w) {
                this.f9179c = w;
                this.f9177a.mo11083b().m11409x(new zzfa(this, w));
                return;
            }
            return;
        }
        this.f9177a.mo11081c().m11557G().m11539b("NetworkBroadcastReceiver received unknown action", action);
    }
}
