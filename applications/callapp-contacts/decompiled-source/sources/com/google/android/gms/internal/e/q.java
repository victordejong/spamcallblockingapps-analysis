package com.google.android.gms.internal.e;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/e/q.class */
public final class q extends a implements o {
    /* JADX INFO: Access modifiers changed from: package-private */
    public q(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.maps.model.internal.IIndoorLevelDelegate");
    }

    @Override // com.google.android.gms.internal.e.o
    public final String a() throws RemoteException {
        Parcel a2 = a(1, N_());
        String readString = a2.readString();
        a2.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.e.o
    public final boolean a(o oVar) throws RemoteException {
        Parcel N_ = N_();
        g.a(N_, oVar);
        Parcel a2 = a(4, N_);
        boolean a3 = g.a(a2);
        a2.recycle();
        return a3;
    }

    @Override // com.google.android.gms.internal.e.o
    public final String b() throws RemoteException {
        Parcel a2 = a(2, N_());
        String readString = a2.readString();
        a2.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.e.o
    public final void c() throws RemoteException {
        b(3, N_());
    }

    @Override // com.google.android.gms.internal.e.o
    public final int d() throws RemoteException {
        Parcel a2 = a(5, N_());
        int readInt = a2.readInt();
        a2.recycle();
        return readInt;
    }
}
