package com.google.android.gms.common.internal;

import android.os.Bundle;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.c.b;
import com.google.android.gms.internal.c.c;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/internal/ar.class */
public abstract class ar extends b implements k {
    public ar() {
        super("com.google.android.gms.common.internal.IGmsCallbacks");
    }

    @Override // com.google.android.gms.internal.c.b
    public final boolean a(int i, Parcel parcel, Parcel parcel2) throws RemoteException {
        if (i == 1) {
            a(parcel.readInt(), parcel.readStrongBinder(), (Bundle) c.a(parcel, Bundle.CREATOR));
        } else if (i == 2) {
            parcel.readInt();
            c.a(parcel, Bundle.CREATOR);
            a();
        } else if (i != 3) {
            return false;
        } else {
            a(parcel.readInt(), parcel.readStrongBinder(), (zzi) c.a(parcel, zzi.CREATOR));
        }
        parcel2.writeNoException();
        return true;
    }
}
