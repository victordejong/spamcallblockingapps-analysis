package android.support.p008v4.p009os;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
/* renamed from: android.support.v4.os.a */
/* loaded from: classes-dex2jar.jar:android/support/v4/os/a.class */
public interface AbstractC0094a extends IInterface {

    /* renamed from: android.support.v4.os.a$a */
    /* loaded from: classes-dex2jar.jar:android/support/v4/os/a$a.class */
    public static abstract class AbstractBinderC0095a extends Binder implements AbstractC0094a {

        /* renamed from: android.support.v4.os.a$a$a */
        /* loaded from: classes-dex2jar.jar:android/support/v4/os/a$a$a.class */
        public static final class C0096a implements AbstractC0094a {

            /* renamed from: a */
            public static AbstractC0094a f192a;

            /* renamed from: b */
            private IBinder f193b;

            C0096a(IBinder iBinder) {
                this.f193b = iBinder;
            }

            @Override // android.support.p008v4.p009os.AbstractC0094a
            /* renamed from: a */
            public final void mo46412a(int i, Bundle bundle) throws RemoteException {
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
                    if (this.f193b.transact(1, obtain, null, 1) || AbstractBinderC0095a.m46414a() == null) {
                        return;
                    }
                    AbstractBinderC0095a.m46414a().mo46412a(i, bundle);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // android.os.IInterface
            public final IBinder asBinder() {
                return this.f193b;
            }
        }

        public AbstractBinderC0095a() {
            attachInterface(this, "android.support.v4.os.IResultReceiver");
        }

        /* renamed from: a */
        public static AbstractC0094a m46414a() {
            return C0096a.f192a;
        }

        /* renamed from: a */
        public static AbstractC0094a m46413a(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("android.support.v4.os.IResultReceiver");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof AbstractC0094a)) ? new C0096a(iBinder) : (AbstractC0094a) queryLocalInterface;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            if (i == 1) {
                parcel.enforceInterface("android.support.v4.os.IResultReceiver");
                mo46412a(parcel.readInt(), parcel.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcel) : null);
                return true;
            } else if (i != 1598968902) {
                return super.onTransact(i, parcel, parcel2, i2);
            } else {
                parcel2.writeString("android.support.v4.os.IResultReceiver");
                return true;
            }
        }
    }

    /* renamed from: a */
    void mo46412a(int i, Bundle bundle) throws RemoteException;
}
