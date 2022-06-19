package p1727n3.p1751c0;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
/* renamed from: n3.c0.l */
/* loaded from: classes-dex2jar.jar:n3/c0/l.class */
public interface AbstractC25664l extends IInterface {

    /* renamed from: n3.c0.l$a */
    /* loaded from: classes-dex2jar.jar:n3/c0/l$a.class */
    public static abstract class AbstractBinderC25665a extends Binder implements AbstractC25664l {

        /* renamed from: a */
        public static final /* synthetic */ int f71889a = 0;

        /* renamed from: n3.c0.l$a$a */
        /* loaded from: classes-dex2jar.jar:n3/c0/l$a$a.class */
        public static class C25666a implements AbstractC25664l {

            /* renamed from: a */
            public IBinder f71890a;

            public C25666a(IBinder iBinder) {
                this.f71890a = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f71890a;
            }

            @Override // p1727n3.p1751c0.AbstractC25664l
            /* renamed from: h */
            public void mo3079h(String[] strArr) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("androidx.room.IMultiInstanceInvalidationCallback");
                    obtain.writeStringArray(strArr);
                    if (!this.f71890a.transact(1, obtain, null, 1)) {
                        int i = AbstractBinderC25665a.f71889a;
                    }
                } finally {
                    obtain.recycle();
                }
            }
        }

        /* renamed from: m1 */
        public static AbstractC25664l m3080m1(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("androidx.room.IMultiInstanceInvalidationCallback");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof AbstractC25664l)) ? new C25666a(iBinder) : (AbstractC25664l) queryLocalInterface;
        }
    }

    /* renamed from: h */
    void mo3079h(String[] strArr) throws RemoteException;
}
