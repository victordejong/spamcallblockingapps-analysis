package com.google.android.gms.internal.e;

import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.dynamic.b;
import com.google.android.gms.maps.model.Cap;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.PatternItem;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/e/v.class */
public interface v extends IInterface {
    String a() throws RemoteException;

    List<LatLng> b() throws RemoteException;

    float c() throws RemoteException;

    int d() throws RemoteException;

    float e() throws RemoteException;

    boolean f() throws RemoteException;

    boolean g() throws RemoteException;

    boolean h() throws RemoteException;

    int i() throws RemoteException;

    boolean j() throws RemoteException;

    Cap k() throws RemoteException;

    Cap l() throws RemoteException;

    int m() throws RemoteException;

    List<PatternItem> n() throws RemoteException;

    b o() throws RemoteException;
}
