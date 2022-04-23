package com.google.android.gms.dynamite;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.c.a;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/dynamite/o.class */
public final class o extends a implements IInterface {
    /* JADX INFO: Access modifiers changed from: package-private */
    public o(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.dynamite.IDynamiteLoader");
    }

    public final int a() throws RemoteException {
        Parcel a2 = a(6, c());
        int readInt = a2.readInt();
        a2.recycle();
        return readInt;
    }
}
