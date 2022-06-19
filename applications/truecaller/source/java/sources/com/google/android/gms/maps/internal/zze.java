package com.google.android.gms.maps.internal;

import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.maps.GoogleMapOptions;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/maps/internal/zze.class */
public interface zze extends IInterface {
    /* renamed from: a1 */
    IMapViewDelegate m38639a1(IObjectWrapper iObjectWrapper, GoogleMapOptions googleMapOptions) throws RemoteException;

    /* renamed from: v1 */
    void m38638v1(IObjectWrapper iObjectWrapper, int i) throws RemoteException;

    /* renamed from: z */
    IMapFragmentDelegate m38637z(IObjectWrapper iObjectWrapper) throws RemoteException;

    IStreetViewPanoramaFragmentDelegate zzd(IObjectWrapper iObjectWrapper) throws RemoteException;

    ICameraUpdateFactoryDelegate zze() throws RemoteException;

    com.google.android.gms.internal.maps.zze zzf() throws RemoteException;
}
