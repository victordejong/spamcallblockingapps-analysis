package com.facebook.ppml.p307a;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
/* renamed from: com.facebook.ppml.a.a */
/* loaded from: classes3-dex2jar.jar:com/facebook/ppml/a/a.class */
public interface AbstractC10400a extends IInterface {

    /* renamed from: com.facebook.ppml.a.a$a */
    /* loaded from: classes3-dex2jar.jar:com/facebook/ppml/a/a$a.class */
    public static abstract class AbstractBinderC10401a extends Binder implements AbstractC10400a {

        /* renamed from: com.facebook.ppml.a.a$a$a */
        /* loaded from: classes3-dex2jar.jar:com/facebook/ppml/a/a$a$a.class */
        public static final class C10402a implements AbstractC10400a {

            /* renamed from: a */
            public static AbstractC10400a f34044a;

            /* renamed from: b */
            private IBinder f34045b;

            C10402a(IBinder iBinder) {
                this.f34045b = iBinder;
            }

            @Override // com.facebook.ppml.p307a.AbstractC10400a
            /* renamed from: a */
            public final int mo22864a(Bundle bundle) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.facebook.ppml.receiver.IReceiverService");
                    if (bundle != null) {
                        obtain.writeInt(1);
                        bundle.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (!this.f34045b.transact(1, obtain, obtain2, 0) && AbstractBinderC10401a.m22866a() != null) {
                        return AbstractBinderC10401a.m22866a().mo22864a(bundle);
                    }
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.os.IInterface
            public final IBinder asBinder() {
                return this.f34045b;
            }
        }

        public AbstractBinderC10401a() {
            attachInterface(this, "com.facebook.ppml.receiver.IReceiverService");
        }

        /* renamed from: a */
        public static AbstractC10400a m22866a() {
            return C10402a.f34044a;
        }

        /* renamed from: a */
        public static AbstractC10400a m22865a(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.facebook.ppml.receiver.IReceiverService");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof AbstractC10400a)) ? new C10402a(iBinder) : (AbstractC10400a) queryLocalInterface;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            if (i != 1) {
                if (i != 1598968902) {
                    return super.onTransact(i, parcel, parcel2, i2);
                }
                parcel2.writeString("com.facebook.ppml.receiver.IReceiverService");
                return true;
            }
            parcel.enforceInterface("com.facebook.ppml.receiver.IReceiverService");
            int a = mo22864a(parcel.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcel) : null);
            parcel2.writeNoException();
            parcel2.writeInt(a);
            return true;
        }
    }

    /* renamed from: a */
    int mo22864a(Bundle bundle) throws RemoteException;
}
