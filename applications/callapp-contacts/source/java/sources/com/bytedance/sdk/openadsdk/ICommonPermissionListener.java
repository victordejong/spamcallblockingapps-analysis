package com.bytedance.sdk.openadsdk;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/ICommonPermissionListener.class */
public interface ICommonPermissionListener extends IInterface {

    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/ICommonPermissionListener$Default.class */
    public static class Default implements ICommonPermissionListener {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // com.bytedance.sdk.openadsdk.ICommonPermissionListener
        public void onDenied(String str) throws RemoteException {
        }

        @Override // com.bytedance.sdk.openadsdk.ICommonPermissionListener
        public void onGranted() throws RemoteException {
        }
    }

    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/ICommonPermissionListener$Stub.class */
    public static abstract class Stub extends Binder implements ICommonPermissionListener {

        /* renamed from: com.bytedance.sdk.openadsdk.ICommonPermissionListener$Stub$a */
        /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/ICommonPermissionListener$Stub$a.class */
        public static class C4254a implements ICommonPermissionListener {

            /* renamed from: a */
            public static ICommonPermissionListener f15552a;

            /* renamed from: b */
            private IBinder f15553b;

            C4254a(IBinder iBinder) {
                this.f15553b = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f15553b;
            }

            @Override // com.bytedance.sdk.openadsdk.ICommonPermissionListener
            public void onDenied(String str) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.bytedance.sdk.openadsdk.ICommonPermissionListener");
                    obtain.writeString(str);
                    if (this.f15553b.transact(2, obtain, obtain2, 0) || Stub.getDefaultImpl() == null) {
                        obtain2.readException();
                    } else {
                        Stub.getDefaultImpl().onDenied(str);
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.bytedance.sdk.openadsdk.ICommonPermissionListener
            public void onGranted() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.bytedance.sdk.openadsdk.ICommonPermissionListener");
                    if (this.f15553b.transact(1, obtain, obtain2, 0) || Stub.getDefaultImpl() == null) {
                        obtain2.readException();
                    } else {
                        Stub.getDefaultImpl().onGranted();
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }

        public Stub() {
            attachInterface(this, "com.bytedance.sdk.openadsdk.ICommonPermissionListener");
        }

        public static ICommonPermissionListener asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.bytedance.sdk.openadsdk.ICommonPermissionListener");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof ICommonPermissionListener)) ? new C4254a(iBinder) : (ICommonPermissionListener) queryLocalInterface;
        }

        public static ICommonPermissionListener getDefaultImpl() {
            return C4254a.f15552a;
        }

        public static boolean setDefaultImpl(ICommonPermissionListener iCommonPermissionListener) {
            if (C4254a.f15552a != null || iCommonPermissionListener == null) {
                return false;
            }
            C4254a.f15552a = iCommonPermissionListener;
            return true;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            if (i == 1) {
                parcel.enforceInterface("com.bytedance.sdk.openadsdk.ICommonPermissionListener");
                onGranted();
                parcel2.writeNoException();
                return true;
            } else if (i != 2) {
                if (i != 1598968902) {
                    return super.onTransact(i, parcel, parcel2, i2);
                }
                parcel2.writeString("com.bytedance.sdk.openadsdk.ICommonPermissionListener");
                return true;
            } else {
                parcel.enforceInterface("com.bytedance.sdk.openadsdk.ICommonPermissionListener");
                onDenied(parcel.readString());
                parcel2.writeNoException();
                return true;
            }
        }
    }

    void onDenied(String str) throws RemoteException;

    void onGranted() throws RemoteException;
}
