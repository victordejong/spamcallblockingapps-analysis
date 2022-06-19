package com.google.android.gms.maps.internal;

import android.os.Bundle;
import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.maps.GoogleMapOptions;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/maps/internal/IMapFragmentDelegate.class */
public interface IMapFragmentDelegate extends IInterface {
    /* renamed from: a */
    void m38683a(zzap zzapVar) throws RemoteException;

    /* renamed from: b */
    IObjectWrapper m38682b(IObjectWrapper iObjectWrapper, IObjectWrapper iObjectWrapper2, Bundle bundle) throws RemoteException;

    /* renamed from: b1 */
    void m38681b1(IObjectWrapper iObjectWrapper, GoogleMapOptions googleMapOptions, Bundle bundle) throws RemoteException;

    /* renamed from: d */
    void m38680d() throws RemoteException;

    void onCreate(Bundle bundle) throws RemoteException;

    void onDestroy() throws RemoteException;

    void onLowMemory() throws RemoteException;

    void onPause() throws RemoteException;

    void onResume() throws RemoteException;

    void onSaveInstanceState(Bundle bundle) throws RemoteException;

    void onStart() throws RemoteException;

    void onStop() throws RemoteException;
}
