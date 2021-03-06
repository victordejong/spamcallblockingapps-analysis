package com.bytedance.sdk.openadsdk;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/IRewardAdInteractionListener.class */
public interface IRewardAdInteractionListener extends IInterface {

    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/IRewardAdInteractionListener$Default.class */
    public static class Default implements IRewardAdInteractionListener {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // com.bytedance.sdk.openadsdk.IRewardAdInteractionListener
        public void onAdClose() throws RemoteException {
        }

        @Override // com.bytedance.sdk.openadsdk.IRewardAdInteractionListener
        public void onAdShow() throws RemoteException {
        }

        @Override // com.bytedance.sdk.openadsdk.IRewardAdInteractionListener
        public void onAdVideoBarClick() throws RemoteException {
        }

        @Override // com.bytedance.sdk.openadsdk.IRewardAdInteractionListener
        public void onDestroy() throws RemoteException {
        }

        @Override // com.bytedance.sdk.openadsdk.IRewardAdInteractionListener
        public void onRewardVerify(boolean z, int i, String str) throws RemoteException {
        }

        @Override // com.bytedance.sdk.openadsdk.IRewardAdInteractionListener
        public void onSkippedVideo() throws RemoteException {
        }

        @Override // com.bytedance.sdk.openadsdk.IRewardAdInteractionListener
        public void onVideoComplete() throws RemoteException {
        }

        @Override // com.bytedance.sdk.openadsdk.IRewardAdInteractionListener
        public void onVideoError() throws RemoteException {
        }
    }

    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/IRewardAdInteractionListener$Stub.class */
    public static abstract class Stub extends Binder implements IRewardAdInteractionListener {

        /* renamed from: com.bytedance.sdk.openadsdk.IRewardAdInteractionListener$Stub$a */
        /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/IRewardAdInteractionListener$Stub$a.class */
        public static class C4257a implements IRewardAdInteractionListener {

            /* renamed from: a */
            public static IRewardAdInteractionListener f15558a;

            /* renamed from: b */
            private IBinder f15559b;

            C4257a(IBinder iBinder) {
                this.f15559b = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f15559b;
            }

            @Override // com.bytedance.sdk.openadsdk.IRewardAdInteractionListener
            public void onAdClose() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.bytedance.sdk.openadsdk.IRewardAdInteractionListener");
                    if (this.f15559b.transact(4, obtain, obtain2, 0) || Stub.getDefaultImpl() == null) {
                        obtain2.readException();
                    } else {
                        Stub.getDefaultImpl().onAdClose();
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.bytedance.sdk.openadsdk.IRewardAdInteractionListener
            public void onAdShow() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.bytedance.sdk.openadsdk.IRewardAdInteractionListener");
                    if (this.f15559b.transact(2, obtain, obtain2, 0) || Stub.getDefaultImpl() == null) {
                        obtain2.readException();
                    } else {
                        Stub.getDefaultImpl().onAdShow();
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.bytedance.sdk.openadsdk.IRewardAdInteractionListener
            public void onAdVideoBarClick() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.bytedance.sdk.openadsdk.IRewardAdInteractionListener");
                    if (this.f15559b.transact(3, obtain, obtain2, 0) || Stub.getDefaultImpl() == null) {
                        obtain2.readException();
                    } else {
                        Stub.getDefaultImpl().onAdVideoBarClick();
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.bytedance.sdk.openadsdk.IRewardAdInteractionListener
            public void onDestroy() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.bytedance.sdk.openadsdk.IRewardAdInteractionListener");
                    if (this.f15559b.transact(1, obtain, obtain2, 0) || Stub.getDefaultImpl() == null) {
                        obtain2.readException();
                    } else {
                        Stub.getDefaultImpl().onDestroy();
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.bytedance.sdk.openadsdk.IRewardAdInteractionListener
            public void onRewardVerify(boolean z, int i, String str) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.bytedance.sdk.openadsdk.IRewardAdInteractionListener");
                    obtain.writeInt(z ? 1 : 0);
                    obtain.writeInt(i);
                    obtain.writeString(str);
                    if (this.f15559b.transact(7, obtain, obtain2, 0) || Stub.getDefaultImpl() == null) {
                        obtain2.readException();
                    } else {
                        Stub.getDefaultImpl().onRewardVerify(z, i, str);
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.bytedance.sdk.openadsdk.IRewardAdInteractionListener
            public void onSkippedVideo() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.bytedance.sdk.openadsdk.IRewardAdInteractionListener");
                    if (this.f15559b.transact(8, obtain, obtain2, 0) || Stub.getDefaultImpl() == null) {
                        obtain2.readException();
                    } else {
                        Stub.getDefaultImpl().onSkippedVideo();
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.bytedance.sdk.openadsdk.IRewardAdInteractionListener
            public void onVideoComplete() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.bytedance.sdk.openadsdk.IRewardAdInteractionListener");
                    if (this.f15559b.transact(5, obtain, obtain2, 0) || Stub.getDefaultImpl() == null) {
                        obtain2.readException();
                    } else {
                        Stub.getDefaultImpl().onVideoComplete();
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.bytedance.sdk.openadsdk.IRewardAdInteractionListener
            public void onVideoError() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.bytedance.sdk.openadsdk.IRewardAdInteractionListener");
                    if (this.f15559b.transact(6, obtain, obtain2, 0) || Stub.getDefaultImpl() == null) {
                        obtain2.readException();
                    } else {
                        Stub.getDefaultImpl().onVideoError();
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }

        public Stub() {
            attachInterface(this, "com.bytedance.sdk.openadsdk.IRewardAdInteractionListener");
        }

        public static IRewardAdInteractionListener asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.bytedance.sdk.openadsdk.IRewardAdInteractionListener");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof IRewardAdInteractionListener)) ? new C4257a(iBinder) : (IRewardAdInteractionListener) queryLocalInterface;
        }

        public static IRewardAdInteractionListener getDefaultImpl() {
            return C4257a.f15558a;
        }

        public static boolean setDefaultImpl(IRewardAdInteractionListener iRewardAdInteractionListener) {
            if (C4257a.f15558a != null || iRewardAdInteractionListener == null) {
                return false;
            }
            C4257a.f15558a = iRewardAdInteractionListener;
            return true;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            if (i == 1598968902) {
                parcel2.writeString("com.bytedance.sdk.openadsdk.IRewardAdInteractionListener");
                return true;
            }
            switch (i) {
                case 1:
                    parcel.enforceInterface("com.bytedance.sdk.openadsdk.IRewardAdInteractionListener");
                    onDestroy();
                    parcel2.writeNoException();
                    return true;
                case 2:
                    parcel.enforceInterface("com.bytedance.sdk.openadsdk.IRewardAdInteractionListener");
                    onAdShow();
                    parcel2.writeNoException();
                    return true;
                case 3:
                    parcel.enforceInterface("com.bytedance.sdk.openadsdk.IRewardAdInteractionListener");
                    onAdVideoBarClick();
                    parcel2.writeNoException();
                    return true;
                case 4:
                    parcel.enforceInterface("com.bytedance.sdk.openadsdk.IRewardAdInteractionListener");
                    onAdClose();
                    parcel2.writeNoException();
                    return true;
                case 5:
                    parcel.enforceInterface("com.bytedance.sdk.openadsdk.IRewardAdInteractionListener");
                    onVideoComplete();
                    parcel2.writeNoException();
                    return true;
                case 6:
                    parcel.enforceInterface("com.bytedance.sdk.openadsdk.IRewardAdInteractionListener");
                    onVideoError();
                    parcel2.writeNoException();
                    return true;
                case 7:
                    parcel.enforceInterface("com.bytedance.sdk.openadsdk.IRewardAdInteractionListener");
                    onRewardVerify(parcel.readInt() != 0, parcel.readInt(), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 8:
                    parcel.enforceInterface("com.bytedance.sdk.openadsdk.IRewardAdInteractionListener");
                    onSkippedVideo();
                    parcel2.writeNoException();
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }
    }

    void onAdClose() throws RemoteException;

    void onAdShow() throws RemoteException;

    void onAdVideoBarClick() throws RemoteException;

    void onDestroy() throws RemoteException;

    void onRewardVerify(boolean z, int i, String str) throws RemoteException;

    void onSkippedVideo() throws RemoteException;

    void onVideoComplete() throws RemoteException;

    void onVideoError() throws RemoteException;
}
