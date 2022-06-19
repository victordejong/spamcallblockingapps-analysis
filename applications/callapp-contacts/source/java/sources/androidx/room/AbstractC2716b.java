package androidx.room;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
/* renamed from: androidx.room.b */
/* loaded from: classes-dex2jar.jar:androidx/room/b.class */
public interface AbstractC2716b extends IInterface {

    /* renamed from: androidx.room.b$a */
    /* loaded from: classes-dex2jar.jar:androidx/room/b$a.class */
    public static abstract class AbstractBinderC2717a extends Binder implements AbstractC2716b {

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: androidx.room.b$a$a */
        /* loaded from: classes-dex2jar.jar:androidx/room/b$a$a.class */
        public static final class C2718a implements AbstractC2716b {

            /* renamed from: a */
            private IBinder f10335a;

            C2718a(IBinder iBinder) {
                this.f10335a = iBinder;
            }

            @Override // androidx.room.AbstractC2716b
            /* renamed from: a */
            public final void mo39969a(String[] strArr) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("androidx.room.IMultiInstanceInvalidationCallback");
                    obtain.writeStringArray(strArr);
                    this.f10335a.transact(1, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // android.os.IInterface
            public final IBinder asBinder() {
                return this.f10335a;
            }
        }

        public AbstractBinderC2717a() {
            attachInterface(this, "androidx.room.IMultiInstanceInvalidationCallback");
        }

        /* renamed from: a */
        public static AbstractC2716b m40002a(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("androidx.room.IMultiInstanceInvalidationCallback");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof AbstractC2716b)) ? new C2718a(iBinder) : (AbstractC2716b) queryLocalInterface;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            if (i == 1) {
                parcel.enforceInterface("androidx.room.IMultiInstanceInvalidationCallback");
                mo39969a(parcel.createStringArray());
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
    void mo39969a(String[] strArr) throws RemoteException;
}
