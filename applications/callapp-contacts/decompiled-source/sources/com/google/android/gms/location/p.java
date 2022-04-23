package com.google.android.gms.location;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.location.q;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/location/p.class */
public class p extends q implements q {
    public static q a(IBinder iBinder) {
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.location.IDeviceOrientationListener");
        return queryLocalInterface instanceof q ? (q) queryLocalInterface : new o(iBinder);
    }

    @Override // com.google.android.gms.internal.location.q
    public final boolean a(int i, Parcel parcel) throws RemoteException {
        throw null;
    }
}
