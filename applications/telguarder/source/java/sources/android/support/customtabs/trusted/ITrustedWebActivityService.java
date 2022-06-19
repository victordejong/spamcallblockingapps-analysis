package android.support.customtabs.trusted;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes-dex2jar.jar:android/support/customtabs/trusted/ITrustedWebActivityService.class */
public interface ITrustedWebActivityService extends IInterface {

    /* loaded from: classes-dex2jar.jar:android/support/customtabs/trusted/ITrustedWebActivityService$Default.class */
    public static class Default implements ITrustedWebActivityService {
        @Override // android.support.customtabs.trusted.ITrustedWebActivityService
        public Bundle areNotificationsEnabled(Bundle bundle) throws RemoteException {
            return null;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // android.support.customtabs.trusted.ITrustedWebActivityService
        public void cancelNotification(Bundle bundle) throws RemoteException {
        }

        @Override // android.support.customtabs.trusted.ITrustedWebActivityService
        public Bundle extraCommand(String str, Bundle bundle, IBinder iBinder) throws RemoteException {
            return null;
        }

        @Override // android.support.customtabs.trusted.ITrustedWebActivityService
        public Bundle getActiveNotifications() throws RemoteException {
            return null;
        }

        @Override // android.support.customtabs.trusted.ITrustedWebActivityService
        public Bundle getSmallIconBitmap() throws RemoteException {
            return null;
        }

        @Override // android.support.customtabs.trusted.ITrustedWebActivityService
        public int getSmallIconId() throws RemoteException {
            return 0;
        }

        @Override // android.support.customtabs.trusted.ITrustedWebActivityService
        public Bundle notifyNotificationWithChannel(Bundle bundle) throws RemoteException {
            return null;
        }
    }

    /* loaded from: classes-dex2jar.jar:android/support/customtabs/trusted/ITrustedWebActivityService$Stub.class */
    public static abstract class Stub extends Binder implements ITrustedWebActivityService {
        private static final String DESCRIPTOR = "android.support.customtabs.trusted.ITrustedWebActivityService";
        static final int TRANSACTION_areNotificationsEnabled = 6;
        static final int TRANSACTION_cancelNotification = 3;
        static final int TRANSACTION_extraCommand = 9;
        static final int TRANSACTION_getActiveNotifications = 5;
        static final int TRANSACTION_getSmallIconBitmap = 7;
        static final int TRANSACTION_getSmallIconId = 4;
        static final int TRANSACTION_notifyNotificationWithChannel = 2;

        /* loaded from: classes-dex2jar.jar:android/support/customtabs/trusted/ITrustedWebActivityService$Stub$Proxy.class */
        public static class Proxy implements ITrustedWebActivityService {
            public static ITrustedWebActivityService sDefaultImpl;
            private IBinder mRemote;

            Proxy(IBinder iBinder) {
                this.mRemote = iBinder;
            }

            @Override // android.support.customtabs.trusted.ITrustedWebActivityService
            public Bundle areNotificationsEnabled(Bundle bundle) throws RemoteException {
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
                    if (!this.mRemote.transact(6, obtain, obtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().areNotificationsEnabled(bundle);
                    }
                    obtain2.readException();
                    Bundle bundle2 = obtain2.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(obtain2) : null;
                    obtain2.recycle();
                    obtain.recycle();
                    return bundle2;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            @Override // android.support.customtabs.trusted.ITrustedWebActivityService
            public void cancelNotification(Bundle bundle) throws RemoteException {
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
                    if (this.mRemote.transact(3, obtain, obtain2, 0) || Stub.getDefaultImpl() == null) {
                        obtain2.readException();
                    } else {
                        Stub.getDefaultImpl().cancelNotification(bundle);
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.support.customtabs.trusted.ITrustedWebActivityService
            public Bundle extraCommand(String str, Bundle bundle, IBinder iBinder) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    if (bundle != null) {
                        obtain.writeInt(1);
                        bundle.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeStrongBinder(iBinder);
                    if (!this.mRemote.transact(9, obtain, obtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().extraCommand(str, bundle, iBinder);
                    }
                    obtain2.readException();
                    Bundle bundle2 = obtain2.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(obtain2) : null;
                    obtain2.recycle();
                    obtain.recycle();
                    return bundle2;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.support.customtabs.trusted.ITrustedWebActivityService
            public Bundle getActiveNotifications() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(5, obtain, obtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getActiveNotifications();
                    }
                    obtain2.readException();
                    Bundle bundle = obtain2.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(obtain2) : null;
                    obtain2.recycle();
                    obtain.recycle();
                    return bundle;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public String getInterfaceDescriptor() {
                return Stub.DESCRIPTOR;
            }

            @Override // android.support.customtabs.trusted.ITrustedWebActivityService
            public Bundle getSmallIconBitmap() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(7, obtain, obtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getSmallIconBitmap();
                    }
                    obtain2.readException();
                    Bundle bundle = obtain2.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(obtain2) : null;
                    obtain2.recycle();
                    obtain.recycle();
                    return bundle;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.support.customtabs.trusted.ITrustedWebActivityService
            public int getSmallIconId() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(4, obtain, obtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getSmallIconId();
                    }
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.support.customtabs.trusted.ITrustedWebActivityService
            public Bundle notifyNotificationWithChannel(Bundle bundle) throws RemoteException {
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
                    if (!this.mRemote.transact(2, obtain, obtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().notifyNotificationWithChannel(bundle);
                    }
                    obtain2.readException();
                    Bundle bundle2 = obtain2.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(obtain2) : null;
                    obtain2.recycle();
                    obtain.recycle();
                    return bundle2;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static ITrustedWebActivityService asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            return (queryLocalInterface == null || !(queryLocalInterface instanceof ITrustedWebActivityService)) ? new Proxy(iBinder) : (ITrustedWebActivityService) queryLocalInterface;
        }

        public static ITrustedWebActivityService getDefaultImpl() {
            return Proxy.sDefaultImpl;
        }

        public static boolean setDefaultImpl(ITrustedWebActivityService iTrustedWebActivityService) {
            if (Proxy.sDefaultImpl == null) {
                if (iTrustedWebActivityService == null) {
                    return false;
                }
                Proxy.sDefaultImpl = iTrustedWebActivityService;
                return true;
            }
            throw new IllegalStateException("setDefaultImpl() called twice");
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            Bundle bundle = null;
            if (i == 9) {
                parcel.enforceInterface(DESCRIPTOR);
                String readString = parcel.readString();
                if (parcel.readInt() != 0) {
                    bundle = (Bundle) Bundle.CREATOR.createFromParcel(parcel);
                }
                Bundle extraCommand = extraCommand(readString, bundle, parcel.readStrongBinder());
                parcel2.writeNoException();
                if (extraCommand == null) {
                    parcel2.writeInt(0);
                    return true;
                }
                parcel2.writeInt(1);
                extraCommand.writeToParcel(parcel2, 1);
                return true;
            } else if (i == 1598968902) {
                parcel2.writeString(DESCRIPTOR);
                return true;
            } else {
                switch (i) {
                    case 2:
                        parcel.enforceInterface(DESCRIPTOR);
                        Bundle bundle2 = null;
                        if (parcel.readInt() != 0) {
                            bundle2 = (Bundle) Bundle.CREATOR.createFromParcel(parcel);
                        }
                        Bundle notifyNotificationWithChannel = notifyNotificationWithChannel(bundle2);
                        parcel2.writeNoException();
                        if (notifyNotificationWithChannel == null) {
                            parcel2.writeInt(0);
                            return true;
                        }
                        parcel2.writeInt(1);
                        notifyNotificationWithChannel.writeToParcel(parcel2, 1);
                        return true;
                    case 3:
                        parcel.enforceInterface(DESCRIPTOR);
                        Bundle bundle3 = null;
                        if (parcel.readInt() != 0) {
                            bundle3 = (Bundle) Bundle.CREATOR.createFromParcel(parcel);
                        }
                        cancelNotification(bundle3);
                        parcel2.writeNoException();
                        return true;
                    case 4:
                        parcel.enforceInterface(DESCRIPTOR);
                        int smallIconId = getSmallIconId();
                        parcel2.writeNoException();
                        parcel2.writeInt(smallIconId);
                        return true;
                    case 5:
                        parcel.enforceInterface(DESCRIPTOR);
                        Bundle activeNotifications = getActiveNotifications();
                        parcel2.writeNoException();
                        if (activeNotifications == null) {
                            parcel2.writeInt(0);
                            return true;
                        }
                        parcel2.writeInt(1);
                        activeNotifications.writeToParcel(parcel2, 1);
                        return true;
                    case 6:
                        parcel.enforceInterface(DESCRIPTOR);
                        Bundle bundle4 = null;
                        if (parcel.readInt() != 0) {
                            bundle4 = (Bundle) Bundle.CREATOR.createFromParcel(parcel);
                        }
                        Bundle areNotificationsEnabled = areNotificationsEnabled(bundle4);
                        parcel2.writeNoException();
                        if (areNotificationsEnabled == null) {
                            parcel2.writeInt(0);
                            return true;
                        }
                        parcel2.writeInt(1);
                        areNotificationsEnabled.writeToParcel(parcel2, 1);
                        return true;
                    case 7:
                        parcel.enforceInterface(DESCRIPTOR);
                        Bundle smallIconBitmap = getSmallIconBitmap();
                        parcel2.writeNoException();
                        if (smallIconBitmap == null) {
                            parcel2.writeInt(0);
                            return true;
                        }
                        parcel2.writeInt(1);
                        smallIconBitmap.writeToParcel(parcel2, 1);
                        return true;
                    default:
                        return super.onTransact(i, parcel, parcel2, i2);
                }
            }
        }
    }

    Bundle areNotificationsEnabled(Bundle bundle) throws RemoteException;

    void cancelNotification(Bundle bundle) throws RemoteException;

    Bundle extraCommand(String str, Bundle bundle, IBinder iBinder) throws RemoteException;

    Bundle getActiveNotifications() throws RemoteException;

    Bundle getSmallIconBitmap() throws RemoteException;

    int getSmallIconId() throws RemoteException;

    Bundle notifyNotificationWithChannel(Bundle bundle) throws RemoteException;
}
