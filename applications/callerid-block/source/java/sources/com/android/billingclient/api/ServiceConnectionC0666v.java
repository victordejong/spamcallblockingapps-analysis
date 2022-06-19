package com.android.billingclient.api;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import e.c.a.a.a.e.a;
import e.c.a.a.a.e.c;
import e.c.a.a.a.e.d;
/* renamed from: com.android.billingclient.api.v */
/* loaded from: classes-dex2jar.jar:com/android/billingclient/api/v.class */
final class ServiceConnectionC0666v implements ServiceConnection {

    /* renamed from: a */
    private final Object f3252a = new Object();

    /* renamed from: b */
    private boolean f3253b = false;

    /* renamed from: c */
    private AbstractC0628e f3254c;

    /* renamed from: d */
    final /* synthetic */ d f3255d;

    /* synthetic */ ServiceConnectionC0666v(d dVar, AbstractC0628e abstractC0628e, CallableC0663t0 callableC0663t0) {
        this.f3255d = dVar;
        this.f3254c = abstractC0628e;
    }

    /* renamed from: e */
    public final void m11455e(C0633g c0633g) {
        d.p(this.f3255d, new RunnableC0660s(this, c0633g));
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        a.a("BillingClient", "Billing service connected.");
        d.s(this.f3255d, c.h0(iBinder));
        if (d.G(this.f3255d, new CallableC0662t(this), 30000L, new RunnableC0664u(this)) == null) {
            m11455e(d.H(this.f3255d));
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        a.b("BillingClient", "Billing service disconnected.");
        d.s(this.f3255d, (d) null);
        d.t(this.f3255d, 0);
        synchronized (this.f3252a) {
            AbstractC0628e abstractC0628e = this.f3254c;
            if (abstractC0628e != null) {
                abstractC0628e.m11512b();
            }
        }
    }
}
