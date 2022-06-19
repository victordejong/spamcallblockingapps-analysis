package com.google.firebase.iid;

import android.os.IBinder;
import android.os.Message;
import android.os.Parcel;
/* renamed from: com.google.firebase.iid.be */
/* loaded from: classes-dex2jar.jar:com/google/firebase/iid/be.class */
public final class C4972be implements AbstractC4973bf {

    /* renamed from: a */
    private final IBinder f21138a;

    public C4972be(IBinder iBinder) {
        this.f21138a = iBinder;
    }

    @Override // com.google.firebase.iid.AbstractC4973bf
    /* renamed from: a */
    public final void mo1940a(Message message) {
        Parcel obtain = Parcel.obtain();
        obtain.writeInterfaceToken("com.google.android.gms.iid.IMessengerCompat");
        obtain.writeInt(1);
        message.writeToParcel(obtain, 0);
        try {
            this.f21138a.transact(1, obtain, null, 1);
        } finally {
            obtain.recycle();
        }
    }

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return this.f21138a;
    }
}
