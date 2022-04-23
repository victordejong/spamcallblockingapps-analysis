package p081h.p203i.p204a.p224e.p259j.p262c;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
/* renamed from: h.i.a.e.j.c.a */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/c/a.class */
public class C7492a implements IInterface {

    /* renamed from: a */
    public final IBinder f17585a;

    /* renamed from: b */
    public final String f17586b;

    public C7492a(IBinder iBinder, String str) {
        this.f17585a = iBinder;
        this.f17586b = str;
    }

    /* renamed from: G0 */
    public final Parcel m20419G0() {
        Parcel obtain = Parcel.obtain();
        obtain.writeInterfaceToken(this.f17586b);
        return obtain;
    }

    /* renamed from: a */
    public final void m20418a(int i, Parcel parcel) throws RemoteException {
        Parcel obtain = Parcel.obtain();
        try {
            this.f17585a.transact(1, parcel, obtain, 0);
            obtain.readException();
        } finally {
            parcel.recycle();
            obtain.recycle();
        }
    }

    @Override // android.os.IInterface
    public IBinder asBinder() {
        return this.f17585a;
    }
}
