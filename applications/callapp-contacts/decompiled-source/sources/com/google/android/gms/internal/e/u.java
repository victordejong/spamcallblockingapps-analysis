package com.google.android.gms.internal.e;

import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.dynamic.b;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.PatternItem;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/e/u.class */
public interface u extends IInterface {
    String a() throws RemoteException;

    List<LatLng> b() throws RemoteException;

    List c() throws RemoteException;

    float d() throws RemoteException;

    int e() throws RemoteException;

    int f() throws RemoteException;

    float g() throws RemoteException;

    boolean h() throws RemoteException;

    boolean i() throws RemoteException;

    boolean j() throws RemoteException;

    int k() throws RemoteException;

    boolean l() throws RemoteException;

    int m() throws RemoteException;

    List<PatternItem> n() throws RemoteException;

    b o() throws RemoteException;
}
