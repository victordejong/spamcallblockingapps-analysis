package com.google.android.gms.maps.a;

import android.graphics.Bitmap;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.b;
import com.google.android.gms.internal.e.f;
import com.google.android.gms.internal.e.g;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/maps/a/v.class */
public abstract class v extends f implements u {
    public v() {
        super("com.google.android.gms.maps.internal.ISnapshotReadyCallback");
    }

    @Override // com.google.android.gms.internal.e.f
    public final boolean dispatchTransaction(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i == 1) {
            a((Bitmap) g.a(parcel, Bitmap.CREATOR));
        } else if (i != 2) {
            return false;
        } else {
            a(b.a.a(parcel.readStrongBinder()));
        }
        parcel2.writeNoException();
        return true;
    }
}
