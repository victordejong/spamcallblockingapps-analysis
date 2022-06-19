package p000a;

import android.net.Uri;
import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
/* renamed from: a.a */
/* loaded from: classes-dex2jar.jar:a/a.class */
public interface AbstractC0000a extends IInterface {

    /* renamed from: a.a$a */
    /* loaded from: classes-dex2jar.jar:a/a$a.class */
    public static abstract class AbstractBinderC0001a extends Binder implements AbstractC0000a {
        public AbstractBinderC0001a() {
            attachInterface(this, "android.support.customtabs.ICustomTabsCallback");
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            if (i == 2) {
                parcel.enforceInterface("android.support.customtabs.ICustomTabsCallback");
                parcel.readInt();
                if (parcel.readInt() != 0) {
                    Bundle bundle = (Bundle) Bundle.CREATOR.createFromParcel(parcel);
                }
                parcel2.writeNoException();
                return true;
            } else if (i == 3) {
                parcel.enforceInterface("android.support.customtabs.ICustomTabsCallback");
                parcel.readString();
                if (parcel.readInt() != 0) {
                    Bundle bundle2 = (Bundle) Bundle.CREATOR.createFromParcel(parcel);
                }
                parcel2.writeNoException();
                return true;
            } else if (i == 4) {
                parcel.enforceInterface("android.support.customtabs.ICustomTabsCallback");
                if (parcel.readInt() != 0) {
                    Bundle bundle3 = (Bundle) Bundle.CREATOR.createFromParcel(parcel);
                }
                parcel2.writeNoException();
                return true;
            } else if (i == 5) {
                parcel.enforceInterface("android.support.customtabs.ICustomTabsCallback");
                parcel.readString();
                if (parcel.readInt() != 0) {
                    Bundle bundle4 = (Bundle) Bundle.CREATOR.createFromParcel(parcel);
                }
                parcel2.writeNoException();
                return true;
            } else if (i != 6) {
                if (i != 1598968902) {
                    return super.onTransact(i, parcel, parcel2, i2);
                }
                parcel2.writeString("android.support.customtabs.ICustomTabsCallback");
                return true;
            } else {
                parcel.enforceInterface("android.support.customtabs.ICustomTabsCallback");
                parcel.readInt();
                if (parcel.readInt() != 0) {
                    Uri uri = (Uri) Uri.CREATOR.createFromParcel(parcel);
                }
                parcel.readInt();
                if (parcel.readInt() != 0) {
                    Bundle bundle5 = (Bundle) Bundle.CREATOR.createFromParcel(parcel);
                }
                parcel2.writeNoException();
                return true;
            }
        }
    }
}
