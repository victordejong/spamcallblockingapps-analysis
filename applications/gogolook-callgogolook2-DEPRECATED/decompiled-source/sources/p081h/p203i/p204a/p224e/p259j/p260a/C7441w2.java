package p081h.p203i.p204a.p224e.p259j.p260a;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
/* renamed from: h.i.a.e.j.a.w2 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/a/w2.class */
public class C7441w2 implements IInterface {

    /* renamed from: a */
    public final IBinder f17508a;

    /* renamed from: b */
    public final String f17509b;

    public C7441w2(IBinder iBinder, String str) {
        this.f17508a = iBinder;
        this.f17509b = str;
    }

    /* renamed from: G0 */
    public final Parcel m20618G0() {
        Parcel obtain = Parcel.obtain();
        obtain.writeInterfaceToken(this.f17509b);
        return obtain;
    }

    /* renamed from: a */
    public final Parcel m20617a(int i, Parcel parcel) throws RemoteException {
        Parcel obtain = Parcel.obtain();
        try {
            try {
                this.f17508a.transact(i, parcel, obtain, 0);
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
        return this.f17508a;
    }

    /* renamed from: b */
    public final void m20616b(int i, Parcel parcel) throws RemoteException {
        Parcel obtain = Parcel.obtain();
        try {
            this.f17508a.transact(i, parcel, obtain, 0);
            obtain.readException();
        } finally {
            parcel.recycle();
            obtain.recycle();
        }
    }
}
