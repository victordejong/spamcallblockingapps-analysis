package androidx.room;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import androidx.room.AbstractC2716b;
/* renamed from: androidx.room.c */
/* loaded from: classes-dex2jar.jar:androidx/room/c.class */
public interface AbstractC2729c extends IInterface {

    /* renamed from: androidx.room.c$a */
    /* loaded from: classes-dex2jar.jar:androidx/room/c$a.class */
    public static abstract class AbstractBinderC2730a extends Binder implements AbstractC2729c {

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: androidx.room.c$a$a */
        /* loaded from: classes-dex2jar.jar:androidx/room/c$a$a.class */
        public static final class C2731a implements AbstractC2729c {

            /* renamed from: a */
            private IBinder f10365a;

            C2731a(IBinder iBinder) {
                this.f10365a = iBinder;
            }

            @Override // androidx.room.AbstractC2729c
            /* renamed from: a */
            public final int mo39982a(AbstractC2716b abstractC2716b, String str) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("androidx.room.IMultiInstanceInvalidationService");
                    obtain.writeStrongBinder(abstractC2716b != null ? abstractC2716b.asBinder() : null);
                    obtain.writeString(str);
                    this.f10365a.transact(1, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // androidx.room.AbstractC2729c
            /* renamed from: a */
            public final void mo39984a(int i, String[] strArr) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("androidx.room.IMultiInstanceInvalidationService");
                    obtain.writeInt(i);
                    obtain.writeStringArray(strArr);
                    this.f10365a.transact(3, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // androidx.room.AbstractC2729c
            /* renamed from: a */
            public final void mo39983a(AbstractC2716b abstractC2716b, int i) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("androidx.room.IMultiInstanceInvalidationService");
                    obtain.writeStrongBinder(abstractC2716b != null ? abstractC2716b.asBinder() : null);
                    obtain.writeInt(i);
                    this.f10365a.transact(2, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.os.IInterface
            public final IBinder asBinder() {
                return this.f10365a;
            }
        }

        public AbstractBinderC2730a() {
            attachInterface(this, "androidx.room.IMultiInstanceInvalidationService");
        }

        /* renamed from: a */
        public static AbstractC2729c m39985a(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("androidx.room.IMultiInstanceInvalidationService");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof AbstractC2729c)) ? new C2731a(iBinder) : (AbstractC2729c) queryLocalInterface;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            if (i == 1) {
                parcel.enforceInterface("androidx.room.IMultiInstanceInvalidationService");
                int a = mo39982a(AbstractC2716b.AbstractBinderC2717a.m40002a(parcel.readStrongBinder()), parcel.readString());
                parcel2.writeNoException();
                parcel2.writeInt(a);
                return true;
            } else if (i == 2) {
                parcel.enforceInterface("androidx.room.IMultiInstanceInvalidationService");
                mo39983a(AbstractC2716b.AbstractBinderC2717a.m40002a(parcel.readStrongBinder()), parcel.readInt());
                parcel2.writeNoException();
                return true;
            } else if (i == 3) {
                parcel.enforceInterface("androidx.room.IMultiInstanceInvalidationService");
                mo39984a(parcel.readInt(), parcel.createStringArray());
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
    int mo39982a(AbstractC2716b abstractC2716b, String str) throws RemoteException;

    /* renamed from: a */
    void mo39984a(int i, String[] strArr) throws RemoteException;

    /* renamed from: a */
    void mo39983a(AbstractC2716b abstractC2716b, int i) throws RemoteException;
}
