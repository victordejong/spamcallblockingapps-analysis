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
import com.google.android.gms.common.internal.BaseGmsClient;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.stats.ConnectionTracker;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzjb.class */
public final class zzjb implements ServiceConnection, BaseGmsClient.BaseConnectionCallbacks, BaseGmsClient.BaseOnConnectionFailedListener {
    final /* synthetic */ zzij zza;
    private volatile boolean zzb;
    private volatile zzet zzc;

    public zzjb(zzij zzijVar) {
        this.zza = zzijVar;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseConnectionCallbacks
    public final void onConnected(Bundle bundle) {
        Preconditions.checkMainThread("MeasurementServiceConnection.onConnected");
        synchronized (this) {
            try {
                this.zza.zzq().zza(new zzjg(this, this.zzc.getService()));
            } catch (DeadObjectException | IllegalStateException e) {
                this.zzc = null;
                this.zzb = false;
            }
        }
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseOnConnectionFailedListener
    public final void onConnectionFailed(ConnectionResult connectionResult) {
        Preconditions.checkMainThread("MeasurementServiceConnection.onConnectionFailed");
        zzew zzd = this.zza.zzx.zzd();
        if (zzd != null) {
            zzd.zzi().zza("Service connection failed", connectionResult);
        }
        synchronized (this) {
            this.zzb = false;
            this.zzc = null;
        }
        this.zza.zzq().zza(new zzji(this));
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseConnectionCallbacks
    public final void onConnectionSuspended(int i) {
        Preconditions.checkMainThread("MeasurementServiceConnection.onConnectionSuspended");
        this.zza.zzr().zzw().zza("Service connection suspended");
        this.zza.zzq().zza(new zzjf(this));
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        zzeq zzeqVar;
        zzjb zzjbVar;
        Preconditions.checkMainThread("MeasurementServiceConnection.onServiceConnected");
        synchronized (this) {
            if (iBinder == null) {
                this.zzb = false;
                this.zza.zzr().zzf().zza("Service connected with null binder");
                return;
            }
            try {
                String interfaceDescriptor = iBinder.getInterfaceDescriptor();
                if ("com.google.android.gms.measurement.internal.IMeasurementService".equals(interfaceDescriptor)) {
                    if (iBinder == null) {
                        zzeqVar = null;
                    } else {
                        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.measurement.internal.IMeasurementService");
                        zzeqVar = queryLocalInterface instanceof zzeo ? (zzeo) queryLocalInterface : new zzeq(iBinder);
                    }
                    zzeo zzeoVar = zzeqVar;
                    this.zza.zzr().zzx().zza("Bound to IMeasurementService interface");
                } else {
                    this.zza.zzr().zzf().zza("Got binder with a wrong descriptor", interfaceDescriptor);
                    zzeqVar = null;
                }
            } catch (RemoteException e) {
                this.zza.zzr().zzf().zza("Service connect failed to get IMeasurementService");
                zzeqVar = null;
            }
            if (zzeqVar == null) {
                this.zzb = false;
                try {
                    ConnectionTracker connectionTracker = ConnectionTracker.getInstance();
                    Context zzn = this.zza.zzn();
                    zzjbVar = this.zza.zza;
                    connectionTracker.unbindService(zzn, zzjbVar);
                } catch (IllegalArgumentException e2) {
                }
            } else {
                this.zza.zzq().zza(new zzje(this, zzeqVar));
            }
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        Preconditions.checkMainThread("MeasurementServiceConnection.onServiceDisconnected");
        this.zza.zzr().zzw().zza("Service disconnected");
        this.zza.zzq().zza(new zzjd(this, componentName));
    }

    public final void zza() {
        if (this.zzc != null && (this.zzc.isConnected() || this.zzc.isConnecting())) {
            this.zzc.disconnect();
        }
        this.zzc = null;
    }

    public final void zza(Intent intent) {
        zzjb zzjbVar;
        this.zza.zzd();
        Context zzn = this.zza.zzn();
        ConnectionTracker connectionTracker = ConnectionTracker.getInstance();
        synchronized (this) {
            if (this.zzb) {
                this.zza.zzr().zzx().zza("Connection attempt already in progress");
                return;
            }
            this.zza.zzr().zzx().zza("Using local app measurement service");
            this.zzb = true;
            zzjbVar = this.zza.zza;
            connectionTracker.bindService(zzn, intent, zzjbVar, 129);
        }
    }

    public final void zzb() {
        this.zza.zzd();
        Context zzn = this.zza.zzn();
        synchronized (this) {
            if (this.zzb) {
                this.zza.zzr().zzx().zza("Connection attempt already in progress");
            } else if (this.zzc != null && (this.zzc.isConnecting() || this.zzc.isConnected())) {
                this.zza.zzr().zzx().zza("Already awaiting connection attempt");
            } else {
                this.zzc = new zzet(zzn, Looper.getMainLooper(), this, this);
                this.zza.zzr().zzx().zza("Connecting to remote service");
                this.zzb = true;
                this.zzc.checkAvailabilityAndConnect();
            }
        }
    }
}
