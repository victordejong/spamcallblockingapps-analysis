package com.google.android.gms.internal.location;

import android.app.PendingIntent;
import android.content.Context;
import android.location.Location;
import android.os.Looper;
import android.os.RemoteException;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.BaseImplementation;
import com.google.android.gms.common.api.internal.ListenerHolder;
import com.google.android.gms.common.api.internal.StatusCallback;
import com.google.android.gms.common.internal.ClientSettings;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.location.ActivityTransitionRequest;
import com.google.android.gms.location.GeofencingRequest;
import com.google.android.gms.location.LocationAvailability;
import com.google.android.gms.location.LocationCallback;
import com.google.android.gms.location.LocationListener;
import com.google.android.gms.location.LocationRequest;
import com.google.android.gms.location.LocationSettingsRequest;
import com.google.android.gms.location.LocationSettingsResult;
import com.google.android.gms.location.zzal;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/location/zzaz.class */
public final class zzaz extends zzk {
    private final zzas zzde;

    public zzaz(Context context, Looper looper, GoogleApiClient.ConnectionCallbacks connectionCallbacks, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener, String str) {
        this(context, looper, connectionCallbacks, onConnectionFailedListener, str, new GoogleApiClient.Builder(context).m39049c());
    }

    public zzaz(Context context, Looper looper, GoogleApiClient.ConnectionCallbacks connectionCallbacks, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener, String str, ClientSettings clientSettings) {
        super(context, looper, connectionCallbacks, onConnectionFailedListener, str, clientSettings);
        this.zzde = new zzas(context, this.zzcb);
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient, com.google.android.gms.common.api.Api.Client
    public final void disconnect() {
        synchronized (this.zzde) {
            if (isConnected()) {
                try {
                    this.zzde.removeAllListeners();
                    this.zzde.zzb();
                } catch (Exception e) {
                }
            }
            super.disconnect();
        }
    }

    public final Location getLastLocation() throws RemoteException {
        return this.zzde.getLastLocation();
    }

    public final LocationAvailability zza() throws RemoteException {
        return this.zzde.zza();
    }

    public final void zza(long j, PendingIntent pendingIntent) throws RemoteException {
        checkConnected();
        Objects.requireNonNull(pendingIntent, "null reference");
        Preconditions.m38906b(j >= 0, "detectionIntervalMillis must be >= 0");
        ((zzao) getService()).zza(j, true, pendingIntent);
    }

    public final void zza(PendingIntent pendingIntent, BaseImplementation.ResultHolder<Status> resultHolder) throws RemoteException {
        checkConnected();
        Preconditions.m38897k(resultHolder, "ResultHolder not provided.");
        ((zzao) getService()).zza(pendingIntent, new StatusCallback(resultHolder));
    }

    public final void zza(PendingIntent pendingIntent, zzaj zzajVar) throws RemoteException {
        this.zzde.zza(pendingIntent, zzajVar);
    }

    public final void zza(Location location) throws RemoteException {
        this.zzde.zza(location);
    }

    public final void zza(ListenerHolder.ListenerKey<LocationListener> listenerKey, zzaj zzajVar) throws RemoteException {
        this.zzde.zza(listenerKey, zzajVar);
    }

    public final void zza(zzaj zzajVar) throws RemoteException {
        this.zzde.zza(zzajVar);
    }

    public final void zza(zzbd zzbdVar, ListenerHolder<LocationCallback> listenerHolder, zzaj zzajVar) throws RemoteException {
        synchronized (this.zzde) {
            this.zzde.zza(zzbdVar, listenerHolder, zzajVar);
        }
    }

    public final void zza(ActivityTransitionRequest activityTransitionRequest, PendingIntent pendingIntent, BaseImplementation.ResultHolder<Status> resultHolder) throws RemoteException {
        checkConnected();
        Preconditions.m38897k(resultHolder, "ResultHolder not provided.");
        ((zzao) getService()).zza(activityTransitionRequest, pendingIntent, new StatusCallback(resultHolder));
    }

    public final void zza(GeofencingRequest geofencingRequest, PendingIntent pendingIntent, BaseImplementation.ResultHolder<Status> resultHolder) throws RemoteException {
        checkConnected();
        Preconditions.m38897k(geofencingRequest, "geofencingRequest can't be null.");
        Preconditions.m38897k(pendingIntent, "PendingIntent must be specified.");
        Preconditions.m38897k(resultHolder, "ResultHolder not provided.");
        ((zzao) getService()).zza(geofencingRequest, pendingIntent, new zzba(resultHolder));
    }

    public final void zza(LocationRequest locationRequest, PendingIntent pendingIntent, zzaj zzajVar) throws RemoteException {
        this.zzde.zza(locationRequest, pendingIntent, zzajVar);
    }

    public final void zza(LocationRequest locationRequest, ListenerHolder<LocationListener> listenerHolder, zzaj zzajVar) throws RemoteException {
        synchronized (this.zzde) {
            this.zzde.zza(locationRequest, listenerHolder, zzajVar);
        }
    }

    public final void zza(LocationSettingsRequest locationSettingsRequest, BaseImplementation.ResultHolder<LocationSettingsResult> resultHolder, String str) throws RemoteException {
        checkConnected();
        Preconditions.m38906b(locationSettingsRequest != null, "locationSettingsRequest can't be null nor empty.");
        Preconditions.m38906b(resultHolder != null, "listener can't be null.");
        ((zzao) getService()).zza(locationSettingsRequest, new zzbc(resultHolder), str);
    }

    public final void zza(zzal zzalVar, BaseImplementation.ResultHolder<Status> resultHolder) throws RemoteException {
        checkConnected();
        Preconditions.m38897k(zzalVar, "removeGeofencingRequest can't be null.");
        Preconditions.m38897k(resultHolder, "ResultHolder not provided.");
        ((zzao) getService()).zza(zzalVar, new zzbb(resultHolder));
    }

    public final void zza(boolean z) throws RemoteException {
        this.zzde.zza(z);
    }

    public final void zzb(PendingIntent pendingIntent) throws RemoteException {
        checkConnected();
        Objects.requireNonNull(pendingIntent, "null reference");
        ((zzao) getService()).zzb(pendingIntent);
    }

    public final void zzb(ListenerHolder.ListenerKey<LocationCallback> listenerKey, zzaj zzajVar) throws RemoteException {
        this.zzde.zzb(listenerKey, zzajVar);
    }
}
