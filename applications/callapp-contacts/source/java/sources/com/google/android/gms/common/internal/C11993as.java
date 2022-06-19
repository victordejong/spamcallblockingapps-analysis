package com.google.android.gms.common.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
/* renamed from: com.google.android.gms.common.internal.as */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/internal/as.class */
final class C11993as implements AbstractC12040l {

    /* renamed from: a */
    private final IBinder f39497a;

    public C11993as(IBinder iBinder) {
        this.f39497a = iBinder;
    }

    @Override // com.google.android.gms.common.internal.AbstractC12040l
    /* renamed from: a */
    public final void mo19170a(AbstractC12039k abstractC12039k, GetServiceRequest getServiceRequest) throws RemoteException {
        Parcel obtain = Parcel.obtain();
        Parcel obtain2 = Parcel.obtain();
        try {
            obtain.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
            obtain.writeStrongBinder(abstractC12039k.asBinder());
            obtain.writeInt(1);
            C12011bj.m19206a(getServiceRequest, obtain, 0);
            this.f39497a.transact(46, obtain, obtain2, 0);
            obtain2.readException();
        } finally {
            obtain2.recycle();
            obtain.recycle();
        }
    }

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return this.f39497a;
    }
}
