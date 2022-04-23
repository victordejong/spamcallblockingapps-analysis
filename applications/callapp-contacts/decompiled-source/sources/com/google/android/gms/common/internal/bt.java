package com.google.android.gms.common.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.b;
import com.google.android.gms.internal.c.a;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/internal/bt.class */
public final class bt extends a implements bv {
    /* JADX INFO: Access modifiers changed from: package-private */
    public bt(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.common.internal.ICertData");
    }

    @Override // com.google.android.gms.common.internal.bv
    public final b a() throws RemoteException {
        Parcel a2 = a(1, c());
        b a3 = b.a.a(a2.readStrongBinder());
        a2.recycle();
        return a3;
    }

    @Override // com.google.android.gms.common.internal.bv
    public final int b() throws RemoteException {
        Parcel a2 = a(2, c());
        int readInt = a2.readInt();
        a2.recycle();
        return readInt;
    }
}
