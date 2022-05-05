package p081h.p203i.p204a.p224e.p259j.p278s;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
/* renamed from: h.i.a.e.j.s.d */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/s/d.class */
public class C8808d implements IInterface {

    /* renamed from: a */
    public final IBinder f20165a;

    /* renamed from: b */
    public final String f20166b;

    public C8808d(IBinder iBinder, String str) {
        this.f20165a = iBinder;
        this.f20166b = str;
    }

    /* renamed from: a */
    public final Parcel m16907a(int i, Parcel parcel) throws RemoteException {
        Parcel obtain = Parcel.obtain();
        try {
            try {
                this.f20165a.transact(i, parcel, obtain, 0);
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
        return this.f20165a;
    }

    /* renamed from: c */
    public final Parcel m16906c() {
        Parcel obtain = Parcel.obtain();
        obtain.writeInterfaceToken(this.f20166b);
        return obtain;
    }
}
