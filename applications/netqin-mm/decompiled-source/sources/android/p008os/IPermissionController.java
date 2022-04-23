package android.p008os;
/* renamed from: android.os.IPermissionController */
/* loaded from: classes-dex2jar.jar:android/os/IPermissionController.class */
public interface IPermissionController extends IInterface {

    /* renamed from: android.os.IPermissionController$Stub */
    /* loaded from: classes-dex2jar.jar:android/os/IPermissionController$Stub.class */
    public static abstract class Stub extends Binder implements IPermissionController {
        public static final String DESCRIPTOR = "android.os.IPermissionController";
        public static final int TRANSACTION_checkPermission = 1;

        /* renamed from: android.os.IPermissionController$Stub$Proxy */
        /* loaded from: classes-dex2jar.jar:android/os/IPermissionController$Stub$Proxy.class */
        public static class Proxy implements IPermissionController {
            public IBinder mRemote;

            public Proxy(IBinder iBinder) {
                this.mRemote = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            @Override // android.p008os.IPermissionController
            public boolean checkPermission(String str, int i, int i2) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    obtain.writeInt(i);
                    obtain.writeInt(i2);
                    boolean z = false;
                    this.mRemote.transact(1, obtain, obtain2, 0);
                    obtain2.readException();
                    if (obtain2.readInt() != 0) {
                        z = true;
                    }
                    return z;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public String getInterfaceDescriptor() {
                return Stub.DESCRIPTOR;
            }
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static IPermissionController asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            return (queryLocalInterface == null || !(queryLocalInterface instanceof IPermissionController)) ? new Proxy(iBinder) : (IPermissionController) queryLocalInterface;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            if (i == 1) {
                parcel.enforceInterface(DESCRIPTOR);
                boolean checkPermission = checkPermission(parcel.readString(), parcel.readInt(), parcel.readInt());
                parcel2.writeNoException();
                parcel2.writeInt(checkPermission ? 1 : 0);
                return true;
            } else if (i != 1598968902) {
                return super.onTransact(i, parcel, parcel2, i2);
            } else {
                parcel2.writeString(DESCRIPTOR);
                return true;
            }
        }
    }

    boolean checkPermission(String str, int i, int i2) throws RemoteException;
}
