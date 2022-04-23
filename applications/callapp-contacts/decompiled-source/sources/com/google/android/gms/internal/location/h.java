package com.google.android.gms.internal.location;

import android.location.Location;
import android.os.IInterface;
import android.os.RemoteException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/location/h.class */
public interface h extends IInterface {
    Location a(String str) throws RemoteException;

    void a(zzbc zzbcVar) throws RemoteException;

    void a(zzl zzlVar) throws RemoteException;

    void a(boolean z) throws RemoteException;

    @Deprecated
    Location b() throws RemoteException;
}
