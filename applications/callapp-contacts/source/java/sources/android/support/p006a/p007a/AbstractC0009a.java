package android.support.p006a.p007a;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
/* renamed from: android.support.a.a.a */
/* loaded from: classes-dex2jar.jar:android/support/a/a/a.class */
public interface AbstractC0009a extends IInterface {

    /* renamed from: android.support.a.a.a$a */
    /* loaded from: classes-dex2jar.jar:android/support/a/a/a$a.class */
    public static abstract class AbstractBinderC0010a extends Binder implements AbstractC0009a {

        /* renamed from: android.support.a.a.a$a$a */
        /* loaded from: classes-dex2jar.jar:android/support/a/a/a$a$a.class */
        public static final class C0011a implements AbstractC0009a {

            /* renamed from: a */
            public static AbstractC0009a f15a;

            /* renamed from: b */
            private IBinder f16b;

            public C0011a(IBinder iBinder) {
                this.f16b = iBinder;
            }

            @Override // android.support.p006a.p007a.AbstractC0009a
            /* renamed from: a */
            public final void mo46599a(String str, Bundle bundle) throws RemoteException {
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
                    if (this.f16b.transact(2, obtain, obtain2, 0) || AbstractBinderC0010a.m46600a() == null) {
                        obtain2.readException();
                    } else {
                        AbstractBinderC0010a.m46600a().mo46599a(str, bundle);
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.os.IInterface
            public final IBinder asBinder() {
                return this.f16b;
            }
        }

        public AbstractBinderC0010a() {
            attachInterface(this, "android.support.customtabs.trusted.ITrustedWebActivityCallback");
        }

        /* renamed from: a */
        public static AbstractC0009a m46600a() {
            return C0011a.f15a;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            if (i != 2) {
                if (i != 1598968902) {
                    return super.onTransact(i, parcel, parcel2, i2);
                }
                parcel2.writeString("android.support.customtabs.trusted.ITrustedWebActivityCallback");
                return true;
            }
            parcel.enforceInterface("android.support.customtabs.trusted.ITrustedWebActivityCallback");
            mo46599a(parcel.readString(), parcel.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcel) : null);
            parcel2.writeNoException();
            return true;
        }
    }

    /* renamed from: a */
    void mo46599a(String str, Bundle bundle) throws RemoteException;
}
