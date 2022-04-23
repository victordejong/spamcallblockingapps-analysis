package android.support.a.a;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes-dex2jar.jar:android/support/a/a/b.class */
public interface b extends IInterface {

    /* loaded from: classes-dex2jar.jar:android/support/a/a/b$a.class */
    public static abstract class a extends Binder implements b {
        public a() {
            attachInterface(this, "android.support.customtabs.trusted.ITrustedWebActivityService");
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            if (i == 9) {
                parcel.enforceInterface("android.support.customtabs.trusted.ITrustedWebActivityService");
                parcel.readString();
                if (parcel.readInt() != 0) {
                    Bundle.CREATOR.createFromParcel(parcel);
                }
                a(parcel.readStrongBinder());
                parcel2.writeNoException();
                parcel2.writeInt(0);
                return true;
            } else if (i != 1598968902) {
                Bundle bundle = null;
                Bundle bundle2 = null;
                Bundle bundle3 = null;
                switch (i) {
                    case 2:
                        parcel.enforceInterface("android.support.customtabs.trusted.ITrustedWebActivityService");
                        if (parcel.readInt() != 0) {
                            bundle2 = (Bundle) Bundle.CREATOR.createFromParcel(parcel);
                        }
                        Bundle b2 = b(bundle2);
                        parcel2.writeNoException();
                        if (b2 != null) {
                            parcel2.writeInt(1);
                            b2.writeToParcel(parcel2, 1);
                            return true;
                        }
                        parcel2.writeInt(0);
                        return true;
                    case 3:
                        parcel.enforceInterface("android.support.customtabs.trusted.ITrustedWebActivityService");
                        if (parcel.readInt() != 0) {
                            bundle = (Bundle) Bundle.CREATOR.createFromParcel(parcel);
                        }
                        c(bundle);
                        parcel2.writeNoException();
                        return true;
                    case 4:
                        parcel.enforceInterface("android.support.customtabs.trusted.ITrustedWebActivityService");
                        int b3 = b();
                        parcel2.writeNoException();
                        parcel2.writeInt(b3);
                        return true;
                    case 5:
                        parcel.enforceInterface("android.support.customtabs.trusted.ITrustedWebActivityService");
                        Bundle a2 = a();
                        parcel2.writeNoException();
                        parcel2.writeInt(1);
                        a2.writeToParcel(parcel2, 1);
                        return true;
                    case 6:
                        parcel.enforceInterface("android.support.customtabs.trusted.ITrustedWebActivityService");
                        if (parcel.readInt() != 0) {
                            bundle3 = (Bundle) Bundle.CREATOR.createFromParcel(parcel);
                        }
                        Bundle a3 = a(bundle3);
                        parcel2.writeNoException();
                        if (a3 != null) {
                            parcel2.writeInt(1);
                            a3.writeToParcel(parcel2, 1);
                            return true;
                        }
                        parcel2.writeInt(0);
                        return true;
                    case 7:
                        parcel.enforceInterface("android.support.customtabs.trusted.ITrustedWebActivityService");
                        Bundle c2 = c();
                        parcel2.writeNoException();
                        parcel2.writeInt(1);
                        c2.writeToParcel(parcel2, 1);
                        return true;
                    default:
                        return super.onTransact(i, parcel, parcel2, i2);
                }
            } else {
                parcel2.writeString("android.support.customtabs.trusted.ITrustedWebActivityService");
                return true;
            }
        }
    }

    Bundle a() throws RemoteException;

    Bundle a(Bundle bundle) throws RemoteException;

    Bundle a(IBinder iBinder) throws RemoteException;

    int b() throws RemoteException;

    Bundle b(Bundle bundle) throws RemoteException;

    Bundle c() throws RemoteException;

    void c(Bundle bundle) throws RemoteException;
}
