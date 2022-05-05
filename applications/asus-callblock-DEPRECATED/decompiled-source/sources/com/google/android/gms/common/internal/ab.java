package com.google.android.gms.common.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.b.a;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/ab.class */
public interface ab extends IInterface {

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/ab$a.class */
    public static abstract class a extends Binder implements ab {

        /* renamed from: com.google.android.gms.common.internal.ab$a$a  reason: collision with other inner class name */
        /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/ab$a$a.class */
        private static final class C0115a implements ab {

            /* renamed from: a  reason: collision with root package name */
            private IBinder f3998a;

            C0115a(IBinder iBinder) {
                this.f3998a = iBinder;
            }

            @Override // com.google.android.gms.common.internal.ab
            public final com.google.android.gms.b.a a(com.google.android.gms.b.a aVar, int i, int i2) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.common.internal.ISignInButtonCreator");
                    obtain.writeStrongBinder(aVar != null ? aVar.asBinder() : null);
                    obtain.writeInt(i);
                    obtain.writeInt(i2);
                    this.f3998a.transact(1, obtain, obtain2, 0);
                    obtain2.readException();
                    return a.AbstractBinderC0107a.a(obtain2.readStrongBinder());
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.common.internal.ab
            public final com.google.android.gms.b.a a(com.google.android.gms.b.a aVar, SignInButtonConfig signInButtonConfig) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.common.internal.ISignInButtonCreator");
                    obtain.writeStrongBinder(aVar != null ? aVar.asBinder() : null);
                    if (signInButtonConfig != null) {
                        obtain.writeInt(1);
                        signInButtonConfig.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.f3998a.transact(2, obtain, obtain2, 0);
                    obtain2.readException();
                    return a.AbstractBinderC0107a.a(obtain2.readStrongBinder());
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.os.IInterface
            public final IBinder asBinder() {
                return this.f3998a;
            }
        }

        public static ab a(IBinder iBinder) {
            ab aVar;
            if (iBinder == null) {
                aVar = null;
            } else {
                IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.common.internal.ISignInButtonCreator");
                aVar = (queryLocalInterface == null || !(queryLocalInterface instanceof ab)) ? new C0115a(iBinder) : (ab) queryLocalInterface;
            }
            return aVar;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
            boolean z;
            IBinder iBinder = null;
            switch (i) {
                case 1:
                    parcel.enforceInterface("com.google.android.gms.common.internal.ISignInButtonCreator");
                    com.google.android.gms.b.a a2 = a(a.AbstractBinderC0107a.a(parcel.readStrongBinder()), parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeStrongBinder(a2 != null ? a2.asBinder() : null);
                    z = true;
                    break;
                case 2:
                    parcel.enforceInterface("com.google.android.gms.common.internal.ISignInButtonCreator");
                    com.google.android.gms.b.a a3 = a(a.AbstractBinderC0107a.a(parcel.readStrongBinder()), parcel.readInt() != 0 ? SignInButtonConfig.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    if (a3 != null) {
                        iBinder = a3.asBinder();
                    }
                    parcel2.writeStrongBinder(iBinder);
                    z = true;
                    break;
                case 1598968902:
                    parcel2.writeString("com.google.android.gms.common.internal.ISignInButtonCreator");
                    z = true;
                    break;
                default:
                    z = super.onTransact(i, parcel, parcel2, i2);
                    break;
            }
            return z;
        }
    }

    com.google.android.gms.b.a a(com.google.android.gms.b.a aVar, int i, int i2);

    com.google.android.gms.b.a a(com.google.android.gms.b.a aVar, SignInButtonConfig signInButtonConfig);
}
