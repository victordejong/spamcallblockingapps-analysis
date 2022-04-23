package p081h.p203i.p204a.p224e.p259j.p276q;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
/* renamed from: h.i.a.e.j.q.e1 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/q/e1.class */
public class C8588e1 implements IInterface {

    /* renamed from: a */
    public final IBinder f19664a;

    /* renamed from: b */
    public final String f19665b;

    public C8588e1(IBinder iBinder, String str) {
        this.f19664a = iBinder;
        this.f19665b = str;
    }

    /* renamed from: G0 */
    public final Parcel m17698G0() {
        Parcel obtain = Parcel.obtain();
        obtain.writeInterfaceToken(this.f19665b);
        return obtain;
    }

    /* renamed from: a */
    public final Parcel m17697a(int i, Parcel parcel) throws RemoteException {
        Parcel obtain = Parcel.obtain();
        try {
            try {
                this.f19664a.transact(i, parcel, obtain, 0);
                obtain.readException();
                parcel.recycle();
                return obtain;
            } catch (RuntimeException e) {
                obtain.recycle();
                throw e;
            }
        } catch (Throwable th) {
            parcel.recycle();
            throw th;
        }
    }

    @Override // android.os.IInterface
    public IBinder asBinder() {
        return this.f19664a;
    }

    /* renamed from: b */
    public final void m17696b(int i, Parcel parcel) throws RemoteException {
        Parcel obtain = Parcel.obtain();
        try {
            this.f19664a.transact(i, parcel, obtain, 0);
            obtain.readException();
        } finally {
            parcel.recycle();
            obtain.recycle();
        }
    }
}
