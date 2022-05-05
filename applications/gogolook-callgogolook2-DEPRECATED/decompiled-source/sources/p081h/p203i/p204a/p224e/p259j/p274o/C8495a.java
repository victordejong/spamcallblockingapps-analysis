package p081h.p203i.p204a.p224e.p259j.p274o;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
/* renamed from: h.i.a.e.j.o.a */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/o/a.class */
public class C8495a implements IInterface {

    /* renamed from: a */
    public final IBinder f19532a;

    /* renamed from: b */
    public final String f19533b;

    public C8495a(IBinder iBinder, String str) {
        this.f19532a = iBinder;
        this.f19533b = str;
    }

    /* renamed from: G0 */
    public final Parcel m17897G0() {
        Parcel obtain = Parcel.obtain();
        obtain.writeInterfaceToken(this.f19533b);
        return obtain;
    }

    /* renamed from: a */
    public final Parcel m17896a(int i, Parcel parcel) throws RemoteException {
        Parcel obtain = Parcel.obtain();
        try {
            try {
                this.f19532a.transact(i, parcel, obtain, 0);
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
        return this.f19532a;
    }

    /* renamed from: b */
    public final void m17895b(int i, Parcel parcel) throws RemoteException {
        Parcel obtain = Parcel.obtain();
        try {
            this.f19532a.transact(i, parcel, obtain, 0);
            obtain.readException();
        } finally {
            parcel.recycle();
            obtain.recycle();
        }
    }
}
