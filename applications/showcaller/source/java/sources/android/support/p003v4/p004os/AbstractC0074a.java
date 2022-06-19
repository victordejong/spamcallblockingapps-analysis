package android.support.p003v4.p004os;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
/* renamed from: android.support.v4.os.a */
/* loaded from: classes-dex2jar.jar:android/support/v4/os/a.class */
public interface AbstractC0074a extends IInterface {

    /* renamed from: android.support.v4.os.a$a */
    /* loaded from: classes-dex2jar.jar:android/support/v4/os/a$a.class */
    public static abstract class AbstractBinderC0075a extends Binder implements AbstractC0074a {

        /* renamed from: android.support.v4.os.a$a$a */
        /* loaded from: classes-dex2jar.jar:android/support/v4/os/a$a$a.class */
        public static class C0076a implements AbstractC0074a {

            /* renamed from: d */
            public static AbstractC0074a f137d;

            /* renamed from: e */
            private IBinder f138e;

            C0076a(IBinder iBinder) {
                this.f138e = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f138e;
            }

            @Override // android.support.p003v4.p004os.AbstractC0074a
            /* renamed from: z6 */
            public void mo35766z6(int i, Bundle bundle) {
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
                    if (this.f138e.transact(1, obtain, null, 1) || AbstractBinderC0075a.m35768D0() == null) {
                        return;
                    }
                    AbstractBinderC0075a.m35768D0().mo35766z6(i, bundle);
                } finally {
                    obtain.recycle();
                }
            }
        }

        public AbstractBinderC0075a() {
            attachInterface(this, "android.support.v4.os.IResultReceiver");
        }

        /* renamed from: D0 */
        public static AbstractC0074a m35768D0() {
            return C0076a.f137d;
        }

        /* renamed from: c0 */
        public static AbstractC0074a m35767c0(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("android.support.v4.os.IResultReceiver");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof AbstractC0074a)) ? new C0076a(iBinder) : (AbstractC0074a) queryLocalInterface;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
            if (i == 1) {
                parcel.enforceInterface("android.support.v4.os.IResultReceiver");
                mo35766z6(parcel.readInt(), parcel.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcel) : null);
                return true;
            } else if (i != 1598968902) {
                return super.onTransact(i, parcel, parcel2, i2);
            } else {
                parcel2.writeString("android.support.v4.os.IResultReceiver");
                return true;
            }
        }
    }

    /* renamed from: z6 */
    void mo35766z6(int i, Bundle bundle);
}
