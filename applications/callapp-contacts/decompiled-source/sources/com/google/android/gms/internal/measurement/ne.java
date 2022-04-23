package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/ne.class */
public abstract class ne extends v implements nf {
    public ne() {
        super("com.google.android.gms.measurement.api.internal.IEventHandlerProxy");
    }

    @Override // com.google.android.gms.internal.measurement.v
    protected final boolean a(int i, Parcel parcel, Parcel parcel2) throws RemoteException {
        if (i == 1) {
            a(parcel.readString(), parcel.readString(), (Bundle) as.a(parcel, Bundle.CREATOR), parcel.readLong());
            parcel2.writeNoException();
            return true;
        } else if (i != 2) {
            return false;
        } else {
            int O_ = O_();
            parcel2.writeNoException();
            parcel2.writeInt(O_);
            return true;
        }
    }
}
