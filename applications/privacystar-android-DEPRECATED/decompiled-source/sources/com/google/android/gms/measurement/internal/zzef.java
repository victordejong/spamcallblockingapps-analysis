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
import android.support.annotation.MainThread;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.WorkerThread;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.BaseGmsClient;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.stats.ConnectionTracker;
import com.google.android.gms.common.util.VisibleForTesting;
@VisibleForTesting
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzef.class */
public final class zzef implements ServiceConnection, BaseGmsClient.BaseConnectionCallbacks, BaseGmsClient.BaseOnConnectionFailedListener {
    final /* synthetic */ zzdr zzasg;
    private volatile boolean zzasm;
    private volatile zzao zzasn;

    /* JADX INFO: Access modifiers changed from: protected */
    public zzef(zzdr zzdrVar) {
        this.zzasg = zzdrVar;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseConnectionCallbacks
    @MainThread
    public final void onConnected(@Nullable Bundle bundle) {
        Preconditions.checkMainThread("MeasurementServiceConnection.onConnected");
        synchronized (this) {
            try {
                zzag service = this.zzasn.getService();
                if (!zzn.zzia()) {
                    this.zzasn = null;
                }
                this.zzasg.zzgn().zzc(new zzei(this, service));
            } catch (DeadObjectException | IllegalStateException e) {
                this.zzasn = null;
                this.zzasm = false;
            }
        }
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseOnConnectionFailedListener
    @MainThread
    public final void onConnectionFailed(@NonNull ConnectionResult connectionResult) {
        Preconditions.checkMainThread("MeasurementServiceConnection.onConnectionFailed");
        zzap zzkf = this.zzasg.zzadj.zzkf();
        if (zzkf != null) {
            zzkf.zzjg().zzg("Service connection failed", connectionResult);
        }
        synchronized (this) {
            this.zzasm = false;
            this.zzasn = null;
        }
        this.zzasg.zzgn().zzc(new zzek(this));
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseConnectionCallbacks
    @MainThread
    public final void onConnectionSuspended(int i) {
        Preconditions.checkMainThread("MeasurementServiceConnection.onConnectionSuspended");
        this.zzasg.zzgo().zzjk().zzbx("Service connection suspended");
        this.zzasg.zzgn().zzc(new zzej(this));
    }

    @Override // android.content.ServiceConnection
    @MainThread
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        zzef zzefVar;
        Preconditions.checkMainThread("MeasurementServiceConnection.onServiceConnected");
        synchronized (this) {
            if (iBinder == null) {
                this.zzasm = false;
                this.zzasg.zzgo().zzjd().zzbx("Service connected with null binder");
                return;
            }
            zzag zzagVar = null;
            zzagVar = null;
            zzagVar = null;
            try {
                String interfaceDescriptor = iBinder.getInterfaceDescriptor();
                if ("com.google.android.gms.measurement.internal.IMeasurementService".equals(interfaceDescriptor)) {
                    if (iBinder != null) {
                        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.measurement.internal.IMeasurementService");
                        zzagVar = queryLocalInterface instanceof zzag ? (zzag) queryLocalInterface : new zzai(iBinder);
                    }
                    this.zzasg.zzgo().zzjl().zzbx("Bound to IMeasurementService interface");
                } else {
                    this.zzasg.zzgo().zzjd().zzg("Got binder with a wrong descriptor", interfaceDescriptor);
                }
            } catch (RemoteException e) {
                this.zzasg.zzgo().zzjd().zzbx("Service connect failed to get IMeasurementService");
            }
            if (zzagVar == null) {
                this.zzasm = false;
                try {
                    ConnectionTracker instance = ConnectionTracker.getInstance();
                    Context context = this.zzasg.getContext();
                    zzefVar = this.zzasg.zzarz;
                    instance.unbindService(context, zzefVar);
                } catch (IllegalArgumentException e2) {
                }
            } else {
                this.zzasg.zzgn().zzc(new zzeg(this, zzagVar));
            }
        }
    }

    @Override // android.content.ServiceConnection
    @MainThread
    public final void onServiceDisconnected(ComponentName componentName) {
        Preconditions.checkMainThread("MeasurementServiceConnection.onServiceDisconnected");
        this.zzasg.zzgo().zzjk().zzbx("Service disconnected");
        this.zzasg.zzgn().zzc(new zzeh(this, componentName));
    }

    @WorkerThread
    public final void zzc(Intent intent) {
        zzef zzefVar;
        this.zzasg.zzaf();
        Context context = this.zzasg.getContext();
        ConnectionTracker instance = ConnectionTracker.getInstance();
        synchronized (this) {
            if (this.zzasm) {
                this.zzasg.zzgo().zzjl().zzbx("Connection attempt already in progress");
                return;
            }
            this.zzasg.zzgo().zzjl().zzbx("Using local app measurement service");
            this.zzasm = true;
            zzefVar = this.zzasg.zzarz;
            instance.bindService(context, intent, zzefVar, 129);
        }
    }

    @WorkerThread
    public final void zzlg() {
        if (this.zzasn != null && (this.zzasn.isConnected() || this.zzasn.isConnecting())) {
            this.zzasn.disconnect();
        }
        this.zzasn = null;
    }

    @WorkerThread
    public final void zzlh() {
        this.zzasg.zzaf();
        Context context = this.zzasg.getContext();
        synchronized (this) {
            if (this.zzasm) {
                this.zzasg.zzgo().zzjl().zzbx("Connection attempt already in progress");
            } else if (this.zzasn == null || (zzn.zzia() && !this.zzasn.isConnecting() && !this.zzasn.isConnected())) {
                this.zzasn = new zzao(context, Looper.getMainLooper(), this, this);
                this.zzasg.zzgo().zzjl().zzbx("Connecting to remote service");
                this.zzasm = true;
                this.zzasn.checkAvailabilityAndConnect();
            } else {
                this.zzasg.zzgo().zzjl().zzbx("Already awaiting connection attempt");
            }
        }
    }
}
