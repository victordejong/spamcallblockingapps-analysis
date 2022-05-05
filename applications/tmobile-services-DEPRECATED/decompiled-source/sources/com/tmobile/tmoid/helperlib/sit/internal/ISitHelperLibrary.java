package com.tmobile.tmoid.helperlib.sit.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes-dex2jar.jar:com/tmobile/tmoid/helperlib/sit/internal/ISitHelperLibrary.class */
public interface ISitHelperLibrary extends IInterface {

    /* loaded from: classes-dex2jar.jar:com/tmobile/tmoid/helperlib/sit/internal/ISitHelperLibrary$Stub.class */
    public static abstract class Stub extends Binder implements ISitHelperLibrary {

        /* JADX INFO: Access modifiers changed from: private */
        /* loaded from: classes-dex2jar.jar:com/tmobile/tmoid/helperlib/sit/internal/ISitHelperLibrary$Stub$Proxy.class */
        public static class Proxy implements ISitHelperLibrary {

            /* renamed from: a */
            private IBinder f14869a;

            Proxy(IBinder iBinder) {
                this.f14869a = iBinder;
            }

            @Override // com.tmobile.tmoid.helperlib.sit.internal.ISitHelperLibrary
            /* renamed from: J */
            public ManageConnectivityAPIResponse mo4755J(String str, ManageConnectivityAPIRequest manageConnectivityAPIRequest) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.tmobile.tmoid.helperlib.sit.internal.ISitHelperLibrary");
                    obtain.writeString(str);
                    if (manageConnectivityAPIRequest != null) {
                        obtain.writeInt(1);
                        manageConnectivityAPIRequest.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.f14869a.transact(3, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt() != 0 ? ManageConnectivityAPIResponse.CREATOR.createFromParcel(obtain2) : null;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tmobile.tmoid.helperlib.sit.internal.ISitHelperLibrary
            /* renamed from: Q */
            public SitAPIResponse mo4754Q(SitAPIRequest sitAPIRequest) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.tmobile.tmoid.helperlib.sit.internal.ISitHelperLibrary");
                    if (sitAPIRequest != null) {
                        obtain.writeInt(1);
                        sitAPIRequest.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.f14869a.transact(1, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt() != 0 ? SitAPIResponse.CREATOR.createFromParcel(obtain2) : null;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tmobile.tmoid.helperlib.sit.internal.ISitHelperLibrary
            /* renamed from: X */
            public ManagePushTokenAPIResponse mo4753X(ManagePushTokenAPIRequest managePushTokenAPIRequest) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.tmobile.tmoid.helperlib.sit.internal.ISitHelperLibrary");
                    if (managePushTokenAPIRequest != null) {
                        obtain.writeInt(1);
                        managePushTokenAPIRequest.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.f14869a.transact(4, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt() != 0 ? ManagePushTokenAPIResponse.CREATOR.createFromParcel(obtain2) : null;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f14869a;
            }

            @Override // com.tmobile.tmoid.helperlib.sit.internal.ISitHelperLibrary
            /* renamed from: e0 */
            public MsisdnDataAPIResponse mo4752e0(String str, MsisdnDataAPIRequest msisdnDataAPIRequest) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.tmobile.tmoid.helperlib.sit.internal.ISitHelperLibrary");
                    obtain.writeString(str);
                    if (msisdnDataAPIRequest != null) {
                        obtain.writeInt(1);
                        msisdnDataAPIRequest.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.f14869a.transact(5, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt() != 0 ? MsisdnDataAPIResponse.CREATOR.createFromParcel(obtain2) : null;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tmobile.tmoid.helperlib.sit.internal.ISitHelperLibrary
            /* renamed from: h */
            public DeprecatedManageConnectivityAPIResponse mo4751h(DeprecatedManageConnectivityAPIRequest deprecatedManageConnectivityAPIRequest) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.tmobile.tmoid.helperlib.sit.internal.ISitHelperLibrary");
                    if (deprecatedManageConnectivityAPIRequest != null) {
                        obtain.writeInt(1);
                        deprecatedManageConnectivityAPIRequest.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.f14869a.transact(2, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt() != 0 ? DeprecatedManageConnectivityAPIResponse.CREATOR.createFromParcel(obtain2) : null;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tmobile.tmoid.helperlib.sit.internal.ISitHelperLibrary
            /* renamed from: o0 */
            public AkaAuthAPIResponse mo4750o0(String str, AkaAuthAPIRequest akaAuthAPIRequest) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.tmobile.tmoid.helperlib.sit.internal.ISitHelperLibrary");
                    obtain.writeString(str);
                    if (akaAuthAPIRequest != null) {
                        obtain.writeInt(1);
                        akaAuthAPIRequest.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.f14869a.transact(6, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt() != 0 ? AkaAuthAPIResponse.CREATOR.createFromParcel(obtain2) : null;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tmobile.tmoid.helperlib.sit.internal.ISitHelperLibrary
            /* renamed from: w0 */
            public void mo4749w0() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.tmobile.tmoid.helperlib.sit.internal.ISitHelperLibrary");
                    this.f14869a.transact(7, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }

        public Stub() {
            attachInterface(this, "com.tmobile.tmoid.helperlib.sit.internal.ISitHelperLibrary");
        }

        /* renamed from: a */
        public static ISitHelperLibrary m4806a(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.tmobile.tmoid.helperlib.sit.internal.ISitHelperLibrary");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof ISitHelperLibrary)) ? new Proxy(iBinder) : (ISitHelperLibrary) queryLocalInterface;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            if (i != 1598968902) {
                MsisdnDataAPIRequest msisdnDataAPIRequest = null;
                ManagePushTokenAPIRequest managePushTokenAPIRequest = null;
                ManageConnectivityAPIRequest manageConnectivityAPIRequest = null;
                DeprecatedManageConnectivityAPIRequest deprecatedManageConnectivityAPIRequest = null;
                SitAPIRequest sitAPIRequest = null;
                AkaAuthAPIRequest akaAuthAPIRequest = null;
                switch (i) {
                    case 1:
                        parcel.enforceInterface("com.tmobile.tmoid.helperlib.sit.internal.ISitHelperLibrary");
                        if (parcel.readInt() != 0) {
                            sitAPIRequest = SitAPIRequest.CREATOR.createFromParcel(parcel);
                        }
                        SitAPIResponse Q = mo4754Q(sitAPIRequest);
                        parcel2.writeNoException();
                        if (Q != null) {
                            parcel2.writeInt(1);
                            Q.writeToParcel(parcel2, 1);
                            return true;
                        }
                        parcel2.writeInt(0);
                        return true;
                    case 2:
                        parcel.enforceInterface("com.tmobile.tmoid.helperlib.sit.internal.ISitHelperLibrary");
                        if (parcel.readInt() != 0) {
                            deprecatedManageConnectivityAPIRequest = DeprecatedManageConnectivityAPIRequest.CREATOR.createFromParcel(parcel);
                        }
                        DeprecatedManageConnectivityAPIResponse h = mo4751h(deprecatedManageConnectivityAPIRequest);
                        parcel2.writeNoException();
                        if (h != null) {
                            parcel2.writeInt(1);
                            h.writeToParcel(parcel2, 1);
                            return true;
                        }
                        parcel2.writeInt(0);
                        return true;
                    case 3:
                        parcel.enforceInterface("com.tmobile.tmoid.helperlib.sit.internal.ISitHelperLibrary");
                        String readString = parcel.readString();
                        if (parcel.readInt() != 0) {
                            manageConnectivityAPIRequest = ManageConnectivityAPIRequest.CREATOR.createFromParcel(parcel);
                        }
                        ManageConnectivityAPIResponse J = mo4755J(readString, manageConnectivityAPIRequest);
                        parcel2.writeNoException();
                        if (J != null) {
                            parcel2.writeInt(1);
                            J.writeToParcel(parcel2, 1);
                            return true;
                        }
                        parcel2.writeInt(0);
                        return true;
                    case 4:
                        parcel.enforceInterface("com.tmobile.tmoid.helperlib.sit.internal.ISitHelperLibrary");
                        if (parcel.readInt() != 0) {
                            managePushTokenAPIRequest = ManagePushTokenAPIRequest.CREATOR.createFromParcel(parcel);
                        }
                        ManagePushTokenAPIResponse X = mo4753X(managePushTokenAPIRequest);
                        parcel2.writeNoException();
                        if (X != null) {
                            parcel2.writeInt(1);
                            X.writeToParcel(parcel2, 1);
                            return true;
                        }
                        parcel2.writeInt(0);
                        return true;
                    case 5:
                        parcel.enforceInterface("com.tmobile.tmoid.helperlib.sit.internal.ISitHelperLibrary");
                        String readString2 = parcel.readString();
                        if (parcel.readInt() != 0) {
                            msisdnDataAPIRequest = MsisdnDataAPIRequest.CREATOR.createFromParcel(parcel);
                        }
                        MsisdnDataAPIResponse e0 = mo4752e0(readString2, msisdnDataAPIRequest);
                        parcel2.writeNoException();
                        if (e0 != null) {
                            parcel2.writeInt(1);
                            e0.writeToParcel(parcel2, 1);
                            return true;
                        }
                        parcel2.writeInt(0);
                        return true;
                    case 6:
                        parcel.enforceInterface("com.tmobile.tmoid.helperlib.sit.internal.ISitHelperLibrary");
                        String readString3 = parcel.readString();
                        if (parcel.readInt() != 0) {
                            akaAuthAPIRequest = AkaAuthAPIRequest.CREATOR.createFromParcel(parcel);
                        }
                        AkaAuthAPIResponse o0 = mo4750o0(readString3, akaAuthAPIRequest);
                        parcel2.writeNoException();
                        if (o0 != null) {
                            parcel2.writeInt(1);
                            o0.writeToParcel(parcel2, 1);
                            return true;
                        }
                        parcel2.writeInt(0);
                        return true;
                    case 7:
                        parcel.enforceInterface("com.tmobile.tmoid.helperlib.sit.internal.ISitHelperLibrary");
                        mo4749w0();
                        parcel2.writeNoException();
                        return true;
                    default:
                        return super.onTransact(i, parcel, parcel2, i2);
                }
            } else {
                parcel2.writeString("com.tmobile.tmoid.helperlib.sit.internal.ISitHelperLibrary");
                return true;
            }
        }
    }

    /* renamed from: J */
    ManageConnectivityAPIResponse mo4755J(String str, ManageConnectivityAPIRequest manageConnectivityAPIRequest) throws RemoteException;

    /* renamed from: Q */
    SitAPIResponse mo4754Q(SitAPIRequest sitAPIRequest) throws RemoteException;

    /* renamed from: X */
    ManagePushTokenAPIResponse mo4753X(ManagePushTokenAPIRequest managePushTokenAPIRequest) throws RemoteException;

    /* renamed from: e0 */
    MsisdnDataAPIResponse mo4752e0(String str, MsisdnDataAPIRequest msisdnDataAPIRequest) throws RemoteException;

    /* renamed from: h */
    DeprecatedManageConnectivityAPIResponse mo4751h(DeprecatedManageConnectivityAPIRequest deprecatedManageConnectivityAPIRequest) throws RemoteException;

    /* renamed from: o0 */
    AkaAuthAPIResponse mo4750o0(String str, AkaAuthAPIRequest akaAuthAPIRequest) throws RemoteException;

    /* renamed from: w0 */
    void mo4749w0() throws RemoteException;
}
