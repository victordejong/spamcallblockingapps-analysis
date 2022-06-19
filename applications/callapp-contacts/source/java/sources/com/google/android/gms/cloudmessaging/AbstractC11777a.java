package com.google.android.gms.cloudmessaging;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Message;
import android.os.Parcel;
import android.os.RemoteException;
/* renamed from: com.google.android.gms.cloudmessaging.a */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/cloudmessaging/a.class */
interface AbstractC11777a extends IInterface {

    /* renamed from: com.google.android.gms.cloudmessaging.a$a */
    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/cloudmessaging/a$a.class */
    public static final class C11778a implements AbstractC11777a {

        /* renamed from: a */
        private final IBinder f39095a;

        public C11778a(IBinder iBinder) {
            this.f39095a = iBinder;
        }

        @Override // com.google.android.gms.cloudmessaging.AbstractC11777a
        /* renamed from: a */
        public final void mo19506a(Message message) throws RemoteException {
            Parcel obtain = Parcel.obtain();
            obtain.writeInterfaceToken("com.google.android.gms.iid.IMessengerCompat");
            obtain.writeInt(1);
            message.writeToParcel(obtain, 0);
            try {
                this.f39095a.transact(1, obtain, null, 1);
            } finally {
                obtain.recycle();
            }
        }

        @Override // android.os.IInterface
        public final IBinder asBinder() {
            return this.f39095a;
        }
    }

    /* renamed from: a */
    void mo19506a(Message message) throws RemoteException;
}
