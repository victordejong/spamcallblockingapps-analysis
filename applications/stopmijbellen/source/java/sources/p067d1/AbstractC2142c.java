package p067d1;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
/* renamed from: d1.c */
/* loaded from: classes-dex2jar.jar:d1/c.class */
public interface AbstractC2142c extends IInterface {

    /* renamed from: d1.c$a */
    /* loaded from: classes-dex2jar.jar:d1/c$a.class */
    public static abstract class AbstractBinderC2143a extends Binder implements AbstractC2142c {

        /* renamed from: d1.c$a$a */
        /* loaded from: classes-dex2jar.jar:d1/c$a$a.class */
        public static class C2144a implements AbstractC2142c {

            /* renamed from: a */
            public IBinder f7844a;

            public C2144a(IBinder iBinder) {
                this.f7844a = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f7844a;
            }

            @Override // p067d1.AbstractC2142c
            /* renamed from: h */
            public void mo3829h(String[] strArr) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("androidx.room.IMultiInstanceInvalidationCallback");
                    obtain.writeStringArray(strArr);
                    this.f7844a.transact(1, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }
        }

        /* renamed from: q */
        public static AbstractC2142c m3830q(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("androidx.room.IMultiInstanceInvalidationCallback");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof AbstractC2142c)) ? new C2144a(iBinder) : (AbstractC2142c) queryLocalInterface;
        }
    }

    /* renamed from: h */
    void mo3829h(String[] strArr) throws RemoteException;
}
