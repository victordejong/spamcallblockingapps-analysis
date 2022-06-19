package com.google.android.gms.measurement.internal;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.DeadObjectException;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.RemoteException;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.AbstractC12025d;
import com.google.android.gms.common.internal.C12045o;
import com.google.android.gms.common.stats.C12088a;
/* renamed from: com.google.android.gms.measurement.internal.ij */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/ij.class */
public final class ServiceConnectionC14078ij implements ServiceConnection, AbstractC12025d.AbstractC12026a, AbstractC12025d.AbstractC12027b {

    /* renamed from: a */
    volatile C13943dk f51886a;

    /* renamed from: b */
    final /* synthetic */ C14079ik f51887b;

    /* renamed from: c */
    private volatile boolean f51888c;

    public ServiceConnectionC14078ij(C14079ik c14079ik) {
        this.f51887b = c14079ik;
    }

    @Override // com.google.android.gms.common.internal.AbstractC12025d.AbstractC12026a
    /* renamed from: a */
    public final void mo11764a() {
        C12045o.m19155b("MeasurementServiceConnection.onConnected");
        synchronized (this) {
            try {
                C12045o.m19162a(this.f51886a);
                this.f51887b.f51637t.mo11658d().m12011a(new RunnableC14075ig(this, this.f51886a.getService()));
            } catch (DeadObjectException | IllegalStateException e) {
                this.f51886a = null;
                this.f51888c = false;
            }
        }
    }

    @Override // com.google.android.gms.common.internal.AbstractC12025d.AbstractC12026a
    /* renamed from: a */
    public final void mo11763a(int i) {
        C12045o.m19155b("MeasurementServiceConnection.onConnectionSuspended");
        this.f51887b.f51637t.mo11661c().f51402j.m12092a("Service connection suspended");
        this.f51887b.f51637t.mo11658d().m12011a(new RunnableC14076ih(this));
    }

    /* renamed from: a */
    public final void m11762a(Intent intent) {
        this.f51887b.mo11884S_();
        Context context = this.f51887b.f51637t.f51523a;
        C12088a m19072a = C12088a.m19072a();
        synchronized (this) {
            if (this.f51888c) {
                this.f51887b.f51637t.mo11661c().f51403k.m12092a("Connection attempt already in progress");
                return;
            }
            this.f51887b.f51637t.mo11661c().f51403k.m12092a("Using local app measurement service");
            this.f51888c = true;
            m19072a.m19071a(context, intent, this.f51887b.f51889a, 129);
        }
    }

    @Override // com.google.android.gms.common.internal.AbstractC12025d.AbstractC12027b
    /* renamed from: a */
    public final void mo11761a(ConnectionResult connectionResult) {
        C12045o.m19155b("MeasurementServiceConnection.onConnectionFailed");
        C13979es c13979es = this.f51887b.f51637t;
        C13947do c13947do = c13979es.f51530h;
        C13947do c13947do2 = (c13947do == null || !c13947do.m11882f()) ? null : c13979es.f51530h;
        if (c13947do2 != null) {
            c13947do2.f51398f.m12091a("Service connection failed", connectionResult);
        }
        synchronized (this) {
            this.f51888c = false;
            this.f51886a = null;
        }
        this.f51887b.f51637t.mo11658d().m12011a(new RunnableC14077ii(this));
    }

    /* renamed from: b */
    public final void m11759b() {
        this.f51887b.mo11884S_();
        Context context = this.f51887b.f51637t.f51523a;
        synchronized (this) {
            if (this.f51888c) {
                this.f51887b.f51637t.mo11661c().f51403k.m12092a("Connection attempt already in progress");
            } else if (this.f51886a != null && (this.f51886a.isConnecting() || this.f51886a.isConnected())) {
                this.f51887b.f51637t.mo11661c().f51403k.m12092a("Already awaiting connection attempt");
            } else {
                this.f51886a = new C13943dk(context, Looper.getMainLooper(), this, this);
                this.f51887b.f51637t.mo11661c().f51403k.m12092a("Connecting to remote service");
                this.f51888c = true;
                C12045o.m19162a(this.f51886a);
                this.f51886a.checkAvailabilityAndConnect();
            }
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        C12045o.m19155b("MeasurementServiceConnection.onServiceConnected");
        synchronized (this) {
            if (iBinder == null) {
                this.f51888c = false;
                this.f51887b.f51637t.mo11661c().f51395c.m12092a("Service connected with null binder");
                return;
            }
            AbstractC13938df abstractC13938df = null;
            try {
                String interfaceDescriptor = iBinder.getInterfaceDescriptor();
                if ("com.google.android.gms.measurement.internal.IMeasurementService".equals(interfaceDescriptor)) {
                    IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.measurement.internal.IMeasurementService");
                    C13936dd c13936dd = queryLocalInterface instanceof AbstractC13938df ? (AbstractC13938df) queryLocalInterface : new C13936dd(iBinder);
                    this.f51887b.f51637t.mo11661c().f51403k.m12092a("Bound to IMeasurementService interface");
                    abstractC13938df = c13936dd;
                } else {
                    this.f51887b.f51637t.mo11661c().f51395c.m12091a("Got binder with a wrong descriptor", interfaceDescriptor);
                    abstractC13938df = null;
                }
            } catch (RemoteException e) {
                this.f51887b.f51637t.mo11661c().f51395c.m12092a("Service connect failed to get IMeasurementService");
            }
            if (abstractC13938df == null) {
                this.f51888c = false;
                try {
                    C12088a.m19072a().m19070a(this.f51887b.f51637t.f51523a, this.f51887b.f51889a);
                } catch (IllegalArgumentException e2) {
                }
            } else {
                this.f51887b.f51637t.mo11658d().m12011a(new RunnableC14072id(this, abstractC13938df));
            }
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        C12045o.m19155b("MeasurementServiceConnection.onServiceDisconnected");
        this.f51887b.f51637t.mo11661c().f51402j.m12092a("Service disconnected");
        this.f51887b.f51637t.mo11658d().m12011a(new RunnableC14074if(this, componentName));
    }
}
