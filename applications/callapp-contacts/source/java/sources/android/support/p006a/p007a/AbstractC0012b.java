package android.support.p006a.p007a;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
/* renamed from: android.support.a.a.b */
/* loaded from: classes-dex2jar.jar:android/support/a/a/b.class */
public interface AbstractC0012b extends IInterface {

    /* renamed from: android.support.a.a.b$a */
    /* loaded from: classes-dex2jar.jar:android/support/a/a/b$a.class */
    public static abstract class AbstractBinderC0013a extends Binder implements AbstractC0012b {
        public AbstractBinderC0013a() {
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
                mo45450a(parcel.readStrongBinder());
                parcel2.writeNoException();
                parcel2.writeInt(0);
                return true;
            } else if (i == 1598968902) {
                parcel2.writeString("android.support.customtabs.trusted.ITrustedWebActivityService");
                return true;
            } else {
                Bundle bundle = null;
                switch (i) {
                    case 2:
                        parcel.enforceInterface("android.support.customtabs.trusted.ITrustedWebActivityService");
                        Bundle bundle2 = null;
                        if (parcel.readInt() != 0) {
                            bundle2 = (Bundle) Bundle.CREATOR.createFromParcel(parcel);
                        }
                        Bundle b = mo45448b(bundle2);
                        parcel2.writeNoException();
                        if (b == null) {
                            parcel2.writeInt(0);
                            return true;
                        }
                        parcel2.writeInt(1);
                        b.writeToParcel(parcel2, 1);
                        return true;
                    case 3:
                        parcel.enforceInterface("android.support.customtabs.trusted.ITrustedWebActivityService");
                        Bundle bundle3 = null;
                        if (parcel.readInt() != 0) {
                            bundle3 = (Bundle) Bundle.CREATOR.createFromParcel(parcel);
                        }
                        mo45446c(bundle3);
                        parcel2.writeNoException();
                        return true;
                    case 4:
                        parcel.enforceInterface("android.support.customtabs.trusted.ITrustedWebActivityService");
                        int b2 = mo45449b();
                        parcel2.writeNoException();
                        parcel2.writeInt(b2);
                        return true;
                    case 5:
                        parcel.enforceInterface("android.support.customtabs.trusted.ITrustedWebActivityService");
                        Bundle a = mo45452a();
                        parcel2.writeNoException();
                        parcel2.writeInt(1);
                        a.writeToParcel(parcel2, 1);
                        return true;
                    case 6:
                        parcel.enforceInterface("android.support.customtabs.trusted.ITrustedWebActivityService");
                        if (parcel.readInt() != 0) {
                            bundle = (Bundle) Bundle.CREATOR.createFromParcel(parcel);
                        }
                        Bundle a2 = mo45451a(bundle);
                        parcel2.writeNoException();
                        if (a2 == null) {
                            parcel2.writeInt(0);
                            return true;
                        }
                        parcel2.writeInt(1);
                        a2.writeToParcel(parcel2, 1);
                        return true;
                    case 7:
                        parcel.enforceInterface("android.support.customtabs.trusted.ITrustedWebActivityService");
                        Bundle c = mo45447c();
                        parcel2.writeNoException();
                        parcel2.writeInt(1);
                        c.writeToParcel(parcel2, 1);
                        return true;
                    default:
                        return super.onTransact(i, parcel, parcel2, i2);
                }
            }
        }
    }

    /* renamed from: a */
    Bundle mo45452a() throws RemoteException;

    /* renamed from: a */
    Bundle mo45451a(Bundle bundle) throws RemoteException;

    /* renamed from: a */
    Bundle mo45450a(IBinder iBinder) throws RemoteException;

    /* renamed from: b */
    int mo45449b() throws RemoteException;

    /* renamed from: b */
    Bundle mo45448b(Bundle bundle) throws RemoteException;

    /* renamed from: c */
    Bundle mo45447c() throws RemoteException;

    /* renamed from: c */
    void mo45446c(Bundle bundle) throws RemoteException;
}
