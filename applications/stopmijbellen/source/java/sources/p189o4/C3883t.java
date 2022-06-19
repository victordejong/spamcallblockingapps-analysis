package p189o4;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
/* renamed from: o4.t */
/* loaded from: classes-dex2jar.jar:o4/t.class */
public class C3883t implements IInterface {

    /* renamed from: a */
    public final IBinder f12378a;

    /* renamed from: b */
    public final String f12379b;

    public C3883t(IBinder iBinder, String str) {
        this.f12378a = iBinder;
        this.f12379b = str;
    }

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return this.f12378a;
    }

    /* renamed from: q */
    public final Parcel m1735q() {
        Parcel obtain = Parcel.obtain();
        obtain.writeInterfaceToken(this.f12379b);
        return obtain;
    }

    /* renamed from: r */
    public final void m1734r(int i, Parcel parcel) throws RemoteException {
        try {
            this.f12378a.transact(i, parcel, null, 1);
        } finally {
            parcel.recycle();
        }
    }
}
