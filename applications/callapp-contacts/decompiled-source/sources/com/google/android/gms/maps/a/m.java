package com.google.android.gms.maps.a;

import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.e.f;
import com.google.android.gms.internal.e.g;
import com.google.android.gms.maps.model.LatLng;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/maps/a/m.class */
public abstract class m extends f implements l {
    public m() {
        super("com.google.android.gms.maps.internal.IOnMapClickListener");
    }

    @Override // com.google.android.gms.internal.e.f
    public final boolean dispatchTransaction(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i != 1) {
            return false;
        }
        a((LatLng) g.a(parcel, LatLng.CREATOR));
        parcel2.writeNoException();
        return true;
    }
}
