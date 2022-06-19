package com.google.android.gms.measurement.internal;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.RemoteException;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.AbstractC6113d;
import com.google.android.gms.common.internal.C6155o;
import com.google.android.gms.common.stats.C6217a;
/* renamed from: com.google.android.gms.measurement.internal.j8 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/j8.class */
public final class ServiceConnectionC7761j8 implements ServiceConnection, AbstractC6113d.AbstractC6114a, AbstractC6113d.AbstractC6115b {

    /* renamed from: a */
    private volatile boolean f35363a;

    /* renamed from: b */
    private volatile C7768k3 f35364b;

    /* renamed from: c */
    final /* synthetic */ C7773k8 f35365c;

    public ServiceConnectionC7761j8(C7773k8 c7773k8) {
        this.f35365c = c7773k8;
    }

    @Override // com.google.android.gms.common.internal.AbstractC6113d.AbstractC6115b
    /* renamed from: D0 */
    public final void mo6338D0(ConnectionResult connectionResult) {
        C6155o.m17023e("MeasurementServiceConnection.onConnectionFailed");
        C7813o3 m6049A = this.f35365c.f35460a.m6049A();
        if (m6049A != null) {
            m6049A.m6192p().m6215b("Service connection failed", connectionResult);
        }
        synchronized (this) {
            this.f35363a = false;
            this.f35364b = null;
        }
        this.f35365c.f35460a.mo6029b().m6109p(new RunnableC7749i8(this));
    }

    @Override // com.google.android.gms.common.internal.AbstractC6113d.AbstractC6114a
    /* renamed from: J0 */
    public final void mo6337J0(Bundle bundle) {
        C6155o.m17023e("MeasurementServiceConnection.onConnected");
        synchronized (this) {
            try {
                C6155o.m17018j(this.f35364b);
                this.f35365c.f35460a.mo6029b().m6109p(new RunnableC7725g8(this, this.f35364b.m17132C()));
            } catch (DeadObjectException | IllegalStateException e) {
                this.f35364b = null;
                this.f35363a = false;
            }
        }
    }

    /* renamed from: a */
    public final void m6336a(Intent intent) {
        ServiceConnectionC7761j8 serviceConnectionC7761j8;
        this.f35365c.mo6113f();
        Context mo6030a = this.f35365c.f35460a.mo6030a();
        C6217a m16846b = C6217a.m16846b();
        synchronized (this) {
            if (this.f35363a) {
                this.f35365c.f35460a.mo6047C().m6187u().m6216a("Connection attempt already in progress");
                return;
            }
            this.f35365c.f35460a.mo6047C().m6187u().m6216a("Using local app measurement service");
            this.f35363a = true;
            serviceConnectionC7761j8 = this.f35365c.f35401c;
            m16846b.m16847a(mo6030a, intent, serviceConnectionC7761j8, 129);
        }
    }

    /* renamed from: b */
    public final void m6335b() {
        if (this.f35364b != null && (this.f35364b.m17110b() || this.f35364b.m17103f())) {
            this.f35364b.m17112a();
        }
        this.f35364b = null;
    }

    /* renamed from: c */
    public final void m6334c() {
        this.f35365c.mo6113f();
        Context mo6030a = this.f35365c.f35460a.mo6030a();
        synchronized (this) {
            if (this.f35363a) {
                this.f35365c.f35460a.mo6047C().m6187u().m6216a("Connection attempt already in progress");
            } else if (this.f35364b != null && (this.f35364b.m17103f() || this.f35364b.m17110b())) {
                this.f35365c.f35460a.mo6047C().m6187u().m6216a("Already awaiting connection attempt");
            } else {
                this.f35364b = new C7768k3(mo6030a, Looper.getMainLooper(), this, this);
                this.f35365c.f35460a.mo6047C().m6187u().m6216a("Connecting to remote service");
                this.f35363a = true;
                C6155o.m17018j(this.f35364b);
                this.f35364b.m17093q();
            }
        }
    }

    @Override // com.google.android.gms.common.internal.AbstractC6113d.AbstractC6114a
    /* renamed from: c0 */
    public final void mo6333c0(int i) {
        C6155o.m17023e("MeasurementServiceConnection.onConnectionSuspended");
        this.f35365c.f35460a.mo6047C().m6188t().m6216a("Service connection suspended");
        this.f35365c.f35460a.mo6029b().m6109p(new RunnableC7737h8(this));
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        ServiceConnectionC7761j8 serviceConnectionC7761j8;
        C6155o.m17023e("MeasurementServiceConnection.onServiceConnected");
        synchronized (this) {
            if (iBinder == null) {
                this.f35363a = false;
                this.f35365c.f35460a.mo6047C().m6195m().m6216a("Service connected with null binder");
                return;
            }
            AbstractC7708f3 abstractC7708f3 = null;
            try {
                String interfaceDescriptor = iBinder.getInterfaceDescriptor();
                if ("com.google.android.gms.measurement.internal.IMeasurementService".equals(interfaceDescriptor)) {
                    IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.measurement.internal.IMeasurementService");
                    C7684d3 c7684d3 = queryLocalInterface instanceof AbstractC7708f3 ? (AbstractC7708f3) queryLocalInterface : new C7684d3(iBinder);
                    this.f35365c.f35460a.mo6047C().m6187u().m6216a("Bound to IMeasurementService interface");
                    abstractC7708f3 = c7684d3;
                } else {
                    this.f35365c.f35460a.mo6047C().m6195m().m6215b("Got binder with a wrong descriptor", interfaceDescriptor);
                    abstractC7708f3 = null;
                }
            } catch (RemoteException e) {
                this.f35365c.f35460a.mo6047C().m6195m().m6216a("Service connect failed to get IMeasurementService");
            }
            if (abstractC7708f3 == null) {
                this.f35363a = false;
                try {
                    C6217a m16846b = C6217a.m16846b();
                    Context mo6030a = this.f35365c.f35460a.mo6030a();
                    serviceConnectionC7761j8 = this.f35365c.f35401c;
                    m16846b.m16845c(mo6030a, serviceConnectionC7761j8);
                } catch (IllegalArgumentException e2) {
                }
            } else {
                this.f35365c.f35460a.mo6029b().m6109p(new RunnableC7689d8(this, abstractC7708f3));
            }
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        C6155o.m17023e("MeasurementServiceConnection.onServiceDisconnected");
        this.f35365c.f35460a.mo6047C().m6188t().m6216a("Service disconnected");
        this.f35365c.f35460a.mo6029b().m6109p(new RunnableC7713f8(this, componentName));
    }
}
