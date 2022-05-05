package p081h.p203i.p204a.p224e.p259j.p261b;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
/* renamed from: h.i.a.e.j.b.a */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/b/a.class */
public class C7486a implements IInterface {

    /* renamed from: a */
    public final IBinder f17583a;

    /* renamed from: b */
    public final String f17584b;

    public C7486a(IBinder iBinder, String str) {
        this.f17583a = iBinder;
        this.f17584b = str;
    }

    /* renamed from: G0 */
    public final Parcel m20426G0() {
        Parcel obtain = Parcel.obtain();
        obtain.writeInterfaceToken(this.f17584b);
        return obtain;
    }

    /* renamed from: a */
    public final Parcel m20425a(int i, Parcel parcel) throws RemoteException {
        Parcel obtain = Parcel.obtain();
        try {
            try {
                this.f17583a.transact(i, parcel, obtain, 0);
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
        return this.f17583a;
    }
}
