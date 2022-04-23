package com.google.android.gms.maps.a;

import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.e.f;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/maps/a/o.class */
public abstract class o extends f implements n {
    public o() {
        super("com.google.android.gms.maps.internal.IOnMapLoadedCallback");
    }

    @Override // com.google.android.gms.internal.e.f
    public final boolean dispatchTransaction(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i != 1) {
            return false;
        }
        a();
        parcel2.writeNoException();
        return true;
    }
}
