package com.google.android.gms.common.internal;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.c.b;
import com.google.android.gms.internal.c.c;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/internal/bu.class */
public abstract class bu extends b implements bv {
    public bu() {
        super("com.google.android.gms.common.internal.ICertData");
    }

    public static bv a(IBinder iBinder) {
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.common.internal.ICertData");
        return queryLocalInterface instanceof bv ? (bv) queryLocalInterface : new bt(iBinder);
    }

    @Override // com.google.android.gms.internal.c.b
    public final boolean a(int i, Parcel parcel, Parcel parcel2) throws RemoteException {
        if (i == 1) {
            com.google.android.gms.dynamic.b a2 = a();
            parcel2.writeNoException();
            c.a(parcel2, a2);
            return true;
        } else if (i != 2) {
            return false;
        } else {
            int b2 = b();
            parcel2.writeNoException();
            parcel2.writeInt(b2);
            return true;
        }
    }
}
