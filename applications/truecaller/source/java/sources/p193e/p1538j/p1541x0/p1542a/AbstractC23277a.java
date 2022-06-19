package p193e.p1538j.p1541x0.p1542a;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
/* renamed from: e.j.x0.a.a */
/* loaded from: classes2-dex2jar.jar:e/j/x0/a/a.class */
public interface AbstractC23277a extends IInterface {

    /* renamed from: e.j.x0.a.a$a */
    /* loaded from: classes2-dex2jar.jar:e/j/x0/a/a$a.class */
    public static abstract class AbstractBinderC23278a extends Binder implements AbstractC23277a {

        /* renamed from: a */
        public static final /* synthetic */ int f64433a = 0;

        /* renamed from: e.j.x0.a.a$a$a */
        /* loaded from: classes2-dex2jar.jar:e/j/x0/a/a$a$a.class */
        public static class C23279a implements AbstractC23277a {

            /* renamed from: a */
            public IBinder f64434a;

            public C23279a(IBinder iBinder) {
                this.f64434a = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f64434a;
            }

            @Override // p193e.p1538j.p1541x0.p1542a.AbstractC23277a
            /* renamed from: u0 */
            public int mo7294u0(Bundle bundle) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.facebook.ppml.receiver.IReceiverService");
                    obtain.writeInt(1);
                    bundle.writeToParcel(obtain, 0);
                    if (!this.f64434a.transact(1, obtain, obtain2, 0)) {
                        int i = AbstractBinderC23278a.f64433a;
                    }
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }

        /* renamed from: m1 */
        public static AbstractC23277a m7295m1(IBinder iBinder) {
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.facebook.ppml.receiver.IReceiverService");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof AbstractC23277a)) ? new C23279a(iBinder) : (AbstractC23277a) queryLocalInterface;
        }
    }

    /* renamed from: u0 */
    int mo7294u0(Bundle bundle) throws RemoteException;
}
