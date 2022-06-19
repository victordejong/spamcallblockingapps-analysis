package com.google.android.p115a.p116a;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
/* renamed from: com.google.android.a.a.a */
/* loaded from: classes-dex2jar.jar:com/google/android/a/a/a.class */
public interface AbstractC2237a extends IInterface {

    /* renamed from: com.google.android.a.a.a$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/a/a/a$a.class */
    public static abstract class AbstractBinderC2238a extends Binder implements AbstractC2237a {

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: com.google.android.a.a.a$a$a */
        /* loaded from: classes-dex2jar.jar:com/google/android/a/a/a$a$a.class */
        public static class C2239a implements AbstractC2237a {

            /* renamed from: a */
            private IBinder f6528a;

            C2239a(IBinder iBinder) {
                this.f6528a = iBinder;
            }

            /* JADX WARN: Finally extract failed */
            @Override // com.google.android.p115a.p116a.AbstractC2237a
            /* renamed from: a */
            public Bundle mo14912a(Bundle bundle) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.finsky.externalreferrer.IGetInstallReferrerService");
                    if (bundle != null) {
                        obtain.writeInt(1);
                        bundle.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.f6528a.transact(1, obtain, obtain2, 0);
                    obtain2.readException();
                    Bundle bundle2 = obtain2.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(obtain2) : null;
                    obtain2.recycle();
                    obtain.recycle();
                    return bundle2;
                } catch (Throwable th) {
                    obtain2.recycle();
                    obtain.recycle();
                    throw th;
                }
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f6528a;
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v8, types: [com.google.android.a.a.a] */
        /* renamed from: a */
        public static AbstractC2237a m14913a(IBinder iBinder) {
            C2239a c2239a;
            if (iBinder == null) {
                c2239a = null;
            } else {
                IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.finsky.externalreferrer.IGetInstallReferrerService");
                c2239a = (queryLocalInterface == null || !(queryLocalInterface instanceof AbstractC2237a)) ? new C2239a(iBinder) : (AbstractC2237a) queryLocalInterface;
            }
            return c2239a;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
            boolean z;
            switch (i) {
                case 1:
                    parcel.enforceInterface("com.google.android.finsky.externalreferrer.IGetInstallReferrerService");
                    Bundle a = mo14912a(parcel.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    if (a != null) {
                        parcel2.writeInt(1);
                        a.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    z = true;
                    break;
                case 1598968902:
                    parcel2.writeString("com.google.android.finsky.externalreferrer.IGetInstallReferrerService");
                    z = true;
                    break;
                default:
                    z = super.onTransact(i, parcel, parcel2, i2);
                    break;
            }
            return z;
        }
    }

    /* renamed from: a */
    Bundle mo14912a(Bundle bundle);
}
