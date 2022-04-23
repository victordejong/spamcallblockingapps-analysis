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
import com.google.android.gms.common.internal.d;
import com.google.android.gms.common.internal.o;
import com.google.android.gms.common.stats.a;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/ij.class */
public final class ij implements ServiceConnection, d.a, d.b {

    /* renamed from: a  reason: collision with root package name */
    volatile dk f29838a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ ik f29839b;

    /* renamed from: c  reason: collision with root package name */
    private volatile boolean f29840c;

    /* JADX INFO: Access modifiers changed from: protected */
    public ij(ik ikVar) {
        this.f29839b = ikVar;
    }

    @Override // com.google.android.gms.common.internal.d.a
    public final void a() {
        o.b("MeasurementServiceConnection.onConnected");
        synchronized (this) {
            try {
                o.a(this.f29838a);
                this.f29839b.t.d().a(new ig(this, this.f29838a.getService()));
            } catch (DeadObjectException | IllegalStateException e) {
                this.f29838a = null;
                this.f29840c = false;
            }
        }
    }

    @Override // com.google.android.gms.common.internal.d.a
    public final void a(int i) {
        o.b("MeasurementServiceConnection.onConnectionSuspended");
        this.f29839b.t.c().j.a("Service connection suspended");
        this.f29839b.t.d().a(new ih(this));
    }

    public final void a(Intent intent) {
        this.f29839b.S_();
        Context context = this.f29839b.t.f29583a;
        a a2 = a.a();
        synchronized (this) {
            if (this.f29840c) {
                this.f29839b.t.c().k.a("Connection attempt already in progress");
                return;
            }
            this.f29839b.t.c().k.a("Using local app measurement service");
            this.f29840c = true;
            a2.a(context, intent, this.f29839b.f29841a, 129);
        }
    }

    @Override // com.google.android.gms.common.internal.d.b
    public final void a(ConnectionResult connectionResult) {
        o.b("MeasurementServiceConnection.onConnectionFailed");
        es esVar = this.f29839b.t;
        Cdo doVar = esVar.h;
        Cdo doVar2 = (doVar == null || !doVar.f()) ? null : esVar.h;
        if (doVar2 != null) {
            doVar2.f.a("Service connection failed", connectionResult);
        }
        synchronized (this) {
            this.f29840c = false;
            this.f29838a = null;
        }
        this.f29839b.t.d().a(new ii(this));
    }

    public final void b() {
        this.f29839b.S_();
        Context context = this.f29839b.t.f29583a;
        synchronized (this) {
            if (this.f29840c) {
                this.f29839b.t.c().k.a("Connection attempt already in progress");
            } else if (this.f29838a == null || (!this.f29838a.isConnecting() && !this.f29838a.isConnected())) {
                this.f29838a = new dk(context, Looper.getMainLooper(), this, this);
                this.f29839b.t.c().k.a("Connecting to remote service");
                this.f29840c = true;
                o.a(this.f29838a);
                this.f29838a.checkAvailabilityAndConnect();
            } else {
                this.f29839b.t.c().k.a("Already awaiting connection attempt");
            }
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        o.b("MeasurementServiceConnection.onServiceConnected");
        synchronized (this) {
            if (iBinder == null) {
                this.f29840c = false;
                this.f29839b.t.c().f29506c.a("Service connected with null binder");
                return;
            }
            r5 = null;
            df dfVar = null;
            try {
                String interfaceDescriptor = iBinder.getInterfaceDescriptor();
                if ("com.google.android.gms.measurement.internal.IMeasurementService".equals(interfaceDescriptor)) {
                    IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.measurement.internal.IMeasurementService");
                    dfVar = queryLocalInterface instanceof df ? (df) queryLocalInterface : new dd(iBinder);
                    this.f29839b.t.c().k.a("Bound to IMeasurementService interface");
                } else {
                    this.f29839b.t.c().f29506c.a("Got binder with a wrong descriptor", interfaceDescriptor);
                }
            } catch (RemoteException e) {
                this.f29839b.t.c().f29506c.a("Service connect failed to get IMeasurementService");
            }
            if (dfVar == null) {
                this.f29840c = false;
                try {
                    a.a().a(this.f29839b.t.f29583a, this.f29839b.f29841a);
                } catch (IllegalArgumentException e2) {
                }
            } else {
                this.f29839b.t.d().a(new id(this, dfVar));
            }
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        o.b("MeasurementServiceConnection.onServiceDisconnected");
        this.f29839b.t.c().j.a("Service disconnected");
        this.f29839b.t.d().a(new Cif(this, componentName));
    }
}
