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
import androidx.annotation.MainThread;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.WorkerThread;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.BaseGmsClient;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.stats.ConnectionTracker;
import com.google.android.gms.common.util.VisibleForTesting;
@VisibleForTesting
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzji.class */
public final class zzji implements ServiceConnection, BaseGmsClient.BaseConnectionCallbacks, BaseGmsClient.BaseOnConnectionFailedListener {

    /* renamed from: a */
    private volatile boolean f9594a;

    /* renamed from: b */
    private volatile zzeo f9595b;

    /* renamed from: c */
    final /* synthetic */ zzio f9596c;

    /* JADX INFO: Access modifiers changed from: protected */
    public zzji(zzio zzioVar) {
        this.f9596c = zzioVar;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseConnectionCallbacks
    @MainThread
    /* renamed from: a */
    public final void mo11170a(int i) {
        Preconditions.m14528f("MeasurementServiceConnection.onConnectionSuspended");
        this.f9596c.mo11081c().m11553K().m11540a("Service connection suspended");
        this.f9596c.mo11083b().m11409x(new zzjm(this));
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseConnectionCallbacks
    @MainThread
    /* renamed from: b */
    public final void mo11169b(@Nullable Bundle bundle) {
        Preconditions.m14528f("MeasurementServiceConnection.onConnected");
        synchronized (this) {
            try {
                this.f9596c.mo11083b().m11409x(new zzjn(this, this.f9595b.getService()));
            } catch (DeadObjectException | IllegalStateException e) {
                this.f9595b = null;
                this.f9594a = false;
            }
        }
    }

    @WorkerThread
    /* renamed from: c */
    public final void m11168c() {
        if (this.f9595b != null && (this.f9595b.isConnected() || this.f9595b.isConnecting())) {
            this.f9595b.disconnect();
        }
        this.f9595b = null;
    }

    @WorkerThread
    /* renamed from: d */
    public final void m11167d(Intent intent) {
        zzji zzjiVar;
        this.f9596c.mo11316e();
        Context f = this.f9596c.mo11075f();
        ConnectionTracker b = ConnectionTracker.m14372b();
        synchronized (this) {
            if (this.f9594a) {
                this.f9596c.mo11081c().m11552L().m11540a("Connection attempt already in progress");
                return;
            }
            this.f9596c.mo11081c().m11552L().m11540a("Using local app measurement service");
            this.f9594a = true;
            zzjiVar = this.f9596c.f9520c;
            b.m14373a(f, intent, zzjiVar, 129);
        }
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseOnConnectionFailedListener
    @MainThread
    /* renamed from: f */
    public final void mo11165f(@NonNull ConnectionResult connectionResult) {
        Preconditions.m14528f("MeasurementServiceConnection.onConnectionFailed");
        zzer B = this.f9596c.f9354a.m11386B();
        if (B != null) {
            B.m11557G().m11539b("Service connection failed", connectionResult);
        }
        synchronized (this) {
            this.f9594a = false;
            this.f9595b = null;
        }
        this.f9596c.mo11083b().m11409x(new zzjp(this));
    }

    @WorkerThread
    /* renamed from: g */
    public final void m11164g() {
        this.f9596c.mo11316e();
        Context f = this.f9596c.mo11075f();
        synchronized (this) {
            if (this.f9594a) {
                this.f9596c.mo11081c().m11552L().m11540a("Connection attempt already in progress");
            } else if (this.f9595b == null || (!this.f9595b.isConnecting() && !this.f9595b.isConnected())) {
                this.f9595b = new zzeo(f, Looper.getMainLooper(), this, this);
                this.f9596c.mo11081c().m11552L().m11540a("Connecting to remote service");
                this.f9594a = true;
                this.f9595b.checkAvailabilityAndConnect();
            } else {
                this.f9596c.mo11081c().m11552L().m11540a("Already awaiting connection attempt");
            }
        }
    }

    @Override // android.content.ServiceConnection
    @MainThread
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        zzji zzjiVar;
        Preconditions.m14528f("MeasurementServiceConnection.onServiceConnected");
        synchronized (this) {
            if (iBinder == null) {
                this.f9594a = false;
                this.f9596c.mo11081c().m11560D().m11540a("Service connected with null binder");
                return;
            }
            zzej zzejVar = null;
            zzejVar = null;
            zzejVar = null;
            try {
                String interfaceDescriptor = iBinder.getInterfaceDescriptor();
                if ("com.google.android.gms.measurement.internal.IMeasurementService".equals(interfaceDescriptor)) {
                    if (iBinder != null) {
                        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.measurement.internal.IMeasurementService");
                        zzejVar = queryLocalInterface instanceof zzej ? (zzej) queryLocalInterface : new zzel(iBinder);
                    }
                    this.f9596c.mo11081c().m11552L().m11540a("Bound to IMeasurementService interface");
                } else {
                    this.f9596c.mo11081c().m11560D().m11539b("Got binder with a wrong descriptor", interfaceDescriptor);
                }
            } catch (RemoteException e) {
                this.f9596c.mo11081c().m11560D().m11540a("Service connect failed to get IMeasurementService");
            }
            if (zzejVar == null) {
                this.f9594a = false;
                try {
                    ConnectionTracker b = ConnectionTracker.m14372b();
                    Context f = this.f9596c.mo11075f();
                    zzjiVar = this.f9596c.f9520c;
                    b.m14371c(f, zzjiVar);
                } catch (IllegalArgumentException e2) {
                }
            } else {
                this.f9596c.mo11083b().m11409x(new zzjl(this, zzejVar));
            }
        }
    }

    @Override // android.content.ServiceConnection
    @MainThread
    public final void onServiceDisconnected(ComponentName componentName) {
        Preconditions.m14528f("MeasurementServiceConnection.onServiceDisconnected");
        this.f9596c.mo11081c().m11553K().m11540a("Service disconnected");
        this.f9596c.mo11083b().m11409x(new zzjk(this, componentName));
    }
}
