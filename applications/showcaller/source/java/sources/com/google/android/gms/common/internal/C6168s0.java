package com.google.android.gms.common.internal;

import android.os.IBinder;
import android.os.Parcel;
/* renamed from: com.google.android.gms.common.internal.s0 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/s0.class */
final class C6168s0 implements AbstractC6144l {

    /* renamed from: d */
    private final IBinder f19602d;

    public C6168s0(IBinder iBinder) {
        this.f19602d = iBinder;
    }

    @Override // com.google.android.gms.common.internal.AbstractC6144l
    /* renamed from: H1 */
    public final void mo16987H1(AbstractC6141k abstractC6141k, GetServiceRequest getServiceRequest) {
        Parcel obtain = Parcel.obtain();
        Parcel obtain2 = Parcel.obtain();
        try {
            obtain.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
            obtain.writeStrongBinder(abstractC6141k != null ? abstractC6141k.asBinder() : null);
            if (getServiceRequest != null) {
                obtain.writeInt(1);
                C6140j1.m17052a(getServiceRequest, obtain, 0);
            } else {
                obtain.writeInt(0);
            }
            this.f19602d.transact(46, obtain, obtain2, 0);
            obtain2.readException();
        } finally {
            obtain2.recycle();
            obtain.recycle();
        }
    }

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return this.f19602d;
    }
}
