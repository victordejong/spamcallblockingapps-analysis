package com.google.android.gms.internal.a;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/a/g.class */
public final class g extends a implements e {
    /* JADX INFO: Access modifiers changed from: package-private */
    public g(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.identifier.internal.IAdvertisingIdService");
    }

    @Override // com.google.android.gms.internal.a.e
    public final String a() throws RemoteException {
        Parcel a2 = a(1, L_());
        String readString = a2.readString();
        a2.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.a.e
    public final boolean b() throws RemoteException {
        Parcel L_ = L_();
        c.b(L_);
        Parcel a2 = a(2, L_);
        boolean a3 = c.a(a2);
        a2.recycle();
        return a3;
    }

    @Override // com.google.android.gms.internal.a.e
    public final boolean c() throws RemoteException {
        Parcel a2 = a(6, L_());
        boolean a3 = c.a(a2);
        a2.recycle();
        return a3;
    }
}
