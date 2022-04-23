package com.google.android.gms.common.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/internal/as.class */
final class as implements l {

    /* renamed from: a  reason: collision with root package name */
    private final IBinder f22848a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public as(IBinder iBinder) {
        this.f22848a = iBinder;
    }

    @Override // com.google.android.gms.common.internal.l
    public final void a(k kVar, GetServiceRequest getServiceRequest) throws RemoteException {
        Parcel obtain = Parcel.obtain();
        Parcel obtain2 = Parcel.obtain();
        try {
            obtain.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
            obtain.writeStrongBinder(kVar.asBinder());
            obtain.writeInt(1);
            bj.a(getServiceRequest, obtain, 0);
            this.f22848a.transact(46, obtain, obtain2, 0);
            obtain2.readException();
        } finally {
            obtain2.recycle();
            obtain.recycle();
        }
    }

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return this.f22848a;
    }
}
