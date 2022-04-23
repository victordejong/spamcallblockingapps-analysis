package p000a.p001a.p002a;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import p000a.p001a.p002a.AbstractC0000a;
/* renamed from: a.a.a.c */
/* loaded from: classes-dex2jar.jar:a/a/a/c.class */
public interface AbstractC0005c extends IInterface {

    /* renamed from: a.a.a.c$a */
    /* loaded from: classes-dex2jar.jar:a/a/a/c$a.class */
    public static abstract class AbstractBinderC0006a extends Binder implements AbstractC0005c {
        public AbstractBinderC0006a() {
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
                AbstractC0000a a = AbstractC0000a.AbstractBinderC0001a.m39341a(parcel.readStrongBinder());
                if (parcel.readInt() != 0) {
                    bundle = (Bundle) Bundle.CREATOR.createFromParcel(parcel);
                }
                mo38819a(a, bundle);
                parcel2.writeNoException();
                return true;
            } else if (i == 3) {
                parcel.enforceInterface("android.support.customtabs.IPostMessageService");
                AbstractC0000a a2 = AbstractC0000a.AbstractBinderC0001a.m39341a(parcel.readStrongBinder());
                String readString = parcel.readString();
                if (parcel.readInt() != 0) {
                    bundle2 = (Bundle) Bundle.CREATOR.createFromParcel(parcel);
                }
                mo38818a(a2, readString, bundle2);
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

    /* renamed from: a */
    void mo38819a(AbstractC0000a aVar, Bundle bundle) throws RemoteException;

    /* renamed from: a */
    void mo38818a(AbstractC0000a aVar, String str, Bundle bundle) throws RemoteException;
}
