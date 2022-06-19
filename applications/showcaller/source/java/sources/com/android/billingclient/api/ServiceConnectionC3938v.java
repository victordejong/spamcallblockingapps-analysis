package com.android.billingclient.api;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import java.util.concurrent.Future;
import p078c.p084c.p085a.p086a.p088b.p093e.AbstractBinderC1872c;
import p078c.p084c.p085a.p086a.p088b.p093e.C1870a;
/* renamed from: com.android.billingclient.api.v */
/* loaded from: classes-dex2jar.jar:com/android/billingclient/api/v.class */
public final class ServiceConnectionC3938v implements ServiceConnection {

    /* renamed from: a */
    private final Object f12370a = new Object();

    /* renamed from: b */
    private boolean f12371b = false;

    /* renamed from: c */
    private AbstractC3900e f12372c;

    /* renamed from: d */
    final /* synthetic */ C3898d f12373d;

    public /* synthetic */ ServiceConnectionC3938v(C3898d c3898d, AbstractC3900e abstractC3900e, CallableC3935t0 callableC3935t0) {
        this.f12373d = c3898d;
        this.f12372c = abstractC3900e;
    }

    /* renamed from: e */
    public final void m23746e(C3905g c3905g) {
        this.f12373d.m23821j(new RunnableC3932s(this, c3905g));
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        Future m23830J;
        C3905g m23820k;
        C1870a.m28780a("BillingClient", "Billing service connected.");
        this.f12373d.f12286g = AbstractBinderC1872c.m28768c0(iBinder);
        m23830J = this.f12373d.m23830J(new CallableC3934t(this), 30000L, new RunnableC3936u(this));
        if (m23830J == null) {
            m23820k = this.f12373d.m23820k();
            m23746e(m23820k);
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        C1870a.m28779b("BillingClient", "Billing service disconnected.");
        this.f12373d.f12286g = null;
        this.f12373d.f12280a = 0;
        synchronized (this.f12370a) {
            AbstractC3900e abstractC3900e = this.f12372c;
            if (abstractC3900e != null) {
                abstractC3900e.mo23803b();
            }
        }
    }
}
