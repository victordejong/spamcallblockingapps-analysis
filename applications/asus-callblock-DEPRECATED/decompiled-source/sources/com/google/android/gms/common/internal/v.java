package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/v.class */
public interface v extends IInterface {

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/v$a.class */
    public static abstract class a extends Binder implements v {

        /* renamed from: com.google.android.gms.common.internal.v$a$a  reason: collision with other inner class name */
        /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/v$a$a.class */
        private static final class C0117a implements v {

            /* renamed from: a  reason: collision with root package name */
            private IBinder f4041a;

            C0117a(IBinder iBinder) {
                this.f4041a = iBinder;
            }

            @Override // com.google.android.gms.common.internal.v
            public final Account a() {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.common.internal.IAccountAccessor");
                    this.f4041a.transact(2, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt() != 0 ? (Account) Account.CREATOR.createFromParcel(obtain2) : null;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.os.IInterface
            public final IBinder asBinder() {
                return this.f4041a;
            }
        }

        public static v a(IBinder iBinder) {
            v aVar;
            if (iBinder == null) {
                aVar = null;
            } else {
                IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.common.internal.IAccountAccessor");
                aVar = (queryLocalInterface == null || !(queryLocalInterface instanceof v)) ? new C0117a(iBinder) : (v) queryLocalInterface;
            }
            return aVar;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
            boolean z = true;
            switch (i) {
                case 2:
                    parcel.enforceInterface("com.google.android.gms.common.internal.IAccountAccessor");
                    Account a2 = a();
                    parcel2.writeNoException();
                    if (a2 == null) {
                        parcel2.writeInt(0);
                        break;
                    } else {
                        parcel2.writeInt(1);
                        a2.writeToParcel(parcel2, 1);
                        break;
                    }
                case 1598968902:
                    parcel2.writeString("com.google.android.gms.common.internal.IAccountAccessor");
                    break;
                default:
                    z = super.onTransact(i, parcel, parcel2, i2);
                    break;
            }
            return z;
        }
    }

    Account a();
}
