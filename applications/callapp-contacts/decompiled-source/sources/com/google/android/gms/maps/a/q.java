package com.google.android.gms.maps.a;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.e.f;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/maps/a/q.class */
public abstract class q extends f implements p {
    public q() {
        super("com.google.android.gms.maps.internal.IOnMapReadyCallback");
    }

    @Override // com.google.android.gms.internal.e.f
    public final boolean dispatchTransaction(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        b bVar;
        if (i != 1) {
            return false;
        }
        IBinder readStrongBinder = parcel.readStrongBinder();
        if (readStrongBinder == null) {
            bVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
            bVar = queryLocalInterface instanceof b ? (b) queryLocalInterface : new ae(readStrongBinder);
        }
        a(bVar);
        parcel2.writeNoException();
        return true;
    }
}
