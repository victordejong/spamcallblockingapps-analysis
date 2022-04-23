package com.google.android.gms.common.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/aa.class */
public interface aa extends IInterface {

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/aa$a.class */
    public static abstract class a extends Binder implements aa {

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: com.google.android.gms.common.internal.aa$a$a  reason: collision with other inner class name */
        /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/aa$a$a.class */
        public static final class C0114a implements aa {

            /* renamed from: a  reason: collision with root package name */
            private IBinder f3997a;

            public C0114a(IBinder iBinder) {
                this.f3997a = iBinder;
            }

            @Override // com.google.android.gms.common.internal.aa
            public final void a(ResolveAccountResponse resolveAccountResponse) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.common.internal.IResolveAccountCallbacks");
                    if (resolveAccountResponse != null) {
                        obtain.writeInt(1);
                        resolveAccountResponse.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.f3997a.transact(2, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.os.IInterface
            public final IBinder asBinder() {
                return this.f3997a;
            }
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
            boolean z;
            switch (i) {
                case 2:
                    parcel.enforceInterface("com.google.android.gms.common.internal.IResolveAccountCallbacks");
                    a(parcel.readInt() != 0 ? ResolveAccountResponse.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    z = true;
                    break;
                case 1598968902:
                    parcel2.writeString("com.google.android.gms.common.internal.IResolveAccountCallbacks");
                    z = true;
                    break;
                default:
                    z = super.onTransact(i, parcel, parcel2, i2);
                    break;
            }
            return z;
        }
    }

    void a(ResolveAccountResponse resolveAccountResponse);
}
