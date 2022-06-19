package androidx.room;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
/* renamed from: androidx.room.d */
/* loaded from: classes-dex2jar.jar:androidx/room/d.class */
public interface AbstractC1042d extends IInterface {

    /* renamed from: androidx.room.d$a */
    /* loaded from: classes-dex2jar.jar:androidx/room/d$a.class */
    public static abstract class AbstractBinderC1043a extends Binder implements AbstractC1042d {

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: androidx.room.d$a$a */
        /* loaded from: classes-dex2jar.jar:androidx/room/d$a$a.class */
        public static class C1044a implements AbstractC1042d {

            /* renamed from: a */
            private IBinder f3272a;

            C1044a(IBinder iBinder) {
                this.f3272a = iBinder;
            }

            @Override // androidx.room.AbstractC1042d
            /* renamed from: a */
            public void mo4455a(String[] strArr) {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("androidx.room.IMultiInstanceInvalidationCallback");
                    obtain.writeStringArray(strArr);
                    this.f3272a.transact(1, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f3272a;
            }
        }

        public AbstractBinderC1043a() {
            attachInterface(this, "androidx.room.IMultiInstanceInvalidationCallback");
        }

        /* renamed from: a */
        public static AbstractC1042d m4480a(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("androidx.room.IMultiInstanceInvalidationCallback");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof AbstractC1042d)) ? new C1044a(iBinder) : (AbstractC1042d) queryLocalInterface;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
            if (i == 1) {
                parcel.enforceInterface("androidx.room.IMultiInstanceInvalidationCallback");
                mo4455a(parcel.createStringArray());
                return true;
            } else if (i != 1598968902) {
                return super.onTransact(i, parcel, parcel2, i2);
            } else {
                parcel2.writeString("androidx.room.IMultiInstanceInvalidationCallback");
                return true;
            }
        }
    }

    /* renamed from: a */
    void mo4455a(String[] strArr);
}
