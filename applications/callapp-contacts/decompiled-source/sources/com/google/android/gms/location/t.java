package com.google.android.gms.location;

import android.os.IInterface;
import android.os.RemoteException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/location/t.class */
public interface t extends IInterface {
    void a(LocationAvailability locationAvailability) throws RemoteException;

    void a(LocationResult locationResult) throws RemoteException;
}
