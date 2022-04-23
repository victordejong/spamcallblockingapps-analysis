package com.tmobile.tmoid.helperlib.impl;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes-dex2jar.jar:com/tmobile/tmoid/helperlib/impl/IHelperLibrary.class */
public interface IHelperLibrary extends IInterface {

    /* loaded from: classes-dex2jar.jar:com/tmobile/tmoid/helperlib/impl/IHelperLibrary$Stub.class */
    public static abstract class Stub extends Binder implements IHelperLibrary {

        /* loaded from: classes-dex2jar.jar:com/tmobile/tmoid/helperlib/impl/IHelperLibrary$Stub$Proxy.class */
        private static class Proxy implements IHelperLibrary {

            /* renamed from: a */
            private IBinder f14766a;

            Proxy(IBinder iBinder) {
                this.f14766a = iBinder;
            }

            @Override // com.tmobile.tmoid.helperlib.impl.IHelperLibrary
            /* renamed from: A0 */
            public String mo5004A0() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.tmobile.tmoid.helperlib.impl.IHelperLibrary");
                    this.f14766a.transact(2, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readString();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tmobile.tmoid.helperlib.impl.IHelperLibrary
            /* renamed from: L */
            public boolean mo5003L() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.tmobile.tmoid.helperlib.impl.IHelperLibrary");
                    boolean z = false;
                    this.f14766a.transact(1, obtain, obtain2, 0);
                    obtain2.readException();
                    if (obtain2.readInt() != 0) {
                        z = true;
                    }
                    return z;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tmobile.tmoid.helperlib.impl.IHelperLibrary
            /* renamed from: M0 */
            public APIResponse mo5002M0(APIRequestForAccessToken aPIRequestForAccessToken) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.tmobile.tmoid.helperlib.impl.IHelperLibrary");
                    if (aPIRequestForAccessToken != null) {
                        obtain.writeInt(1);
                        aPIRequestForAccessToken.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.f14766a.transact(4, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt() != 0 ? APIResponse.CREATOR.createFromParcel(obtain2) : null;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f14766a;
            }

            @Override // com.tmobile.tmoid.helperlib.impl.IHelperLibrary
            /* renamed from: g */
            public ConsumerProfileIPC mo5001g(String str) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.tmobile.tmoid.helperlib.impl.IHelperLibrary");
                    obtain.writeString(str);
                    this.f14766a.transact(5, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt() != 0 ? ConsumerProfileIPC.CREATOR.createFromParcel(obtain2) : null;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tmobile.tmoid.helperlib.impl.IHelperLibrary
            /* renamed from: x */
            public APIResponse mo5000x(APIRequestForAuthorizationCode aPIRequestForAuthorizationCode) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.tmobile.tmoid.helperlib.impl.IHelperLibrary");
                    if (aPIRequestForAuthorizationCode != null) {
                        obtain.writeInt(1);
                        aPIRequestForAuthorizationCode.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.f14766a.transact(3, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt() != 0 ? APIResponse.CREATOR.createFromParcel(obtain2) : null;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }

        public Stub() {
            attachInterface(this, "com.tmobile.tmoid.helperlib.impl.IHelperLibrary");
        }

        /* renamed from: a */
        public static IHelperLibrary m5005a(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.tmobile.tmoid.helperlib.impl.IHelperLibrary");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof IHelperLibrary)) ? new Proxy(iBinder) : (IHelperLibrary) queryLocalInterface;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            if (i == 1) {
                parcel.enforceInterface("com.tmobile.tmoid.helperlib.impl.IHelperLibrary");
                boolean L = mo5003L();
                parcel2.writeNoException();
                parcel2.writeInt(L ? 1 : 0);
                return true;
            } else if (i != 2) {
                APIRequestForAuthorizationCode aPIRequestForAuthorizationCode = null;
                APIRequestForAccessToken aPIRequestForAccessToken = null;
                if (i == 3) {
                    parcel.enforceInterface("com.tmobile.tmoid.helperlib.impl.IHelperLibrary");
                    if (parcel.readInt() != 0) {
                        aPIRequestForAuthorizationCode = APIRequestForAuthorizationCode.CREATOR.createFromParcel(parcel);
                    }
                    APIResponse x = mo5000x(aPIRequestForAuthorizationCode);
                    parcel2.writeNoException();
                    if (x != null) {
                        parcel2.writeInt(1);
                        x.writeToParcel(parcel2, 1);
                        return true;
                    }
                    parcel2.writeInt(0);
                    return true;
                } else if (i == 4) {
                    parcel.enforceInterface("com.tmobile.tmoid.helperlib.impl.IHelperLibrary");
                    if (parcel.readInt() != 0) {
                        aPIRequestForAccessToken = APIRequestForAccessToken.CREATOR.createFromParcel(parcel);
                    }
                    APIResponse M0 = mo5002M0(aPIRequestForAccessToken);
                    parcel2.writeNoException();
                    if (M0 != null) {
                        parcel2.writeInt(1);
                        M0.writeToParcel(parcel2, 1);
                        return true;
                    }
                    parcel2.writeInt(0);
                    return true;
                } else if (i == 5) {
                    parcel.enforceInterface("com.tmobile.tmoid.helperlib.impl.IHelperLibrary");
                    ConsumerProfileIPC g = mo5001g(parcel.readString());
                    parcel2.writeNoException();
                    if (g != null) {
                        parcel2.writeInt(1);
                        g.writeToParcel(parcel2, 1);
                        return true;
                    }
                    parcel2.writeInt(0);
                    return true;
                } else if (i != 1598968902) {
                    return super.onTransact(i, parcel, parcel2, i2);
                } else {
                    parcel2.writeString("com.tmobile.tmoid.helperlib.impl.IHelperLibrary");
                    return true;
                }
            } else {
                parcel.enforceInterface("com.tmobile.tmoid.helperlib.impl.IHelperLibrary");
                String A0 = mo5004A0();
                parcel2.writeNoException();
                parcel2.writeString(A0);
                return true;
            }
        }
    }

    /* renamed from: A0 */
    String mo5004A0() throws RemoteException;

    /* renamed from: L */
    boolean mo5003L() throws RemoteException;

    /* renamed from: M0 */
    APIResponse mo5002M0(APIRequestForAccessToken aPIRequestForAccessToken) throws RemoteException;

    /* renamed from: g */
    ConsumerProfileIPC mo5001g(String str) throws RemoteException;

    /* renamed from: x */
    APIResponse mo5000x(APIRequestForAuthorizationCode aPIRequestForAuthorizationCode) throws RemoteException;
}
