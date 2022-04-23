package p081h.p203i.p204a.p224e.p259j.p263d;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
/* renamed from: h.i.a.e.j.d.a */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/d/a.class */
public class C7504a implements IInterface {

    /* renamed from: a */
    public final IBinder f17589a;

    /* renamed from: b */
    public final String f17590b;

    public C7504a(IBinder iBinder, String str) {
        this.f17589a = iBinder;
        this.f17590b = str;
    }

    /* renamed from: G0 */
    public final Parcel m20409G0() {
        Parcel obtain = Parcel.obtain();
        obtain.writeInterfaceToken(this.f17590b);
        return obtain;
    }

    /* renamed from: a */
    public final void m20408a(int i, Parcel parcel) throws RemoteException {
        Parcel obtain = Parcel.obtain();
        try {
            this.f17589a.transact(i, parcel, obtain, 0);
            obtain.readException();
        } finally {
            parcel.recycle();
            obtain.recycle();
        }
    }

    @Override // android.os.IInterface
    public IBinder asBinder() {
        return this.f17589a;
    }
}
