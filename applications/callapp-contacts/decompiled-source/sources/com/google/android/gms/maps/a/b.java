package com.google.android.gms.maps.a;

import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.internal.e.r;
import com.google.android.gms.maps.model.MapStyleOptions;
import com.google.android.gms.maps.model.MarkerOptions;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/maps/a/b.class */
public interface b extends IInterface {
    r a(MarkerOptions markerOptions) throws RemoteException;

    h a() throws RemoteException;

    void a(float f) throws RemoteException;

    void a(com.google.android.gms.dynamic.b bVar) throws RemoteException;

    void a(l lVar) throws RemoteException;

    void a(n nVar) throws RemoteException;

    void a(u uVar, com.google.android.gms.dynamic.b bVar) throws RemoteException;

    boolean a(MapStyleOptions mapStyleOptions) throws RemoteException;
}
