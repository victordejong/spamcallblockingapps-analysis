package com.google.android.gms.maps.a;

import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.dynamic.b;
import com.google.android.gms.internal.e.i;
import com.google.android.gms.maps.GoogleMapOptions;
import com.google.android.gms.maps.StreetViewPanoramaOptions;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/maps/a/ac.class */
public interface ac extends IInterface {
    a a() throws RemoteException;

    c a(b bVar) throws RemoteException;

    d a(b bVar, GoogleMapOptions googleMapOptions) throws RemoteException;

    g a(b bVar, StreetViewPanoramaOptions streetViewPanoramaOptions) throws RemoteException;

    void a(b bVar, int i) throws RemoteException;

    i b() throws RemoteException;

    f b(b bVar) throws RemoteException;
}
