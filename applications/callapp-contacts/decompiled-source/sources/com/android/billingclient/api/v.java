package com.android.billingclient.api;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import com.google.android.gms.internal.f.a;
import com.google.android.gms.internal.f.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/android/billingclient/api/v.class */
public final class v implements ServiceConnection {

    /* renamed from: a  reason: collision with root package name */
    final Object f7016a = new Object();

    /* renamed from: b  reason: collision with root package name */
    boolean f7017b = false;

    /* renamed from: c  reason: collision with root package name */
    e f7018c;

    /* renamed from: d  reason: collision with root package name */
    final /* synthetic */ d f7019d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ v(d dVar, e eVar, ap apVar) {
        this.f7019d = dVar;
        this.f7018c = eVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void a(g gVar) {
        d.a(this.f7019d, new s(this, gVar));
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        a.a("BillingClient");
        this.f7019d.f6977d = c.a(iBinder);
        if (this.f7019d.a(new t(this), 30000L, new u(this)) == null) {
            a(this.f7019d.c());
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        a.a("BillingClient", "Billing service disconnected.");
        this.f7019d.f6977d = null;
        this.f7019d.f6974a = 0;
        synchronized (this.f7016a) {
            e eVar = this.f7018c;
            if (eVar != null) {
                eVar.a();
            }
        }
    }
}
