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
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/zzja.class */
public final class zzja implements ServiceConnection, BaseGmsClient.BaseConnectionCallbacks, BaseGmsClient.BaseOnConnectionFailedListener {
    final /* synthetic */ zzjb zza;
    private volatile boolean zzb;
    private volatile zzee zzc;

    public zzja(zzjb zzjbVar) {
        this.zza = zzjbVar;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseConnectionCallbacks
    public final void onConnected(Bundle bundle) {
        Preconditions.checkMainThread("MeasurementServiceConnection.onConnected");
        synchronized (this) {
            try {
                Preconditions.checkNotNull(this.zzc);
                this.zza.zzx.zzau().zzh(new zzix(this, this.zzc.getService()));
            } catch (DeadObjectException | IllegalStateException e) {
                this.zzc = null;
                this.zzb = false;
            }
        }
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseOnConnectionFailedListener
    public final void onConnectionFailed(ConnectionResult connectionResult) {
        Preconditions.checkMainThread("MeasurementServiceConnection.onConnectionFailed");
        zzei zzf = this.zza.zzx.zzf();
        if (zzf != null) {
            zzf.zze().zzb("Service connection failed", connectionResult);
        }
        synchronized (this) {
            this.zzb = false;
            this.zzc = null;
        }
        this.zza.zzx.zzau().zzh(new zziz(this));
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseConnectionCallbacks
    public final void onConnectionSuspended(int i) {
        Preconditions.checkMainThread("MeasurementServiceConnection.onConnectionSuspended");
        this.zza.zzx.zzat().zzj().zza("Service connection suspended");
        this.zza.zzx.zzau().zzh(new zziy(this));
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        zzja zzjaVar;
        Preconditions.checkMainThread("MeasurementServiceConnection.onServiceConnected");
        synchronized (this) {
            if (iBinder == null) {
                this.zzb = false;
                this.zza.zzx.zzat().zzb().zza("Service connected with null binder");
                return;
            }
            zzdz zzdzVar = null;
            try {
                String interfaceDescriptor = iBinder.getInterfaceDescriptor();
                if ("com.google.android.gms.measurement.internal.IMeasurementService".equals(interfaceDescriptor)) {
                    IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.measurement.internal.IMeasurementService");
                    zzdx zzdxVar = queryLocalInterface instanceof zzdz ? (zzdz) queryLocalInterface : new zzdx(iBinder);
                    this.zza.zzx.zzat().zzk().zza("Bound to IMeasurementService interface");
                    zzdzVar = zzdxVar;
                } else {
                    this.zza.zzx.zzat().zzb().zzb("Got binder with a wrong descriptor", interfaceDescriptor);
                    zzdzVar = null;
                }
            } catch (RemoteException e) {
                this.zza.zzx.zzat().zzb().zza("Service connect failed to get IMeasurementService");
            }
            if (zzdzVar == null) {
                this.zzb = false;
                try {
                    ConnectionTracker connectionTracker = ConnectionTracker.getInstance();
                    Context zzaw = this.zza.zzx.zzaw();
                    zzjaVar = this.zza.zza;
                    connectionTracker.unbindService(zzaw, zzjaVar);
                } catch (IllegalArgumentException e2) {
                }
            } else {
                this.zza.zzx.zzau().zzh(new zziv(this, zzdzVar));
            }
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        Preconditions.checkMainThread("MeasurementServiceConnection.onServiceDisconnected");
        this.zza.zzx.zzat().zzj().zza("Service disconnected");
        this.zza.zzx.zzau().zzh(new zziw(this, componentName));
    }

    public final void zza(Intent intent) {
        zzja zzjaVar;
        this.zza.zzg();
        Context zzaw = this.zza.zzx.zzaw();
        ConnectionTracker connectionTracker = ConnectionTracker.getInstance();
        synchronized (this) {
            if (this.zzb) {
                this.zza.zzx.zzat().zzk().zza("Connection attempt already in progress");
                return;
            }
            this.zza.zzx.zzat().zzk().zza("Using local app measurement service");
            this.zzb = true;
            zzjaVar = this.zza.zza;
            connectionTracker.bindService(zzaw, intent, zzjaVar, 129);
        }
    }

    public final void zzb() {
        if (this.zzc != null && (this.zzc.isConnected() || this.zzc.isConnecting())) {
            this.zzc.disconnect();
        }
        this.zzc = null;
    }

    public final void zzc() {
        this.zza.zzg();
        Context zzaw = this.zza.zzx.zzaw();
        synchronized (this) {
            if (this.zzb) {
                this.zza.zzx.zzat().zzk().zza("Connection attempt already in progress");
            } else if (this.zzc != null && (this.zzc.isConnecting() || this.zzc.isConnected())) {
                this.zza.zzx.zzat().zzk().zza("Already awaiting connection attempt");
            } else {
                this.zzc = new zzee(zzaw, Looper.getMainLooper(), this, this);
                this.zza.zzx.zzat().zzk().zza("Connecting to remote service");
                this.zzb = true;
                Preconditions.checkNotNull(this.zzc);
                this.zzc.checkAvailabilityAndConnect();
            }
        }
    }
}
