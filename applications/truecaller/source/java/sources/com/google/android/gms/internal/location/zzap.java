package com.google.android.gms.internal.location;

import android.app.PendingIntent;
import android.location.Location;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import com.google.android.gms.common.api.internal.IStatusCallback;
import com.google.android.gms.location.ActivityTransitionRequest;
import com.google.android.gms.location.GeofencingRequest;
import com.google.android.gms.location.LocationAvailability;
import com.google.android.gms.location.LocationSettingsRequest;
import com.google.android.gms.location.zzal;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/location/zzap.class */
public final class zzap extends zza implements zzao {
    public zzap(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.location.internal.IGoogleLocationManagerService");
    }

    @Override // com.google.android.gms.internal.location.zzao
    public final Location zza(String str) throws RemoteException {
        Parcel obtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        obtainAndWriteInterfaceToken.writeString(str);
        Parcel transactAndReadException = transactAndReadException(21, obtainAndWriteInterfaceToken);
        Location location = (Location) zzc.zza(transactAndReadException, Location.CREATOR);
        transactAndReadException.recycle();
        return location;
    }

    @Override // com.google.android.gms.internal.location.zzao
    public final void zza(long j, boolean z, PendingIntent pendingIntent) throws RemoteException {
        Parcel obtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        obtainAndWriteInterfaceToken.writeLong(j);
        zzc.zza(obtainAndWriteInterfaceToken, true);
        zzc.zza(obtainAndWriteInterfaceToken, pendingIntent);
        transactAndReadExceptionReturnVoid(5, obtainAndWriteInterfaceToken);
    }

    @Override // com.google.android.gms.internal.location.zzao
    public final void zza(PendingIntent pendingIntent, IStatusCallback iStatusCallback) throws RemoteException {
        Parcel obtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        zzc.zza(obtainAndWriteInterfaceToken, pendingIntent);
        zzc.zza(obtainAndWriteInterfaceToken, iStatusCallback);
        transactAndReadExceptionReturnVoid(73, obtainAndWriteInterfaceToken);
    }

    @Override // com.google.android.gms.internal.location.zzao
    public final void zza(Location location) throws RemoteException {
        Parcel obtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        zzc.zza(obtainAndWriteInterfaceToken, location);
        transactAndReadExceptionReturnVoid(13, obtainAndWriteInterfaceToken);
    }

    @Override // com.google.android.gms.internal.location.zzao
    public final void zza(zzaj zzajVar) throws RemoteException {
        Parcel obtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        zzc.zza(obtainAndWriteInterfaceToken, zzajVar);
        transactAndReadExceptionReturnVoid(67, obtainAndWriteInterfaceToken);
    }

    @Override // com.google.android.gms.internal.location.zzao
    public final void zza(zzbf zzbfVar) throws RemoteException {
        Parcel obtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        zzc.zza(obtainAndWriteInterfaceToken, zzbfVar);
        transactAndReadExceptionReturnVoid(59, obtainAndWriteInterfaceToken);
    }

    @Override // com.google.android.gms.internal.location.zzao
    public final void zza(zzo zzoVar) throws RemoteException {
        Parcel obtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        zzc.zza(obtainAndWriteInterfaceToken, zzoVar);
        transactAndReadExceptionReturnVoid(75, obtainAndWriteInterfaceToken);
    }

    @Override // com.google.android.gms.internal.location.zzao
    public final void zza(ActivityTransitionRequest activityTransitionRequest, PendingIntent pendingIntent, IStatusCallback iStatusCallback) throws RemoteException {
        Parcel obtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        zzc.zza(obtainAndWriteInterfaceToken, (Parcelable) activityTransitionRequest);
        zzc.zza(obtainAndWriteInterfaceToken, pendingIntent);
        zzc.zza(obtainAndWriteInterfaceToken, iStatusCallback);
        transactAndReadExceptionReturnVoid(72, obtainAndWriteInterfaceToken);
    }

    @Override // com.google.android.gms.internal.location.zzao
    public final void zza(GeofencingRequest geofencingRequest, PendingIntent pendingIntent, zzam zzamVar) throws RemoteException {
        Parcel obtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        zzc.zza(obtainAndWriteInterfaceToken, (Parcelable) geofencingRequest);
        zzc.zza(obtainAndWriteInterfaceToken, pendingIntent);
        zzc.zza(obtainAndWriteInterfaceToken, zzamVar);
        transactAndReadExceptionReturnVoid(57, obtainAndWriteInterfaceToken);
    }

    @Override // com.google.android.gms.internal.location.zzao
    public final void zza(LocationSettingsRequest locationSettingsRequest, zzaq zzaqVar, String str) throws RemoteException {
        Parcel obtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        zzc.zza(obtainAndWriteInterfaceToken, (Parcelable) locationSettingsRequest);
        zzc.zza(obtainAndWriteInterfaceToken, zzaqVar);
        obtainAndWriteInterfaceToken.writeString(str);
        transactAndReadExceptionReturnVoid(63, obtainAndWriteInterfaceToken);
    }

    @Override // com.google.android.gms.internal.location.zzao
    public final void zza(zzal zzalVar, zzam zzamVar) throws RemoteException {
        Parcel obtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        zzc.zza(obtainAndWriteInterfaceToken, (Parcelable) zzalVar);
        zzc.zza(obtainAndWriteInterfaceToken, zzamVar);
        transactAndReadExceptionReturnVoid(74, obtainAndWriteInterfaceToken);
    }

    @Override // com.google.android.gms.internal.location.zzao
    public final void zza(boolean z) throws RemoteException {
        Parcel obtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        zzc.zza(obtainAndWriteInterfaceToken, z);
        transactAndReadExceptionReturnVoid(12, obtainAndWriteInterfaceToken);
    }

    @Override // com.google.android.gms.internal.location.zzao
    public final LocationAvailability zzb(String str) throws RemoteException {
        Parcel obtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        obtainAndWriteInterfaceToken.writeString(str);
        Parcel transactAndReadException = transactAndReadException(34, obtainAndWriteInterfaceToken);
        LocationAvailability zza = zzc.zza(transactAndReadException, LocationAvailability.CREATOR);
        transactAndReadException.recycle();
        return zza;
    }

    @Override // com.google.android.gms.internal.location.zzao
    public final void zzb(PendingIntent pendingIntent) throws RemoteException {
        Parcel obtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        zzc.zza(obtainAndWriteInterfaceToken, pendingIntent);
        transactAndReadExceptionReturnVoid(6, obtainAndWriteInterfaceToken);
    }
}
