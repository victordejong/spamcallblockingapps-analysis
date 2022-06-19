package androidx.room;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
/* renamed from: androidx.room.c */
/* loaded from: classes-dex2jar.jar:androidx/room/c.class */
public interface AbstractC0999c extends IInterface {

    /* renamed from: androidx.room.c$a */
    /* loaded from: classes-dex2jar.jar:androidx/room/c$a.class */
    public static abstract class AbstractBinderC1000a extends Binder implements AbstractC0999c {

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: androidx.room.c$a$a */
        /* loaded from: classes-dex2jar.jar:androidx/room/c$a$a.class */
        public static class C1001a implements AbstractC0999c {

            /* renamed from: d */
            private IBinder f4452d;

            C1001a(IBinder iBinder) {
                this.f4452d = iBinder;
            }

            @Override // androidx.room.AbstractC0999c
            /* renamed from: C1 */
            public void mo31238C1(String[] strArr) {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("androidx.room.IMultiInstanceInvalidationCallback");
                    obtain.writeStringArray(strArr);
                    this.f4452d.transact(1, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f4452d;
            }
        }

        public AbstractBinderC1000a() {
            attachInterface(this, "androidx.room.IMultiInstanceInvalidationCallback");
        }

        /* renamed from: c0 */
        public static AbstractC0999c m31263c0(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("androidx.room.IMultiInstanceInvalidationCallback");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof AbstractC0999c)) ? new C1001a(iBinder) : (AbstractC0999c) queryLocalInterface;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
            if (i == 1) {
                parcel.enforceInterface("androidx.room.IMultiInstanceInvalidationCallback");
                mo31238C1(parcel.createStringArray());
                return true;
            } else if (i != 1598968902) {
                return super.onTransact(i, parcel, parcel2, i2);
            } else {
                parcel2.writeString("androidx.room.IMultiInstanceInvalidationCallback");
                return true;
            }
        }
    }

    /* renamed from: C1 */
    void mo31238C1(String[] strArr);
}
