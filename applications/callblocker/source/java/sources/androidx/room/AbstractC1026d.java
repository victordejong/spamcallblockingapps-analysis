package androidx.room;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import androidx.room.AbstractC1023c;
/* renamed from: androidx.room.d */
/* loaded from: classes-dex2jar.jar:androidx/room/d.class */
public interface AbstractC1026d extends IInterface {

    /* renamed from: androidx.room.d$a */
    /* loaded from: classes-dex2jar.jar:androidx/room/d$a.class */
    public static abstract class AbstractBinderC1027a extends Binder implements AbstractC1026d {

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: androidx.room.d$a$a */
        /* loaded from: classes-dex2jar.jar:androidx/room/d$a$a.class */
        public static class C1028a implements AbstractC1026d {

            /* renamed from: a */
            private IBinder f3483a;

            C1028a(IBinder iBinder) {
                this.f3483a = iBinder;
            }

            @Override // androidx.room.AbstractC1026d
            /* renamed from: a */
            public int mo18328a(AbstractC1023c abstractC1023c, String str) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("androidx.room.IMultiInstanceInvalidationService");
                    obtain.writeStrongBinder(abstractC1023c != null ? abstractC1023c.asBinder() : null);
                    obtain.writeString(str);
                    this.f3483a.transact(1, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // androidx.room.AbstractC1026d
            /* renamed from: a */
            public void mo18330a(int i, String[] strArr) {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("androidx.room.IMultiInstanceInvalidationService");
                    obtain.writeInt(i);
                    obtain.writeStringArray(strArr);
                    this.f3483a.transact(3, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // androidx.room.AbstractC1026d
            /* renamed from: a */
            public void mo18329a(AbstractC1023c abstractC1023c, int i) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("androidx.room.IMultiInstanceInvalidationService");
                    obtain.writeStrongBinder(abstractC1023c != null ? abstractC1023c.asBinder() : null);
                    obtain.writeInt(i);
                    this.f3483a.transact(2, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f3483a;
            }
        }

        public AbstractBinderC1027a() {
            attachInterface(this, "androidx.room.IMultiInstanceInvalidationService");
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v8, types: [androidx.room.d] */
        /* renamed from: a */
        public static AbstractC1026d m18331a(IBinder iBinder) {
            C1028a c1028a;
            if (iBinder == null) {
                c1028a = null;
            } else {
                IInterface queryLocalInterface = iBinder.queryLocalInterface("androidx.room.IMultiInstanceInvalidationService");
                c1028a = (queryLocalInterface == null || !(queryLocalInterface instanceof AbstractC1026d)) ? new C1028a(iBinder) : (AbstractC1026d) queryLocalInterface;
            }
            return c1028a;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
            boolean z = true;
            switch (i) {
                case 1:
                    parcel.enforceInterface("androidx.room.IMultiInstanceInvalidationService");
                    int a = mo18328a(AbstractC1023c.AbstractBinderC1024a.m18332a(parcel.readStrongBinder()), parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeInt(a);
                    break;
                case 2:
                    parcel.enforceInterface("androidx.room.IMultiInstanceInvalidationService");
                    mo18329a(AbstractC1023c.AbstractBinderC1024a.m18332a(parcel.readStrongBinder()), parcel.readInt());
                    parcel2.writeNoException();
                    break;
                case 3:
                    parcel.enforceInterface("androidx.room.IMultiInstanceInvalidationService");
                    mo18330a(parcel.readInt(), parcel.createStringArray());
                    break;
                case 1598968902:
                    parcel2.writeString("androidx.room.IMultiInstanceInvalidationService");
                    break;
                default:
                    z = super.onTransact(i, parcel, parcel2, i2);
                    break;
            }
            return z;
        }
    }

    /* renamed from: a */
    int mo18328a(AbstractC1023c abstractC1023c, String str);

    /* renamed from: a */
    void mo18330a(int i, String[] strArr);

    /* renamed from: a */
    void mo18329a(AbstractC1023c abstractC1023c, int i);
}
