package android.support.a;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import android.support.a.a;
/* loaded from: classes-dex2jar.jar:android/support/a/c.class */
public interface c extends IInterface {

    /* loaded from: classes-dex2jar.jar:android/support/a/c$a.class */
    public static abstract class a extends Binder implements c {
        public a() {
            attachInterface(this, "android.support.customtabs.IPostMessageService");
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            Bundle bundle = null;
            Bundle bundle2 = null;
            if (i == 2) {
                parcel.enforceInterface("android.support.customtabs.IPostMessageService");
                android.support.a.a a2 = a.AbstractBinderC0001a.a(parcel.readStrongBinder());
                if (parcel.readInt() != 0) {
                    bundle = (Bundle) Bundle.CREATOR.createFromParcel(parcel);
                }
                a(a2, bundle);
                parcel2.writeNoException();
                return true;
            } else if (i == 3) {
                parcel.enforceInterface("android.support.customtabs.IPostMessageService");
                android.support.a.a a3 = a.AbstractBinderC0001a.a(parcel.readStrongBinder());
                String readString = parcel.readString();
                if (parcel.readInt() != 0) {
                    bundle2 = (Bundle) Bundle.CREATOR.createFromParcel(parcel);
                }
                a(a3, readString, bundle2);
                parcel2.writeNoException();
                return true;
            } else if (i != 1598968902) {
                return super.onTransact(i, parcel, parcel2, i2);
            } else {
                parcel2.writeString("android.support.customtabs.IPostMessageService");
                return true;
            }
        }
    }

    void a(android.support.a.a aVar, Bundle bundle) throws RemoteException;

    void a(android.support.a.a aVar, String str, Bundle bundle) throws RemoteException;
}
