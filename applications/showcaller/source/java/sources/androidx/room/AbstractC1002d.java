package androidx.room;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import androidx.room.AbstractC0999c;
/* renamed from: androidx.room.d */
/* loaded from: classes-dex2jar.jar:androidx/room/d.class */
public interface AbstractC1002d extends IInterface {

    /* renamed from: androidx.room.d$a */
    /* loaded from: classes-dex2jar.jar:androidx/room/d$a.class */
    public static abstract class AbstractBinderC1003a extends Binder implements AbstractC1002d {

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: androidx.room.d$a$a */
        /* loaded from: classes-dex2jar.jar:androidx/room/d$a$a.class */
        public static class C1004a implements AbstractC1002d {

            /* renamed from: d */
            private IBinder f4453d;

            C1004a(IBinder iBinder) {
                this.f4453d = iBinder;
            }

            @Override // androidx.room.AbstractC1002d
            /* renamed from: Q5 */
            public void mo31261Q5(int i, String[] strArr) {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("androidx.room.IMultiInstanceInvalidationService");
                    obtain.writeInt(i);
                    obtain.writeStringArray(strArr);
                    this.f4453d.transact(3, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f4453d;
            }

            @Override // androidx.room.AbstractC1002d
            /* renamed from: c2 */
            public int mo31260c2(AbstractC0999c abstractC0999c, String str) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("androidx.room.IMultiInstanceInvalidationService");
                    obtain.writeStrongBinder(abstractC0999c != null ? abstractC0999c.asBinder() : null);
                    obtain.writeString(str);
                    this.f4453d.transact(1, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // androidx.room.AbstractC1002d
            /* renamed from: o6 */
            public void mo31259o6(AbstractC0999c abstractC0999c, int i) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("androidx.room.IMultiInstanceInvalidationService");
                    obtain.writeStrongBinder(abstractC0999c != null ? abstractC0999c.asBinder() : null);
                    obtain.writeInt(i);
                    this.f4453d.transact(2, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }

        public AbstractBinderC1003a() {
            attachInterface(this, "androidx.room.IMultiInstanceInvalidationService");
        }

        /* renamed from: c0 */
        public static AbstractC1002d m31262c0(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("androidx.room.IMultiInstanceInvalidationService");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof AbstractC1002d)) ? new C1004a(iBinder) : (AbstractC1002d) queryLocalInterface;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
            if (i == 1) {
                parcel.enforceInterface("androidx.room.IMultiInstanceInvalidationService");
                int mo31260c2 = mo31260c2(AbstractC0999c.AbstractBinderC1000a.m31263c0(parcel.readStrongBinder()), parcel.readString());
                parcel2.writeNoException();
                parcel2.writeInt(mo31260c2);
                return true;
            } else if (i == 2) {
                parcel.enforceInterface("androidx.room.IMultiInstanceInvalidationService");
                mo31259o6(AbstractC0999c.AbstractBinderC1000a.m31263c0(parcel.readStrongBinder()), parcel.readInt());
                parcel2.writeNoException();
                return true;
            } else if (i == 3) {
                parcel.enforceInterface("androidx.room.IMultiInstanceInvalidationService");
                mo31261Q5(parcel.readInt(), parcel.createStringArray());
                return true;
            } else if (i != 1598968902) {
                return super.onTransact(i, parcel, parcel2, i2);
            } else {
                parcel2.writeString("androidx.room.IMultiInstanceInvalidationService");
                return true;
            }
        }
    }

    /* renamed from: Q5 */
    void mo31261Q5(int i, String[] strArr);

    /* renamed from: c2 */
    int mo31260c2(AbstractC0999c abstractC0999c, String str);

    /* renamed from: o6 */
    void mo31259o6(AbstractC0999c abstractC0999c, int i);
}
