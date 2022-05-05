package com.google.android.gms.common.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/x.class */
public interface x extends IInterface {

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/x$a.class */
    public static abstract class a extends Binder implements x {
        public a() {
            attachInterface(this, "com.google.android.gms.common.internal.ICertData");
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
            boolean z;
            switch (i) {
                case 1:
                    parcel.enforceInterface("com.google.android.gms.common.internal.ICertData");
                    com.google.android.gms.b.a a2 = a();
                    parcel2.writeNoException();
                    parcel2.writeStrongBinder(a2 != null ? a2.asBinder() : null);
                    z = true;
                    break;
                case 2:
                    parcel.enforceInterface("com.google.android.gms.common.internal.ICertData");
                    int b2 = b();
                    parcel2.writeNoException();
                    parcel2.writeInt(b2);
                    z = true;
                    break;
                case 1598968902:
                    parcel2.writeString("com.google.android.gms.common.internal.ICertData");
                    z = true;
                    break;
                default:
                    z = super.onTransact(i, parcel, parcel2, i2);
                    break;
            }
            return z;
        }
    }

    com.google.android.gms.b.a a();

    int b();
}
