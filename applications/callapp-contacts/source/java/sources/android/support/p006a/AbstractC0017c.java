package android.support.p006a;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import android.support.p006a.AbstractC0006a;
/* renamed from: android.support.a.c */
/* loaded from: classes-dex2jar.jar:android/support/a/c.class */
public interface AbstractC0017c extends IInterface {

    /* renamed from: android.support.a.c$a */
    /* loaded from: classes-dex2jar.jar:android/support/a/c$a.class */
    public static abstract class AbstractBinderC0018a extends Binder implements AbstractC0017c {
        public AbstractBinderC0018a() {
            attachInterface(this, "android.support.customtabs.IPostMessageService");
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            Bundle bundle = null;
            if (i == 2) {
                parcel.enforceInterface("android.support.customtabs.IPostMessageService");
                AbstractC0006a m46601a = AbstractC0006a.AbstractBinderC0007a.m46601a(parcel.readStrongBinder());
                Bundle bundle2 = null;
                if (parcel.readInt() != 0) {
                    bundle2 = (Bundle) Bundle.CREATOR.createFromParcel(parcel);
                }
                mo45480a(m46601a, bundle2);
                parcel2.writeNoException();
                return true;
            } else if (i != 3) {
                if (i != 1598968902) {
                    return super.onTransact(i, parcel, parcel2, i2);
                }
                parcel2.writeString("android.support.customtabs.IPostMessageService");
                return true;
            } else {
                parcel.enforceInterface("android.support.customtabs.IPostMessageService");
                AbstractC0006a m46601a2 = AbstractC0006a.AbstractBinderC0007a.m46601a(parcel.readStrongBinder());
                String readString = parcel.readString();
                if (parcel.readInt() != 0) {
                    bundle = (Bundle) Bundle.CREATOR.createFromParcel(parcel);
                }
                mo45479a(m46601a2, readString, bundle);
                parcel2.writeNoException();
                return true;
            }
        }
    }

    /* renamed from: a */
    void mo45480a(AbstractC0006a abstractC0006a, Bundle bundle) throws RemoteException;

    /* renamed from: a */
    void mo45479a(AbstractC0006a abstractC0006a, String str, Bundle bundle) throws RemoteException;
}
