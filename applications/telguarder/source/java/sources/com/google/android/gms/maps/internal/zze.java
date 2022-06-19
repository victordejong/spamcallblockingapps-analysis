package com.google.android.gms.maps.internal;

import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.maps.GoogleMapOptions;
import com.google.android.gms.maps.StreetViewPanoramaOptions;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/maps/internal/zze.class */
public interface zze extends IInterface {
    IMapViewDelegate zza(IObjectWrapper iObjectWrapper, GoogleMapOptions googleMapOptions) throws RemoteException;

    IStreetViewPanoramaViewDelegate zza(IObjectWrapper iObjectWrapper, StreetViewPanoramaOptions streetViewPanoramaOptions) throws RemoteException;

    void zza(IObjectWrapper iObjectWrapper, int i) throws RemoteException;

    IMapFragmentDelegate zzc(IObjectWrapper iObjectWrapper) throws RemoteException;

    IStreetViewPanoramaFragmentDelegate zzd(IObjectWrapper iObjectWrapper) throws RemoteException;

    ICameraUpdateFactoryDelegate zze() throws RemoteException;

    com.google.android.gms.internal.maps.zze zzf() throws RemoteException;
}
