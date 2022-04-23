package p081h.p203i.p204a.p224e.p259j.p272m;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
/* renamed from: h.i.a.e.j.m.a */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/m/a.class */
public class C8484a implements IInterface {

    /* renamed from: a */
    public final IBinder f19521a;

    /* renamed from: b */
    public final String f19522b;

    public C8484a(IBinder iBinder, String str) {
        this.f19521a = iBinder;
        this.f19522b = str;
    }

    /* renamed from: G0 */
    public final Parcel m17903G0() {
        Parcel obtain = Parcel.obtain();
        obtain.writeInterfaceToken(this.f19522b);
        return obtain;
    }

    /* renamed from: a */
    public final void m17902a(int i, Parcel parcel) throws RemoteException {
        Parcel obtain = Parcel.obtain();
        try {
            this.f19521a.transact(2, parcel, obtain, 0);
            obtain.readException();
        } finally {
            parcel.recycle();
            obtain.recycle();
        }
    }

    @Override // android.os.IInterface
    public IBinder asBinder() {
        return this.f19521a;
    }
}
