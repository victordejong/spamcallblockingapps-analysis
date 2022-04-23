package com.google.android.gms.maps.a;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.e.f;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/maps/a/t.class */
public abstract class t extends f implements s {
    public t() {
        super("com.google.android.gms.maps.internal.IOnStreetViewPanoramaReadyCallback");
    }

    @Override // com.google.android.gms.internal.e.f
    public final boolean dispatchTransaction(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        e eVar;
        if (i != 1) {
            return false;
        }
        IBinder readStrongBinder = parcel.readStrongBinder();
        if (readStrongBinder == null) {
            eVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.maps.internal.IStreetViewPanoramaDelegate");
            eVar = queryLocalInterface instanceof e ? (e) queryLocalInterface : new w(readStrongBinder);
        }
        a(eVar);
        parcel2.writeNoException();
        return true;
    }
}
