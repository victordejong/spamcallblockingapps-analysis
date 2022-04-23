package com.google.android.gms.wearable.internal;

import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.wearable.b;
/* loaded from: classes4-dex2jar.jar:com/google/android/gms/wearable/internal/bg.class */
public abstract class bg extends b implements bf {
    public bg() {
        super("com.google.android.gms.wearable.internal.IChannelStreamCallbacks");
    }

    @Override // com.google.android.gms.internal.wearable.b
    public final boolean a(int i, Parcel parcel, Parcel parcel2) throws RemoteException {
        if (i != 2) {
            return false;
        }
        a(parcel.readInt(), parcel.readInt());
        parcel2.writeNoException();
        return true;
    }
}
