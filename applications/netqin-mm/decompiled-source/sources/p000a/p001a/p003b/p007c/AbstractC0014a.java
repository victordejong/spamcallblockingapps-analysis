package p000a.p001a.p003b.p007c;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
/* renamed from: a.a.b.c.a */
/* loaded from: classes-dex2jar.jar:a/a/b/c/a.class */
public interface AbstractC0014a extends IInterface {

    /* renamed from: a.a.b.c.a$a */
    /* loaded from: classes-dex2jar.jar:a/a/b/c/a$a.class */
    public static abstract class AbstractBinderC0015a extends Binder implements AbstractC0014a {

        /* renamed from: a.a.b.c.a$a$a */
        /* loaded from: classes-dex2jar.jar:a/a/b/c/a$a$a.class */
        public static class C0016a implements AbstractC0014a {

            /* renamed from: b */
            public static AbstractC0014a f2b;

            /* renamed from: a */
            public IBinder f3a;

            public C0016a(IBinder iBinder) {
                this.f3a = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f3a;
            }

            @Override // p000a.p001a.p003b.p007c.AbstractC0014a
            /* renamed from: b */
            public void mo39229b(int i, Bundle bundle) throws RemoteException {
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
                    if (!this.f3a.transact(1, obtain, null, 1) && AbstractBinderC0015a.m39335W() != null) {
                        AbstractBinderC0015a.m39335W().mo39229b(i, bundle);
                    }
                } finally {
                    obtain.recycle();
                }
            }
        }

        public AbstractBinderC0015a() {
            attachInterface(this, "android.support.v4.os.IResultReceiver");
        }

        /* renamed from: W */
        public static AbstractC0014a m39335W() {
            return C0016a.f2b;
        }

        /* renamed from: a */
        public static AbstractC0014a m39334a(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("android.support.v4.os.IResultReceiver");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof AbstractC0014a)) ? new C0016a(iBinder) : (AbstractC0014a) queryLocalInterface;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            if (i == 1) {
                parcel.enforceInterface("android.support.v4.os.IResultReceiver");
                mo39229b(parcel.readInt(), parcel.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcel) : null);
                return true;
            } else if (i != 1598968902) {
                return super.onTransact(i, parcel, parcel2, i2);
            } else {
                parcel2.writeString("android.support.v4.os.IResultReceiver");
                return true;
            }
        }
    }

    /* renamed from: b */
    void mo39229b(int i, Bundle bundle) throws RemoteException;
}
