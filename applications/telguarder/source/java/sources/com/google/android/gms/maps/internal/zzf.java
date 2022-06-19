package com.google.android.gms.maps.internal;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.internal.maps.zza;
import com.google.android.gms.internal.maps.zzc;
import com.google.android.gms.internal.maps.zze;
import com.google.android.gms.maps.GoogleMapOptions;
import com.google.android.gms.maps.StreetViewPanoramaOptions;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/maps/internal/zzf.class */
public final class zzf extends zza implements zze {
    public zzf(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.maps.internal.ICreator");
    }

    @Override // com.google.android.gms.maps.internal.zze
    public final IMapViewDelegate zza(IObjectWrapper iObjectWrapper, GoogleMapOptions googleMapOptions) throws RemoteException {
        zzk zzkVar;
        Parcel zza = zza();
        zzc.zza(zza, iObjectWrapper);
        zzc.zza(zza, googleMapOptions);
        Parcel zza2 = zza(3, zza);
        IBinder readStrongBinder = zza2.readStrongBinder();
        if (readStrongBinder == null) {
            zzkVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.maps.internal.IMapViewDelegate");
            zzkVar = queryLocalInterface instanceof IMapViewDelegate ? (IMapViewDelegate) queryLocalInterface : new zzk(readStrongBinder);
        }
        zza2.recycle();
        return zzkVar;
    }

    @Override // com.google.android.gms.maps.internal.zze
    public final IStreetViewPanoramaViewDelegate zza(IObjectWrapper iObjectWrapper, StreetViewPanoramaOptions streetViewPanoramaOptions) throws RemoteException {
        zzbw zzbwVar;
        Parcel zza = zza();
        zzc.zza(zza, iObjectWrapper);
        zzc.zza(zza, streetViewPanoramaOptions);
        Parcel zza2 = zza(7, zza);
        IBinder readStrongBinder = zza2.readStrongBinder();
        if (readStrongBinder == null) {
            zzbwVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.maps.internal.IStreetViewPanoramaViewDelegate");
            zzbwVar = queryLocalInterface instanceof IStreetViewPanoramaViewDelegate ? (IStreetViewPanoramaViewDelegate) queryLocalInterface : new zzbw(readStrongBinder);
        }
        zza2.recycle();
        return zzbwVar;
    }

    @Override // com.google.android.gms.maps.internal.zze
    public final void zza(IObjectWrapper iObjectWrapper, int i) throws RemoteException {
        Parcel zza = zza();
        zzc.zza(zza, iObjectWrapper);
        zza.writeInt(i);
        zzb(6, zza);
    }

    @Override // com.google.android.gms.maps.internal.zze
    public final IMapFragmentDelegate zzc(IObjectWrapper iObjectWrapper) throws RemoteException {
        zzj zzjVar;
        Parcel zza = zza();
        zzc.zza(zza, iObjectWrapper);
        Parcel zza2 = zza(2, zza);
        IBinder readStrongBinder = zza2.readStrongBinder();
        if (readStrongBinder == null) {
            zzjVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.maps.internal.IMapFragmentDelegate");
            zzjVar = queryLocalInterface instanceof IMapFragmentDelegate ? (IMapFragmentDelegate) queryLocalInterface : new zzj(readStrongBinder);
        }
        zza2.recycle();
        return zzjVar;
    }

    @Override // com.google.android.gms.maps.internal.zze
    public final IStreetViewPanoramaFragmentDelegate zzd(IObjectWrapper iObjectWrapper) throws RemoteException {
        zzbv zzbvVar;
        Parcel zza = zza();
        zzc.zza(zza, iObjectWrapper);
        Parcel zza2 = zza(8, zza);
        IBinder readStrongBinder = zza2.readStrongBinder();
        if (readStrongBinder == null) {
            zzbvVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.maps.internal.IStreetViewPanoramaFragmentDelegate");
            zzbvVar = queryLocalInterface instanceof IStreetViewPanoramaFragmentDelegate ? (IStreetViewPanoramaFragmentDelegate) queryLocalInterface : new zzbv(readStrongBinder);
        }
        zza2.recycle();
        return zzbvVar;
    }

    @Override // com.google.android.gms.maps.internal.zze
    public final ICameraUpdateFactoryDelegate zze() throws RemoteException {
        zzb zzbVar;
        Parcel zza = zza(4, zza());
        IBinder readStrongBinder = zza.readStrongBinder();
        if (readStrongBinder == null) {
            zzbVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.maps.internal.ICameraUpdateFactoryDelegate");
            zzbVar = queryLocalInterface instanceof ICameraUpdateFactoryDelegate ? (ICameraUpdateFactoryDelegate) queryLocalInterface : new zzb(readStrongBinder);
        }
        zza.recycle();
        return zzbVar;
    }

    @Override // com.google.android.gms.maps.internal.zze
    public final zze zzf() throws RemoteException {
        Parcel zza = zza(5, zza());
        zze zzb = com.google.android.gms.internal.maps.zzf.zzb(zza.readStrongBinder());
        zza.recycle();
        return zzb;
    }
}
