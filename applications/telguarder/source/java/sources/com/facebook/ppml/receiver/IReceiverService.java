package com.facebook.ppml.receiver;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes-dex2jar.jar:com/facebook/ppml/receiver/IReceiverService.class */
public interface IReceiverService extends IInterface {

    /* loaded from: classes-dex2jar.jar:com/facebook/ppml/receiver/IReceiverService$Default.class */
    public static class Default implements IReceiverService {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // com.facebook.ppml.receiver.IReceiverService
        public int sendEvents(Bundle bundle) throws RemoteException {
            return 0;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/facebook/ppml/receiver/IReceiverService$Stub.class */
    public static abstract class Stub extends Binder implements IReceiverService {
        private static final String DESCRIPTOR = "com.facebook.ppml.receiver.IReceiverService";
        static final int TRANSACTION_sendEvents = 1;

        /* loaded from: classes-dex2jar.jar:com/facebook/ppml/receiver/IReceiverService$Stub$Proxy.class */
        public static class Proxy implements IReceiverService {
            public static IReceiverService sDefaultImpl;
            private IBinder mRemote;

            Proxy(IBinder iBinder) {
                this.mRemote = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            public String getInterfaceDescriptor() {
                return Stub.DESCRIPTOR;
            }

            @Override // com.facebook.ppml.receiver.IReceiverService
            public int sendEvents(Bundle bundle) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (bundle != null) {
                        obtain.writeInt(1);
                        bundle.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (!this.mRemote.transact(1, obtain, obtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().sendEvents(bundle);
                    }
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static IReceiverService asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            return (queryLocalInterface == null || !(queryLocalInterface instanceof IReceiverService)) ? new Proxy(iBinder) : (IReceiverService) queryLocalInterface;
        }

        public static IReceiverService getDefaultImpl() {
            return Proxy.sDefaultImpl;
        }

        public static boolean setDefaultImpl(IReceiverService iReceiverService) {
            if (Proxy.sDefaultImpl != null || iReceiverService == null) {
                return false;
            }
            Proxy.sDefaultImpl = iReceiverService;
            return true;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            if (i != 1) {
                if (i != 1598968902) {
                    return super.onTransact(i, parcel, parcel2, i2);
                }
                parcel2.writeString(DESCRIPTOR);
                return true;
            }
            parcel.enforceInterface(DESCRIPTOR);
            int sendEvents = sendEvents(parcel.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcel) : null);
            parcel2.writeNoException();
            parcel2.writeInt(sendEvents);
            return true;
        }
    }

    int sendEvents(Bundle bundle) throws RemoteException;
}
