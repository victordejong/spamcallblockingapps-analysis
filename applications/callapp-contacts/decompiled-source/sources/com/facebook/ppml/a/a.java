package com.facebook.ppml.a;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes3-dex2jar.jar:com/facebook/ppml/a/a.class */
public interface a extends IInterface {

    /* renamed from: com.facebook.ppml.a.a$a  reason: collision with other inner class name */
    /* loaded from: classes3-dex2jar.jar:com/facebook/ppml/a/a$a.class */
    public static abstract class AbstractBinderC0404a extends Binder implements a {

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: com.facebook.ppml.a.a$a$a  reason: collision with other inner class name */
        /* loaded from: classes3-dex2jar.jar:com/facebook/ppml/a/a$a$a.class */
        public static final class C0405a implements a {

            /* renamed from: a  reason: collision with root package name */
            public static a f20103a;

            /* renamed from: b  reason: collision with root package name */
            private IBinder f20104b;

            C0405a(IBinder iBinder) {
                this.f20104b = iBinder;
            }

            @Override // com.facebook.ppml.a.a
            public final int a(Bundle bundle) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.facebook.ppml.receiver.IReceiverService");
                    if (bundle != null) {
                        obtain.writeInt(1);
                        bundle.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (!this.f20104b.transact(1, obtain, obtain2, 0) && AbstractBinderC0404a.a() != null) {
                        return AbstractBinderC0404a.a().a(bundle);
                    }
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.os.IInterface
            public final IBinder asBinder() {
                return this.f20104b;
            }
        }

        public AbstractBinderC0404a() {
            attachInterface(this, "com.facebook.ppml.receiver.IReceiverService");
        }

        public static a a() {
            return C0405a.f20103a;
        }

        public static a a(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.facebook.ppml.receiver.IReceiverService");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof a)) ? new C0405a(iBinder) : (a) queryLocalInterface;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            if (i == 1) {
                parcel.enforceInterface("com.facebook.ppml.receiver.IReceiverService");
                int a2 = a(parcel.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcel) : null);
                parcel2.writeNoException();
                parcel2.writeInt(a2);
                return true;
            } else if (i != 1598968902) {
                return super.onTransact(i, parcel, parcel2, i2);
            } else {
                parcel2.writeString("com.facebook.ppml.receiver.IReceiverService");
                return true;
            }
        }
    }

    int a(Bundle bundle) throws RemoteException;
}
