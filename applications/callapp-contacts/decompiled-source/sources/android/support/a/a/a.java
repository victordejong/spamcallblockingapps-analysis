package android.support.a.a;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes-dex2jar.jar:android/support/a/a/a.class */
public interface a extends IInterface {

    /* renamed from: android.support.a.a.a$a  reason: collision with other inner class name */
    /* loaded from: classes-dex2jar.jar:android/support/a/a/a$a.class */
    public static abstract class AbstractBinderC0003a extends Binder implements a {

        /* renamed from: android.support.a.a.a$a$a  reason: collision with other inner class name */
        /* loaded from: classes-dex2jar.jar:android/support/a/a/a$a$a.class */
        public static final class C0004a implements a {

            /* renamed from: a  reason: collision with root package name */
            public static a f380a;

            /* renamed from: b  reason: collision with root package name */
            private IBinder f381b;

            public C0004a(IBinder iBinder) {
                this.f381b = iBinder;
            }

            @Override // android.support.a.a.a
            public final void a(String str, Bundle bundle) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("android.support.customtabs.trusted.ITrustedWebActivityCallback");
                    obtain.writeString(str);
                    if (bundle != null) {
                        obtain.writeInt(1);
                        bundle.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (this.f381b.transact(2, obtain, obtain2, 0) || AbstractBinderC0003a.a() == null) {
                        obtain2.readException();
                    } else {
                        AbstractBinderC0003a.a().a(str, bundle);
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.os.IInterface
            public final IBinder asBinder() {
                return this.f381b;
            }
        }

        public AbstractBinderC0003a() {
            attachInterface(this, "android.support.customtabs.trusted.ITrustedWebActivityCallback");
        }

        public static a a() {
            return C0004a.f380a;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            if (i == 2) {
                parcel.enforceInterface("android.support.customtabs.trusted.ITrustedWebActivityCallback");
                a(parcel.readString(), parcel.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcel) : null);
                parcel2.writeNoException();
                return true;
            } else if (i != 1598968902) {
                return super.onTransact(i, parcel, parcel2, i2);
            } else {
                parcel2.writeString("android.support.customtabs.trusted.ITrustedWebActivityCallback");
                return true;
            }
        }
    }

    void a(String str, Bundle bundle) throws RemoteException;
}
