package com.google.android.gms.iid;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Message;
import android.os.Parcel;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/iid/a.class */
public interface a extends IInterface {

    /* renamed from: com.google.android.gms.iid.a$a  reason: collision with other inner class name */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/iid/a$a.class */
    public static abstract class AbstractBinderC0120a extends Binder implements a {

        /* renamed from: com.google.android.gms.iid.a$a$a  reason: collision with other inner class name */
        /* loaded from: classes-dex2jar.jar:com/google/android/gms/iid/a$a$a.class */
        private static final class C0121a implements a {

            /* renamed from: a  reason: collision with root package name */
            private IBinder f4092a;

            C0121a(IBinder iBinder) {
                this.f4092a = iBinder;
            }

            @Override // com.google.android.gms.iid.a
            public final void a(Message message) {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.iid.IMessengerCompat");
                    if (message != null) {
                        obtain.writeInt(1);
                        message.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.f4092a.transact(1, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // android.os.IInterface
            public final IBinder asBinder() {
                return this.f4092a;
            }
        }

        public static a a(IBinder iBinder) {
            a aVar;
            if (iBinder == null) {
                aVar = null;
            } else {
                IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.iid.IMessengerCompat");
                aVar = (queryLocalInterface == null || !(queryLocalInterface instanceof a)) ? new C0121a(iBinder) : (a) queryLocalInterface;
            }
            return aVar;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
            boolean z;
            switch (i) {
                case 1:
                    parcel.enforceInterface("com.google.android.gms.iid.IMessengerCompat");
                    a(parcel.readInt() != 0 ? (Message) Message.CREATOR.createFromParcel(parcel) : null);
                    z = true;
                    break;
                case 1598968902:
                    parcel2.writeString("com.google.android.gms.iid.IMessengerCompat");
                    z = true;
                    break;
                default:
                    z = super.onTransact(i, parcel, parcel2, i2);
                    break;
            }
            return z;
        }
    }

    void a(Message message);
}
