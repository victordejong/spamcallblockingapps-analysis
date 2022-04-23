package android.support.v4.os;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes-dex2jar.jar:android/support/v4/os/a.class */
public interface a extends IInterface {

    /* renamed from: android.support.v4.os.a$a  reason: collision with other inner class name */
    /* loaded from: classes-dex2jar.jar:android/support/v4/os/a$a.class */
    public static abstract class AbstractBinderC0012a extends Binder implements a {

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: android.support.v4.os.a$a$a  reason: collision with other inner class name */
        /* loaded from: classes-dex2jar.jar:android/support/v4/os/a$a$a.class */
        public static final class C0013a implements a {

            /* renamed from: a  reason: collision with root package name */
            public static a f486a;

            /* renamed from: b  reason: collision with root package name */
            private IBinder f487b;

            C0013a(IBinder iBinder) {
                this.f487b = iBinder;
            }

            @Override // android.support.v4.os.a
            public final void a(int i, Bundle bundle) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("android.support.v4.os.IResultReceiver");
                    obtain.writeInt(i);
                    if (bundle != null) {
                        obtain.writeInt(1);
                        bundle.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (!this.f487b.transact(1, obtain, null, 1) && AbstractBinderC0012a.a() != null) {
                        AbstractBinderC0012a.a().a(i, bundle);
                    }
                } finally {
                    obtain.recycle();
                }
            }

            @Override // android.os.IInterface
            public final IBinder asBinder() {
                return this.f487b;
            }
        }

        public AbstractBinderC0012a() {
            attachInterface(this, "android.support.v4.os.IResultReceiver");
        }

        public static a a() {
            return C0013a.f486a;
        }

        public static a a(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("android.support.v4.os.IResultReceiver");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof a)) ? new C0013a(iBinder) : (a) queryLocalInterface;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            if (i == 1) {
                parcel.enforceInterface("android.support.v4.os.IResultReceiver");
                a(parcel.readInt(), parcel.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcel) : null);
                return true;
            } else if (i != 1598968902) {
                return super.onTransact(i, parcel, parcel2, i2);
            } else {
                parcel2.writeString("android.support.v4.os.IResultReceiver");
                return true;
            }
        }
    }

    void a(int i, Bundle bundle) throws RemoteException;
}
