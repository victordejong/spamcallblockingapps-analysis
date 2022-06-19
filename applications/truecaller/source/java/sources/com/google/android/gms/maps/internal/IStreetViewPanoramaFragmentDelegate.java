package com.google.android.gms.maps.internal;

import android.os.Bundle;
import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.maps.StreetViewPanoramaOptions;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/maps/internal/IStreetViewPanoramaFragmentDelegate.class */
public interface IStreetViewPanoramaFragmentDelegate extends IInterface {
    /* renamed from: M */
    void m38678M(zzbp zzbpVar) throws RemoteException;

    /* renamed from: b */
    IObjectWrapper m38677b(IObjectWrapper iObjectWrapper, IObjectWrapper iObjectWrapper2, Bundle bundle) throws RemoteException;

    /* renamed from: d */
    void m38676d() throws RemoteException;

    /* renamed from: k1 */
    void m38675k1(IObjectWrapper iObjectWrapper, StreetViewPanoramaOptions streetViewPanoramaOptions, Bundle bundle) throws RemoteException;

    void onCreate(Bundle bundle) throws RemoteException;

    void onDestroy() throws RemoteException;

    void onLowMemory() throws RemoteException;

    void onPause() throws RemoteException;

    void onResume() throws RemoteException;

    void onSaveInstanceState(Bundle bundle) throws RemoteException;

    void onStart() throws RemoteException;

    void onStop() throws RemoteException;
}
