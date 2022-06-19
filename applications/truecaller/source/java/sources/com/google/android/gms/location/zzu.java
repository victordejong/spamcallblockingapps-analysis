package com.google.android.gms.location;

import android.os.IInterface;
import android.os.RemoteException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/location/zzu.class */
public interface zzu extends IInterface {
    void onLocationAvailability(LocationAvailability locationAvailability) throws RemoteException;

    void onLocationResult(LocationResult locationResult) throws RemoteException;
}
