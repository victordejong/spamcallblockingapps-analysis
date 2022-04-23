package com.google.android.gms.cloudmessaging;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Message;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/cloudmessaging/a.class */
interface a extends IInterface {

    /* renamed from: com.google.android.gms.cloudmessaging.a$a  reason: collision with other inner class name */
    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/cloudmessaging/a$a.class */
    public static final class C0452a implements a {

        /* renamed from: a  reason: collision with root package name */
        private final IBinder f22540a;

        /* JADX INFO: Access modifiers changed from: package-private */
        public C0452a(IBinder iBinder) {
            this.f22540a = iBinder;
        }

        @Override // com.google.android.gms.cloudmessaging.a
        public final void a(Message message) throws RemoteException {
            Parcel obtain = Parcel.obtain();
            obtain.writeInterfaceToken("com.google.android.gms.iid.IMessengerCompat");
            obtain.writeInt(1);
            message.writeToParcel(obtain, 0);
            try {
                this.f22540a.transact(1, obtain, null, 1);
            } finally {
                obtain.recycle();
            }
        }

        @Override // android.os.IInterface
        public final IBinder asBinder() {
            return this.f22540a;
        }
    }

    void a(Message message) throws RemoteException;
}
