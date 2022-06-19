package com.android.billingclient.api;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import com.google.android.gms.internal.p360f.AbstractBinderC13306c;
import com.google.android.gms.internal.p360f.C13304a;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.android.billingclient.api.v */
/* loaded from: classes-dex2jar.jar:com/android/billingclient/api/v.class */
public final class ServiceConnectionC3359v implements ServiceConnection {

    /* renamed from: a */
    final Object f12639a = new Object();

    /* renamed from: b */
    boolean f12640b = false;

    /* renamed from: c */
    AbstractC3338e f12641c;

    /* renamed from: d */
    final /* synthetic */ C3337d f12642d;

    public /* synthetic */ ServiceConnectionC3359v(C3337d c3337d, AbstractC3338e abstractC3338e, CallableC3331ap callableC3331ap) {
        this.f12642d = c3337d;
        this.f12641c = abstractC3338e;
    }

    /* renamed from: a */
    public final void m38176a(C3341g c3341g) {
        C3337d.m38202a(this.f12642d, new RunnableC3356s(this, c3341g));
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        C13304a.m13374a("BillingClient");
        this.f12642d.f12576d = AbstractBinderC13306c.m13368a(iBinder);
        if (this.f12642d.m38195a(new CallableC3357t(this), 30000L, new RunnableC3358u(this)) == null) {
            m38176a(this.f12642d.m38193c());
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        C13304a.m13373a("BillingClient", "Billing service disconnected.");
        this.f12642d.f12576d = null;
        this.f12642d.f12573a = 0;
        synchronized (this.f12639a) {
            AbstractC3338e abstractC3338e = this.f12641c;
            if (abstractC3338e != null) {
                abstractC3338e.mo28286a();
            }
        }
    }
}
