package com.google.android.gms.location;

import android.location.Location;
import android.os.IInterface;
import android.os.RemoteException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/location/zzx.class */
public interface zzx extends IInterface {
    void onLocationChanged(Location location) throws RemoteException;
}
