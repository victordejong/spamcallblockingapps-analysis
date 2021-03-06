package com.bytedance.sdk.openadsdk;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/IBinderPool.class */
public interface IBinderPool extends IInterface {

    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/IBinderPool$Default.class */
    public static class Default implements IBinderPool {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // com.bytedance.sdk.openadsdk.IBinderPool
        public IBinder queryBinder(int i) throws RemoteException {
            return null;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/IBinderPool$Stub.class */
    public static abstract class Stub extends Binder implements IBinderPool {

        /* renamed from: com.bytedance.sdk.openadsdk.IBinderPool$Stub$a */
        /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/IBinderPool$Stub$a.class */
        public static class C4252a implements IBinderPool {

            /* renamed from: a */
            public static IBinderPool f15548a;

            /* renamed from: b */
            private IBinder f15549b;

            C4252a(IBinder iBinder) {
                this.f15549b = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f15549b;
            }

            @Override // com.bytedance.sdk.openadsdk.IBinderPool
            public IBinder queryBinder(int i) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.bytedance.sdk.openadsdk.IBinderPool");
                    obtain.writeInt(i);
                    if (!this.f15549b.transact(1, obtain, obtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().queryBinder(i);
                    }
                    obtain2.readException();
                    return obtain2.readStrongBinder();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }

        public Stub() {
            attachInterface(this, "com.bytedance.sdk.openadsdk.IBinderPool");
        }

        public static IBinderPool asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.bytedance.sdk.openadsdk.IBinderPool");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof IBinderPool)) ? new C4252a(iBinder) : (IBinderPool) queryLocalInterface;
        }

        public static IBinderPool getDefaultImpl() {
            return C4252a.f15548a;
        }

        public static boolean setDefaultImpl(IBinderPool iBinderPool) {
            if (C4252a.f15548a != null || iBinderPool == null) {
                return false;
            }
            C4252a.f15548a = iBinderPool;
            return true;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            if (i != 1) {
                if (i != 1598968902) {
                    return super.onTransact(i, parcel, parcel2, i2);
                }
                parcel2.writeString("com.bytedance.sdk.openadsdk.IBinderPool");
                return true;
            }
            parcel.enforceInterface("com.bytedance.sdk.openadsdk.IBinderPool");
            IBinder queryBinder = queryBinder(parcel.readInt());
            parcel2.writeNoException();
            parcel2.writeStrongBinder(queryBinder);
            return true;
        }
    }

    IBinder queryBinder(int i) throws RemoteException;
}
