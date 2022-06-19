package androidx.room;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import androidx.room.AbstractC1042d;
/* renamed from: androidx.room.e */
/* loaded from: classes-dex2jar.jar:androidx/room/e.class */
public interface AbstractC1045e extends IInterface {

    /* renamed from: androidx.room.e$a */
    /* loaded from: classes-dex2jar.jar:androidx/room/e$a.class */
    public static abstract class AbstractBinderC1046a extends Binder implements AbstractC1045e {

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: androidx.room.e$a$a */
        /* loaded from: classes-dex2jar.jar:androidx/room/e$a$a.class */
        public static class C1047a implements AbstractC1045e {

            /* renamed from: a */
            private IBinder f3273a;

            C1047a(IBinder iBinder) {
                this.f3273a = iBinder;
            }

            @Override // androidx.room.AbstractC1045e
            /* renamed from: a */
            public int mo4476a(AbstractC1042d abstractC1042d, String str) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("androidx.room.IMultiInstanceInvalidationService");
                    obtain.writeStrongBinder(abstractC1042d != null ? abstractC1042d.asBinder() : null);
                    obtain.writeString(str);
                    this.f3273a.transact(1, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // androidx.room.AbstractC1045e
            /* renamed from: a */
            public void mo4478a(int i, String[] strArr) {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("androidx.room.IMultiInstanceInvalidationService");
                    obtain.writeInt(i);
                    obtain.writeStringArray(strArr);
                    this.f3273a.transact(3, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // androidx.room.AbstractC1045e
            /* renamed from: a */
            public void mo4477a(AbstractC1042d abstractC1042d, int i) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("androidx.room.IMultiInstanceInvalidationService");
                    obtain.writeStrongBinder(abstractC1042d != null ? abstractC1042d.asBinder() : null);
                    obtain.writeInt(i);
                    this.f3273a.transact(2, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f3273a;
            }
        }

        public AbstractBinderC1046a() {
            attachInterface(this, "androidx.room.IMultiInstanceInvalidationService");
        }

        /* renamed from: a */
        public static AbstractC1045e m4479a(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("androidx.room.IMultiInstanceInvalidationService");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof AbstractC1045e)) ? new C1047a(iBinder) : (AbstractC1045e) queryLocalInterface;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
            if (i == 1) {
                parcel.enforceInterface("androidx.room.IMultiInstanceInvalidationService");
                int a = mo4476a(AbstractC1042d.AbstractBinderC1043a.m4480a(parcel.readStrongBinder()), parcel.readString());
                parcel2.writeNoException();
                parcel2.writeInt(a);
                return true;
            } else if (i == 2) {
                parcel.enforceInterface("androidx.room.IMultiInstanceInvalidationService");
                mo4477a(AbstractC1042d.AbstractBinderC1043a.m4480a(parcel.readStrongBinder()), parcel.readInt());
                parcel2.writeNoException();
                return true;
            } else if (i == 3) {
                parcel.enforceInterface("androidx.room.IMultiInstanceInvalidationService");
                mo4478a(parcel.readInt(), parcel.createStringArray());
                return true;
            } else if (i != 1598968902) {
                return super.onTransact(i, parcel, parcel2, i2);
            } else {
                parcel2.writeString("androidx.room.IMultiInstanceInvalidationService");
                return true;
            }
        }
    }

    /* renamed from: a */
    int mo4476a(AbstractC1042d abstractC1042d, String str);

    /* renamed from: a */
    void mo4478a(int i, String[] strArr);

    /* renamed from: a */
    void mo4477a(AbstractC1042d abstractC1042d, int i);
}
